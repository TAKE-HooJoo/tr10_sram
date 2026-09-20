# 8word × 2bit SRAM

TR-10向け8word × 2bit（16 bit）シングルポート6T SRAMの設計・評価です。

## 設計方針

既存の2word × 2bit SRAMトップ回路をベースとして、SRAMアレイを8word × 2bitへ拡張しています。周辺回路は2word版をできるだけそのまま再利用しています。

8wordアレイは16個の6T SRAMセルで構成されます。

- Word数：8
- Word幅：2 bit
- 総容量：16 bit
- 6T SRAMセル数：16
- SRAMセル内MOS総数：96
- 電源電圧：5 V

## Word Line構成

今回の8word版はフル機能の3-to-8デコーダを使用せず、2word × 2bit版のデコーダを再利用しています。

選択可能なWord Lineは、物理アレイの両端に位置するWL0とWL7です。

```text
最上段  WL7  ← decoder WL1（選択可能）
        WL6  ← VSS
        WL5  ← VSS
        WL4  ← VSS
        WL3  ← VSS
        WL2  ← VSS
        WL1  ← VSS
最下段  WL0  ← decoder WL0（選択可能）
```

この構成により、8word分のセルが接続されたBL/BLBの負荷を持った状態で、アレイ両端のWord Lineを使用したRead/Write評価が可能です。

## 主要ファイル

```text
sram_8w2b.sch       : 8word × 2bit SRAMアレイ回路
sram_8w2b.sym       : Xschem用アレイシンボル
sram_8w2b.gds       : 8word × 2bit SRAMアレイレイアウト
sram_8w2b_top.sch   : 周辺回路を含むトップ回路
sram_8w2b_top.gds   : 周辺回路を含むトップレイアウト
```

## 2word × 2bitとのRead性能比較

2word版と8word版に同一の周辺回路およびテスト条件を使用してTransient simulationを実施しました。

### Read delay

| 項目 | 2w2b | 8w2b | 増加量 | 増加率 |
|---|---:|---:|---:|---:|
| bit 0 | 1.280647 ns | 1.625134 ns | +0.344487 ns | +26.9% |
| bit 1 | 1.277820 ns | 1.597732 ns | +0.319912 ns | +25.0% |

8word化によってRead delayは約25～27%増加しました。

## BL/BLB差動電圧の比較

Word Line立上り後の同一時刻でBL/BLB差動電圧を比較しました。

### WL立上り約0.5 ns後

| Bit | 2w2b | 8w2b | 変化率 |
|---|---:|---:|---:|
| bit 0 | 1.698 V | 0.916 V | -46.0% |
| bit 1 | 2.109 V | 0.747 V | -64.6% |

### WL立上り約1.0 ns後

| Bit | 2w2b | 8w2b | 変化率 |
|---|---:|---:|---:|
| bit 0 | 3.587 V | 2.261 V | -37.0% |
| bit 1 | 4.252 V | 2.383 V | -44.0% |

## 評価結果

2wordから8wordへアレイ深さを拡張すると、各BL/BLB対に接続される6T SRAMセル数が増加します。

シミュレーションでは、8word版においてRead初期のBL/BLB差動電圧が2word版より小さくなり、DOUTが確定するまでのRead delayも増加しました。

測定結果は、

```text
アレイ深さ増加
      ↓
BL/BLBに接続されるセル数増加
      ↓
ビット線負荷増加
      ↓
BL/BLB差動形成の遅延
      ↓
Read delay増加
```

という挙動と整合的です。

特にWL立上り約0.5 ns後では、bit 0の差動電圧が1.698 Vから0.916 Vへ、bit 1では2.109 Vから0.747 Vへ低下しました。最終的なRead delayはbit 0で約26.9%、bit 1で約25.0%増加しています。

## 現在の確認状況

- 8word × 2bit SRAMアレイ回路作成：完了
- 8word × 2bit SRAMアレイレイアウト：完了
- アレイ単体LVS：OK
- WL0 / WL7選択トップ回路：作成済み
- Transient simulation：動作確認済み
- 2w2b / 8w2b Read delay比較：実施済み
- BL/BLB差動電圧比較：実施済み

トップレイアウトについては、2word × 2bit版をベースに8word × 2bit版へ展開し、最終的にDRC/LVS確認を行います。
