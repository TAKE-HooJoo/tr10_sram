# TR-10 SRAM Development Project

TR-10 / IP62 PDKを使用したSRAM開発プロジェクトです。

6T SRAMセルのトランジスタレベル設計から始め、Hold / Write / Read / SNM評価、2word × 2bit SRAMアレイ、周辺回路、Sense Amplifier、レイアウト、DRC / LVS / PEX、Post-layout simulationまで段階的に開発します。

> **Think, Build, Discuss.**  
> **Fail → Analyze → Improve.**

## Project Goal

SRAMをブラックボックスとして使うのではなく、次の流れを実際に作りながら理解することを目的とします。

```text
Transistor → Cell → Array → Peripheral → Layout → Verification
```

最終目標は、TR-10上で動作する小規模SRAMマクロを構築することです。

```text
6T SRAM Cell
      ↓
Cell Characterization
      ↓
2word × 2bit Array
      ↓
Precharge / Equalize
      ↓
Write Driver
      ↓
Sense Amplifier
      ↓
SRAM Macro
      ↓
Layout
      ↓
DRC / LVS
      ↓
PEX
      ↓
Post-layout Simulation
```

## Target

| Item | Specification |
|---|---|
| Process / PDK | TR-10 / IP62 |
| Schematic Editor | Xschem |
| Simulator | ngspice |
| Supply Voltage | 5 V |
| Minimum Gate Length | 1.0 µm |
| SRAM Cell | 6T |
| Initial Array | 2word × 2bit |
| Read Architecture | Differential BL / BLB |
| Sense Circuit | Sense Amplifier |
| Layout Verification | DRC / LVS |
| Post-layout | PEX + Simulation |

## 6T SRAM Cell

基本となる6T SRAMセルは、クロスカップルされた2個のCMOSインバータと2個のAccess NMOSから構成します。

```text
                 VDD
                  │
            ┌─────┴─────┐
            │           │
           PMOS        PMOS
            │ Q       QB│
            ├────\ /────┤
            │     X     │
            ├────/ \────┤
            │           │
           NMOS        NMOS
            │           │
            └─────┬─────┘
                  │
                 VSS

BL  ─── Access NMOS ─── Q
             │
             WL

BLB ─── Access NMOS ─── QB
             │
             WL
```

### Initial transistor sizing

| Device | W | L |
|---|---:|---:|
| Pull-up PMOS | 3.4 µm | 1.0 µm |
| Access NMOS | 5.1 µm | 1.0 µm |
| Pull-down NMOS | 6.8 µm | 1.0 µm |

Initial cell ratio:

```text
Wpd : Wacc : Wpu = 6.8 : 5.1 : 3.4 = 2 : 1.5 : 1
```

このサイズを初期条件として、Read stability / Write ability / SNMを評価しながら最適化します。

## Cell Characterization

6Tセルでは以下のテストベンチを用意します。

- `tb_sram6t.sch` — 総合動作確認
- `tb_hold.sch` — WL非選択時の保持特性
- `tb_write.sch` — Write 0 / Write 1
- `tb_read.sch` — Read動作、Read disturb、BL/BLB差電圧
- `tb_snm.sch` — Butterfly curveによるSNM評価

Read評価では特にBL/BLBの差電圧を確認します。

```text
ΔVBL = |BL - BLB|
```

## 2word × 2bit SRAM

最初のSRAMアレイは4セル構成です。

```text
             BL0 / BLB0       BL1 / BLB1
                  │                 │

WL0 ────────── [CELL00]          [CELL01]

WL1 ────────── [CELL10]          [CELL11]

                  │                 │
                bit0              bit1
```

アドレスによってWL0 / WL1を選択し、2bit単位でWrite / Readを行います。

## Read Path

初期のセル評価ではBL/BLBの基本Read動作を確認し、その後、Precharge / EqualizeとSense Amplifierを含む差動Read pathへ発展させます。

