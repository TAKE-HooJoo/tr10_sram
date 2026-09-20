# 2word × 8bit SRAM --- ColMax評価

TR-10 / TR-1umプロセス向けに作成した、**2word × 8bit
SRAM（ColMax評価用）**です。

本回路は既存の2word × 2bit
SRAMを列方向へ8bitまで拡張し、SRAMの列数を増やした場合のRead特性を評価することを目的としています。

------------------------------------------------------------------------

## 1. 概要

SRAMセルには6T SRAMセルを使用しています。

-   Word数：2
-   Bit数：8
-   SRAMセル数：16
-   電源電圧：5 V
-   プロセス：TR-1um
-   SRAMセル：6T SRAM
-   Word Line：WL0 / WL1
-   Bit Line：BL0/BLB0 ～ BL7/BLB7

構成は以下のとおりです。

``` text
          bit0   bit1   bit2   bit3   bit4   bit5   bit6   bit7
           │      │      │      │      │      │      │      │
         BL0/B  BL1/B  BL2/B  BL3/B  BL4/B  BL5/B  BL6/B  BL7/B
           │      │      │      │      │      │      │      │

WL1 ──── [6T]── [6T]── [6T]── [6T]── [6T]── [6T]── [6T]── [6T]

WL0 ──── [6T]── [6T]── [6T]── [6T]── [6T]── [6T]── [6T]── [6T]
```

------------------------------------------------------------------------

## 2. ColMax評価

本SRAMは通常の8bitデータSRAMとしてではなく、**列方向を8bitまで拡張した場合のRead特性を確認するColMax評価用SRAM**として使用します。

特に `bit1` と `bit7` のRead特性を比較します。

bit1を基準側、bit7を列端側の観測点として使用し、Word
Lineを有効にした後のBL/BLB差動電圧の発達を比較します。

------------------------------------------------------------------------

## 3. 周辺回路

テストベンチには以下の回路を使用しています。

-   Address Decoder
-   Write Driver
-   Precharge / Equalize
-   Read Buffer
-   2word × 8bit SRAM Core

2bit用の周辺回路を4組使用して8bitへ拡張しています。

``` text
Write Driver

DIN0 / DIN1 → BL0/BLB0, BL1/BLB1
DIN2 / DIN3 → BL2/BLB2, BL3/BLB3
DIN4 / DIN5 → BL4/BLB4, BL5/BLB5
DIN6 / DIN7 → BL6/BLB6, BL7/BLB7
```

Precharge回路およびRead
Bufferについても同様に、2bit単位の回路を4組使用しています。

------------------------------------------------------------------------

## 4. テスト条件

今回の動作確認では、外部から変化させるデータ入力をDIN0およびDIN7とし、DIN1～DIN6はVSSへ固定しています。

``` text
DIN0 : PWL入力
DIN1 : VSS
DIN2 : VSS
DIN3 : VSS
DIN4 : VSS
DIN5 : VSS
DIN6 : VSS
DIN7 : PWL入力
```

Read結果については、`DOUT1` と `DOUT7` を主な観測点としています。

また、Read時のBit Line差動特性を確認するため、`BL1 / BLB1` と
`BL7 / BLB7` を比較しています。

------------------------------------------------------------------------

## 5. Read Bit-Line評価

WL0の50%立ち上がり時刻をRead開始基準として測定しました。

``` text
t_wl0_rise = 47.2810 ns
t_wl1_rise = 22.5479 ns
```

WL0立ち上がり後のBit Line差動電圧 `ΔVBL = |BL - BLB|`
をbit1とbit7について測定しました。

  測定条件             bit1       bit7
  -------------- ---------- ----------
  WL0 + 0.5 ns     2.2933 V   2.2909 V
  WL0 + 1.0 ns     4.0141 V   4.0272 V

WL0 + 0.5 ns時点でのbit1とbit7の差は約2.4 mVであり、ほぼ同等のBit
Line差動が形成されています。

------------------------------------------------------------------------

## 6. ΔVBL = 1 V 到達時間

Read開始後、`|BL - BLB| = 1.0 V` となる時刻を測定しました。

  項目                          bit1         bit7
  --------------------- ------------ ------------
  ΔVBL = 1 V 到達時刻     47.3739 ns   47.3760 ns
  WL0 → ΔVBL=1 V            92.82 ps     94.98 ps

bit1とbit7のRead development delay差は、

``` text
94.98 ps - 92.82 ps = 2.15 ps
```

となりました。

bit1を基準とした差は約 **2.32 %** です。

------------------------------------------------------------------------

## 7. シミュレーション結果

今回のschematic simulationでは、以下を確認しました。

-   16個の6T SRAMセルの動作
-   8組のBL/BLB
-   Precharge / Equalize
-   Write動作
-   Read動作
-   bit1 / bit7のBL差動形成

特にColMax評価対象であるbit1とbit7について、

``` text
              bit1                  bit7

WL0
 │
 ├──── 92.82 ps ──→ ΔVBL = 1 V
 │
 └──── 94.98 ps ──→ ΔVBL = 1 V
```

となり、schematic
simulationでは両者のRead特性はほぼ同等であることを確認しました。

------------------------------------------------------------------------

## 8. SPICE測定

ColMax評価には以下の測定を使用しています。

``` spice
* WL 50% crossing
.meas tran t_wl0_rise WHEN v(WL0)=2.5 RISE=2
.meas tran t_wl1_rise WHEN v(WL1)=2.5 RISE=1

* BL differential at WL0 +0.5ns
.meas tran dvbl1_05 FIND par('abs(v(BL1)-v(BLB1))') AT=47.781n
.meas tran dvbl7_05 FIND par('abs(v(BL7)-v(BLB7))') AT=47.781n

* BL differential at WL0 +1.0ns
.meas tran dvbl1_10 FIND par('abs(v(BL1)-v(BLB1))') AT=48.281n
.meas tran dvbl7_10 FIND par('abs(v(BL7)-v(BLB7))') AT=48.281n

* Time when BL differential reaches 1.0V
.meas tran t_dvbl1_1v WHEN par('abs(v(BL1)-v(BLB1))')=1.0 RISE=1 TD=47n
.meas tran t_dvbl7_1v WHEN par('abs(v(BL7)-v(BLB7))')=1.0 RISE=1 TD=47n

* Delay from WL0 50% to ΔVBL=1.0V
.meas tran td_bl1 PARAM='t_dvbl1_1v-t_wl0_rise'
.meas tran td_bl7 PARAM='t_dvbl7_1v-t_wl0_rise'
```

------------------------------------------------------------------------

## 9. 現時点での評価

Schematic simulationでは、2word ×
8bitへ列方向を拡張した場合でも、bit1とbit7でほぼ同等のRead
differentialが得られました。

ΔVBL=1 Vまでの時間差は約2.15 psでした。

ただし、今回の結果はschematic
simulationによるものです。実際のレイアウトでは、Bit Line配線抵抗、Bit
Line容量、配線長、寄生容量、セル位置などの影響が加わります。

したがって、ColMaxの最終評価についてはレイアウト後の寄生RCを含めたPost-Layout
Simulationで確認します。

------------------------------------------------------------------------

## 10. 今後の予定

-   2word × 8bit SRAMレイアウト完成
-   DRC
-   LVS
-   寄生RC抽出
-   Post-Layout Simulation
-   bit1 / bit7 Read特性比較
-   Schematic / Post-Layout比較

最終的には、列方向を拡張した場合のRead MarginおよびRead
Delayへの影響を評価する予定です。
