# TR-10 2-word × 2-bit SRAM

TR-10 / IP62 PDKを使用し、**6T SRAMセルからトランジスタレベルで設計した 2-word × 2-bit SRAM**です。

SRAMをブラックボックスとして使用するのではなく、セル設計、シミュレーション、アレイ化、周辺回路、Sense Amplifier、レイアウト、DRC / LVSまでを段階的に構築しています。

> **Think, Build, Discuss.**  
> **Fail → Analyze → Improve.**

---

## Submission Package

TR-10への投稿に向け、以下を提出物として整理します。

- **回路図**
  - 6T SRAM Cell
  - 2-word × 2-bit SRAM Array
  - 入力インバータを含むSRAM Top
  - Sense Amplifier
- **シミュレーション用回路図**
  - Hold
  - Write
  - Read
  - Sense Amplifier
- **レイアウト**
  - 6T SRAM Cell
  - 2-word × 2-bit SRAM Array
  - `sram_2w2b_top.gds`
  - DRC / LVS結果
- **仕様書・説明書**
  - SRAM仕様
  - 回路構成
  - シミュレーション結果
  - レイアウト構成
  - 設計上の工夫
  - 本設計のアピールポイント

---

## 1. Overview

本プロジェクトの目的は、小規模SRAMを実際にトランジスタから作ることで、以下の設計フローを理解・実証することです。

```text
Transistor
   ↓
6T SRAM Cell
   ↓
Simulation / Characterization
   ↓
2-word × 2-bit Array
   ↓
Peripheral Circuits
   ↓
Sense Amplifier
   ↓
Layout
   ↓
DRC / LVS
```

現在、**入力インバータを含む 2-word × 2-bit SRAM Top LayoutでLVS clean**まで到達しています。

---

## 2. SRAM Specification

| Item | Specification |
|---|---|
| Process / PDK | TR-10 / IP62 |
| Schematic Editor | Xschem |
| Simulator | ngspice |
| Layout Editor | KLayout |
| Supply Voltage | 5 V |
| Minimum Gate Length | 1.0 µm |
| SRAM Cell | 6T |
| Memory Organization | 2-word × 2-bit |
| Number of SRAM Cells | 4 |
| Read Architecture | Differential BL / BLB |
| Sense Circuit | 5T Sense Amplifier |
| Layout Verification | DRC / LVS |

---

## 3. 6T SRAM Cell

基本となるSRAMセルは、クロスカップルされた2個のCMOSインバータと2個のAccess NMOSから構成する6T SRAMです。

```text
                 VDD
                  │
             ┌────┴────┐
             │         │
            PMOS      PMOS
             │ Q     QB│
             ├───\ /───┤
             │    X    │
             ├───/ \───┤
             │         │
            NMOS      NMOS
             │         │
             └────┬────┘
                  │
                 VSS

BL  ─── Access NMOS ─── Q
             │
             WL

BLB ─── Access NMOS ─── QB
             │
             WL
```

### Transistor Sizing

| Device | W | L |
|---|---:|---:|
| Pull-up PMOS | 3.4 µm | 1.0 µm |
| Access NMOS | 5.1 µm | 1.0 µm |
| Pull-down NMOS | 6.8 µm | 1.0 µm |

Cell ratioは以下を初期条件としています。

```text
Wpd : Wacc : Wpu = 6.8 : 5.1 : 3.4 = 2 : 1.5 : 1
```

---

## 4. 2-word × 2-bit SRAM Array

4個の6T SRAMセルを使用して、2-word × 2-bitのSRAMアレイを構成します。

```text
             BL0 / BLB0       BL1 / BLB1
                  │                 │

WL0 ───────── [CELL00]          [CELL01]

WL1 ───────── [CELL10]          [CELL11]

                  │                 │
                bit0              bit1
```

アドレスによってWL0 / WL1を選択し、2 bit単位でデータを扱います。

---

## 5. Simulation Schematics

6T SRAM Cellおよび周辺回路について、Xschem + ngspiceを使用して動作確認を行います。

### 5.1 Hold

`tb_hold.sch`

WL非選択時に、SRAMセル内部のQ / QBが記憶状態を保持できることを確認します。

### 5.2 Write

`tb_write.sch`

BL / BLBへ相補データを与え、WLをAssertすることでWrite 0 / Write 1動作を確認します。

### 5.3 Read

`tb_read.sch`

Read時のBL / BLBの電位変化を確認します。

```text
ΔVBL = |BL - BLB|
```

SRAMセルが生成するBL / BLBの差電圧をSense Amplifierへ接続することを想定しています。

---

## 6. 5T Sense Amplifier

Read回路には**5T Sense Amplifier**を使用します。

SRAMセルのRead時にBL / BLBへ発生する差電圧 `ΔVBL` を増幅し、デジタルレベルとして判定することを目的とします。

### 6.1 Transient Simulation

![5T Sense Amplifier Transient Simulation](docs/images/sa1.png)

BL / BLBに差を与えた過渡解析では、Sense動作によってBL / BLBが大きく分離することを確認しました。

この評価により、差動Bit Lineを利用したRead回路の基本動作を確認しています。

### 6.2 Differential Input vs Sense Delay

Sense Amplifierへ与える初期BL差電圧 `ΔVBL` を変化させ、Sense Delayとの関係を評価しました。

![5T Sense Amplifier Differential Input vs Sense Delay](docs/images/5t_sense_amp_dvbl_vs_delay.png)

| Initial BL Differential ΔVBL | Sense Delay |
|---:|---:|
| 10 mV | 6.202 ns |
| 20 mV | 5.604 ns |
| 50 mV | 4.812 ns |
| 100 mV | 4.212 ns |
| 200 mV | 3.614 ns |

