# はじめてのSRAM設計 --- TR-10 SRAM TEG

OpenSUSI TR10 / TR-1um PDKを使用し、6T
SRAMセルからトランジスタレベルで設計したシングルポートSRAMです。

最小構成の **2-word × 2-bit SRAM**
をベースラインとしてRow方向・Column方向へ拡張し、最終的に4種類のSRAMマクロをTEGとして統合し、TR-1um
MPWフレームへ搭載しました。

  Macro    Role                     Organization   Capacity
  -------- ------------------ ------------------ ----------
  Capmin   Base / minimum         2-word × 2-bit      4 bit
  Rowmax   Row maximum           16-word × 2-bit     32 bit
  Colmax   Column maximum        2-word × 16-bit     32 bit
  Capmax   Maximum capacity     16-word × 16-bit    256 bit

> Think, Build, Discuss.\
> Fail → Analyze → Improve.

------------------------------------------------------------------------

## 1. Overview

``` text
Transistor
   ↓
6T SRAM Cell
   ↓
Simulation / Characterization
   ↓
2w2b Baseline
   ↓
Row / Column Scaling
   ↓
2w2b / 16w2b / 2w16b / 16w16b
   ↓
SRAM TEG Top
   ↓
DRC / LVS
   ↓
TR-1um MPW Frame Integration
   ↓
Chip-level GDS
```

SRAMをブラックボックスとして利用するのではなく、セル、アレイ、Decoder、Write
Driver、Precharge / Equalize、Read
Buffer、レイアウト、DRC/LVS、チップ統合までを段階的に構築しました。

## 2. Design Specification

  Item                  Specification
  --------------------- -------------------------------
  Process / PDK         OpenSUSI TR10 / TR-1um
  Supply Voltage        5 V
  Minimum Gate Length   1.0 µm
  SRAM Cell             6T
  Port                  Single port
  Schematic Editor      Xschem
  Simulator             ngspice
  Layout Editor         KLayout
  Read Circuit          BL / BLB + CMOS Read Buffer
  TEG Macros            2w2b / 16w2b / 2w16b / 16w16b

## 3. 6T SRAM Cell

基本セルはクロスカップルされた2個のCMOSインバータと2個のAccess
NMOSから構成します。

  Device                  W        L
  ---------------- -------- --------
  Pull-up PMOS       3.4 µm   1.0 µm
  Access NMOS        5.1 µm   1.0 µm
  Pull-down NMOS     6.8 µm   1.0 µm

``` text
Wpd : Wacc : Wpu = 6.8 : 5.1 : 3.4 = 2 : 1.5 : 1
```

## 4. Cell Simulation / SNM

Xschem + ngspiceでHold、Write 0/1、Read、SNMを評価しました。

``` text
Hold SNM = 1.354 V
Read SNM = 0.400 V
```

Read時にはRead DisturbによってLow側内部ノードが持ち上がり、Butterfly
Curveの開口が小さくなることも確認しました。

## 5. Sense Amplifier Evaluation

5T Sense Amplifierも設計・評価しました。

    Initial ΔVBL   Sense Delay
  -------------- -------------
           10 mV      6.202 ns
           20 mV      5.604 ns
           50 mV      4.812 ns
          100 mV      4.212 ns
          200 mV      3.614 ns

微小差動入力までSense動作を確認しましたが、今回の小規模SRAMでは入力負荷の影響も考慮し、最終TopではシンプルなCMOS
Read Bufferを採用しました。

## 6. 2w2b Baseline

4個の6T SRAM Cellから2-word × 2-bit SRAMを構成し、Decoder、Write
Driver、Precharge / Equalize、Read Bufferを統合しました。

`WEB` は `WE` から、`EQEN` は `PCB`
と連動する形で内部生成し、外部I/Oを削減しています。

## 7. Array Scaling

Row方向の中間評価として8w2bを作成し、2w2bと比較しました。

  Item                            2w2b          8w2b
  ---------------------- ------------- -------------
  Read delay bit0          1.280647 ns   1.625134 ns
  Read delay bit1          1.277820 ns   1.597732 ns
  ΔVBL bit0 @ \~0.5 ns         1.698 V       0.916 V
  ΔVBL bit1 @ \~0.5 ns         2.109 V       0.747 V

8-word化によりRead delayは約25～27%増加し、BL /
BLB差動形成も遅くなることを確認しました。

## 8. SRAM TEG Architecture

最終TEGは以下の4マクロです。

### Capmin --- 2w2b

最小容量・ベースライン。全I/Oを観測します。

### Rowmax --- 16w2b

Row方向最大構成。物理アレイ両端の **WL0 / WL15**
を主な評価対象とします。

### Colmax --- 2w16b

Column方向最大構成。Readは両端の **bit0 / bit15** を観測します。

### Capmax --- 16w16b

RowmaxとColmaxを組み合わせた256-bit最大容量構成です。WL0 /
WL15およびbit0 / bit15を利用して最遠端を含む動作を評価します。