```text
       Precharge / Equalize
                │
           BL / BLB
                │
          6T SRAM Array
                │
          ΔVBL generation
                │
          Sense Enable
                │
         Sense Amplifier
                │
              DOUT
```

基本Read sequence:

1. BL / BLBをPrecharge / Equalize
2. Word LineをAssert
3. セルデータによってBL / BLBに微小差電圧ΔVBLを生成
4. Sense EnableをAssert
5. Sense Amplifierで差電圧を0 / 1へ増幅
6. DOUTを確定

## Project Structure

```text
tr10_sram/
├── generic/
│   └── 現在の動作確認版
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
│       ├── sram_2w2b.sch
│       ├── sram_2w2b.sym
│       ├── decoder.sch
│       ├── precharge.sch
│       ├── write_driver.sch
│       ├── sense_amp.sch
│       ├── tb_sram_2w2b.sch
│       └── tb_sense_amp.sch
│
├── layout/
│   ├── cell/
│   └── 2word_x_2bit/
│
├── spice/
│   ├── cell/
│   └── array/
│
└── docs/
    ├── sizing.md
    ├── simulation_results.md
    └── layout_notes.md
```

## Development Roadmap

### Phase 1 — Environment

- [x] Generic SRAM functional verification
- [x] TR-10 / IP62 MOS symbol preparation
- [x] Project repository setup
- [ ] TR-10 SRAM simulation environment verification

### Phase 2 — 6T SRAM Cell

- [ ] 6T transistor-level schematic
- [ ] Generate SRAM cell symbol
- [ ] Hold simulation
- [ ] Write 0 / Write 1 simulation
- [ ] Read simulation
- [ ] Read disturb evaluation
- [ ] SNM evaluation
- [ ] Cell sizing optimization

### Phase 3 — Peripheral Circuits

- [ ] Precharge circuit
- [ ] Equalize circuit
- [ ] Write Driver
- [ ] Word-line Decoder
- [ ] Sense Amplifier
- [ ] Sense Enable timing evaluation

### Phase 4 — 2word × 2bit Array

- [ ] 4-cell array
- [ ] Address selection
- [ ] Write operation
- [ ] Read operation
- [ ] Differential Read
- [ ] Sense Amplifier integration

### Phase 5 — Layout

- [ ] 6T SRAM cell layout
- [ ] Cell DRC
- [ ] Cell LVS
- [ ] 2word × 2bit array layout
- [ ] Peripheral circuit layout
- [ ] SRAM macro integration

### Phase 6 — Post-layout

- [ ] Parasitic extraction
- [ ] PEX simulation
- [ ] Read timing verification
- [ ] Write timing verification
- [ ] Sense Amplifier verification
- [ ] Final SRAM macro verification

## Development Flow

```text
generic
   ↓
6T Cell Schematic
   ↓
Hold
   ↓
Write
   ↓
Read
   ↓
SNM
   ↓
Cell Sizing
   ↓
Peripheral Circuits
   ↓
2word × 2bit Array
   ↓
Sense Amplifier
   ↓
Layout
   ↓
DRC
   ↓
LVS
   ↓
PEX
   ↓
Post-layout Simulation
```

## Design Philosophy

最初から完成したSRAMマクロを目指すのではなく、次のサイクルを重視します。

**小さく作る → 動かす → 測る → 失敗する → 原因を調べる → 改善する**

> **Think, Build, Discuss.**  
> **Fail → Analyze → Improve.**

## Repository

GitHub repository: `TAKE-HooJoo/tr10_sram`

## Notes

本プロジェクトは開発・学習中です。回路仕様、トランジスタサイズ、テストベンチ、周辺回路構成はシミュレーションおよびレイアウト評価の結果に応じて更新します。

---

**小さなセルから、大きな未来へ。**  
Open Source PDK / EDAで、SRAMを回路からレイアウトまで作る。