入力差電圧が大きくなるほどSense Delayが短くなることを確認しました。

特に、**ΔVBL = 10 mVの微小差動入力まで評価し、Sense動作を確認**しています。

この結果から、SRAM Cellが生成するBit Line差電圧とSense Amplifierの起動タイミングの関係がRead動作に重要であることが分かります。

---

## 7. Read Path

最終的なRead Pathは以下を想定しています。

```text
       Precharge / Equalize
                │
             BL / BLB
                │
        2-word × 2-bit SRAM
                │
          ΔVBL generation
                │
           Sense Enable
                │
       5T Sense Amplifier
                │
              DOUT
```

基本Read sequence:

1. BL / BLBをPrecharge / Equalize
2. Word LineをAssert
3. SRAM CellによってBL / BLBに差電圧ΔVBLを生成
4. Sense Amplifierを起動
5. 差電圧を増幅
6. Read dataを確定

---

## 8. Layout

### 8.1 SRAM Cell Layout

6T SRAM CellをKLayoutでレイアウトし、2-word × 2-bit Arrayの基本セルとして使用します。

### 8.2 2-word × 2-bit Array Layout

4個のSRAM Cellを配置し、WLおよびBL / BLBを共有するアレイ構造を構成します。

### 8.3 SRAM Top Layout

入力インバータを含むSRAM Top Layoutを作成しています。

```text
layout/2word_x_2bit/sram_2w2b_top.gds
```

### 8.4 Layout Verification

現在のTop Layoutは、回路図との比較を行い、**LVS clean**を確認しています。

```text
2-word × 2-bit SRAM
        ↓
Input Inverter
        ↓
Top Layout
        ↓
DRC / LVS
        ↓
LVS CLEAN
```

---

## 9. Design Highlights

本設計では、単にSRAMマクロを利用するのではなく、**SRAM CellからRead回路、物理レイアウトまでを自作して評価すること**を重視しています。

### Transistor-level SRAM Design

6T SRAM Cellをトランジスタレベルから構築し、Hold / Write / Readを段階的に確認します。

### Small but Complete SRAM Array

2-word × 2-bitという小規模な構成にすることで、SRAM Cell、Word Line、Bit Line、周辺回路の関係を追跡しやすい設計としています。

### Differential Read Evaluation

Read時のBL / BLB差電圧に着目し、Sense AmplifierへつながるRead Pathとして評価しています。

### Quantitative Sense Amplifier Evaluation

5T Sense Amplifierについては単純な動作確認だけでなく、`ΔVBL = 10 mV ～ 200 mV`まで入力差を変化させ、Sense Delayとの関係を定量評価しました。

**10 mVの微小差動入力についてもSense動作を確認**しています。

### Layout to LVS

回路シミュレーションだけで終わらせず、2-word × 2-bit SRAMを実際にレイアウトし、入力インバータを含むTop Layoutまで統合して**LVS clean**を確認しています。

### Open Source EDA Flow

Xschem、ngspice、KLayoutを使用し、回路設計からシミュレーション、レイアウト、検証までを行っています。

---

## 10. Current Status

```text
6T SRAM Cell
     ↓
2-word × 2-bit Array
     ↓
5T Sense Amplifier Simulation
     ↓
Input Inverter
     ↓
SRAM Top Layout
     ↓
DRC / LVS
     ↓
LVS CLEAN  ← Current physical-design milestone
```

---

## 11. Repository Structure

```text
tr10_sram/
├── generic/
│
├── cell/
│   ├── MN.sym
│   ├── MP.sym
│   ├── sram6t_tr10.sch
│   ├── sram6t_tr10.sym
│   ├── tb_sram6t.sch
│   ├── tb_hold.sch
│   ├── tb_write.sch
│   ├── tb_read.sch
│   └── tb_snm.sch
│
├── array/
│   └── 2word_x_2bit/
│
├── layout/
│   ├── cell/
│   └── 2word_x_2bit/
│       └── sram_2w2b_top.gds
│
├── spice/
│   ├── cell/
│   └── array/
│
└── docs/
    ├── images/
    │   ├── sa1.png
    │   └── 5t_sense_amp_dvbl_vs_delay.png
    ├── specification.md
    ├── simulation_results.md
    ├── layout_description.md
    └── design_highlights.md
```

---

## 12. Submission Checklist

### Circuit Schematics

- [ ] 6T SRAM Cell schematic
- [ ] 2-word × 2-bit SRAM schematic
- [ ] SRAM Top schematic
- [ ] 5T Sense Amplifier schematic

### Simulation Schematics / Results

- [ ] Hold simulation
- [ ] Write simulation
- [ ] Read simulation
- [x] 5T Sense Amplifier transient simulation
- [x] ΔVBL vs Sense Delay evaluation

### Layout

- [x] 6T SRAM Cell layout
- [x] 2-word × 2-bit SRAM layout
- [x] SRAM Top GDS
- [x] LVS clean Top Layout
- [ ] Final submission DRC report

### Documentation

- [x] Basic SRAM specification
- [x] Sense Amplifier evaluation
- [x] Design highlights
- [ ] Final circuit figures
- [ ] Final layout figures
- [ ] Final submission document

---

## Repository

`TAKE-HooJoo/tr10_sram`

---

## Design Philosophy

最初から完成したSRAMマクロを目指すのではなく、次のサイクルを重視します。

**小さく作る → 動かす → 測る → 失敗する → 原因を調べる → 改善する**

> **Think, Build, Discuss.**  
> **Fail → Analyze → Improve.**

---

**小さなセルから、大きな未来へ。**  
Open Source PDK / EDAで、SRAMを回路からレイアウトまで作る。