## 9. Selected Simulation Results

### 2w16b / Colmax

``` text
ΔVBL0  @ 0.5 ns = 0.213 V
ΔVBL15 @ 0.5 ns = 0.0485 V
ΔVBL0  @ 1.0 ns = 0.592 V
ΔVBL15 @ 1.0 ns = 0.486 V
```

### 16w2b / Rowmax

``` text
WL0  : td_read ≈ 1.943 ns
WL15 : td_read ≈ 1.772 ns

ΔVBL0 @ 0.5 ns = 0.156 V
ΔVBL0 @ 1.0 ns = 1.084 V
ΔVBL1 @ 0.5 ns = 0.0625 V
ΔVBL1 @ 1.0 ns = 0.997 V
```

### 16w16b / Capmax

``` text
WL0 / bit0   : td_read ≈ 2.422 ns
WL15 / bit15 : td_read ≈ 2.121 ns
```

## 10. SRAM TEG Integration

4マクロを `sram_teg_top` に統合しました。

``` text
+----------------------+----------------------+
| 16w2b / Rowmax       | 16w16b / Capmax      |
+----------------------+----------------------+
| 2w2b / Capmin        | 2w16b / Colmax       |
+----------------------+----------------------+
```

共通入力・電源は `VDD, VSS, WLE, PCB, WE, A0, DIN0, DIN1` です。

独立出力は以下です。

``` text
DOUT0 = 2w2b bit0
DOUT1 = 2w2b bit1
DOUT2 = 2w16b bit0
DOUT3 = 2w16b bit15
DOUT4 = 16w2b bit0
DOUT5 = 16w2b bit1
DOUT6 = 16w16b bit0
DOUT7 = 16w16b bit15
```

16-bitマクロではTop-level `DIN1` をマクロ側の `DIN15`
として使用し、中間DINは内部固定しています。

## 11. Chip-level Integration

DRC/LVSを確認した `sram_teg_top` をTR-1um
MPWフレームへ搭載し、チップレベルGDSまで統合しました。M2で作成したSIGロゴも配置しています。

## 12. Pad Assignment

チップ外部は **14 signal I/O + VDD + VSS = 16 pads** です。

  Frame Pad   SRAM Signal
  ----------- -------------
  P1          DOUT6
  P2          DOUT5
  P3          DOUT4
  P4          DOUT3
  P5          DOUT2
  P6          DOUT1
  P7          DOUT0
  VSS         VSS
  VDD         VDD
  P15         DOUT7
  P14         WE
  P13         WLE
  P12         PCB
  P11         A0
  P10         DIN0
  P9          DIN1

## 13. Layout Verification

2w2b、2w16b、16w2b、16w16bの各マクロをレイアウトし、DRC/LVSを実施しました。さらに4マクロを統合した
`sram_teg_top` についても **DRC PASS / LVS PASS** を確認しています。

SRAMの対称構造に起因するambiguous matching
warningが表示される場合がありますが、最終比較では不一致がないことを確認しています。

## 14. Design Highlights

-   6T BitcellからSRAM TEG、チップ統合までを段階的に実装
-   Row方向を2w → 8w → 16wへ拡張
-   Column方向を2b → 8b → 16bへ拡張
-   Capmin / Rowmax / Colmax / Capmaxの4マクロを同一TEGへ統合
-   Xschem / ngspice / KLayoutによるオープンソースEDA中心の設計フロー
-   シミュレーションだけでなく、レイアウト、DRC、LVS、MPWフレーム統合まで実施

## 15. Repository Structure

``` text
tr10_sram/
├── cell/
├── array/
├── sram/
│   ├── sram_2w2b_top.*
│   ├── sram_2w16b_top.*
│   ├── sram_16w2b_top.*
│   ├── sram_16w16b_top.*
│   ├── sram_teg_top.*
│   └── tr_1um_TAKE-HooJoo.gds
├── layout/
├── docs/
└── Deliverables/
```

## 16. Current Status

``` text
6T SRAM Cell
     ↓
2w2b Baseline
     ↓
8w2b / 2w8b Intermediate Evaluation
     ↓
16w2b Rowmax + 2w16b Colmax
     ↓
16w16b Capmax
     ↓
4-Macro SRAM TEG
     ↓
sram_teg_top
     ↓
DRC PASS / LVS PASS
     ↓
TR-1um MPW Frame Integration
     ↓
Chip-level GDS
     ↓
Current milestone
```

## 17. Future Work

製造後は実チップ測定を行い、シミュレーション結果と比較します。

-   2w2b / 16w2bによるRow負荷比較
-   2w2b / 2w16bによるColumn負荷比較
-   16w16b最遠端のRead特性
-   Read access time
-   BL / BLB負荷とRead margin
-   Bitcell sizing
-   Sense Amplifier再導入
-   Sense Enable timing
-   レイアウト面積・配線最適化

実チップ測定結果を次回設計へフィードバックし、SRAM Cell、Read
Path、周辺回路を段階的に改善していきます。
