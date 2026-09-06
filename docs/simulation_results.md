# TR-10 SRAM Simulation Results

## 1. Overview

This document summarizes the schematic-level simulation results for the
TR-10 / IP62 SRAM development project.

Target configuration:

-   Process / PDK: TR-10 / IP62
-   Supply voltage: 5 V
-   Simulator: ngspice
-   Schematic editor: Xschem
-   SRAM architecture: 6T SRAM
-   Array size: 2 words × 2 bits
-   Final read architecture: CMOS Read Buffer
-   Transistor minimum channel length: 1 µm

Final integrated hierarchy:

``` text
tb_sram_2w2b
├── sram_2w2b
│   └── sram6t_tr10 ×4
├── decoder
├── write_driver
├── precharge
└── read_buffer
```

------------------------------------------------------------------------

## 2. 6T SRAM Cell

### 2.1 Transistor sizing

  Device           Function              W/L
  ---------------- --------------------- ---------------
  Pull-up PMOS     Cross-coupled latch   3.4 µm / 1 µm
  Access NMOS      Bitline access        5.1 µm / 1 µm
  Pull-down NMOS   Cross-coupled latch   6.8 µm / 1 µm

Sizing ratio:

``` text
Wpd : Wacc : Wpu = 2 : 1.5 : 1
```

### 2.2 Basic cell verification

The following basic operations were verified at schematic level:

-   Hold operation: PASS
-   Write operation: PASS
-   Read operation: PASS
-   Transmission-gate write isolation: PASS
-   Precharge operation: PASS
-   Equalize operation: PASS

------------------------------------------------------------------------

## 3. Differential Bitline Development

Differential bitline development during read was measured.

  Measurement            Result
  ----------------- -----------
  ΔVBL at 24.9 ns       41.9 mV
  ΔVBL at 25.0 ns      182.8 mV
  ΔVBL at 25.1 ns       0.780 V
  ΔVBL at 25.2 ns       1.382 V
  Time to 50 mV         60.1 ps
  Time to 100 mV       80.11 ps
  Time to 200 mV      102.68 ps

These results confirm rapid differential development on BL/BLB after
word-line activation.

------------------------------------------------------------------------

## 4. Sense Amplifier Evaluation

A 5-transistor latch-type sense amplifier was created and evaluated.

Standalone simulation demonstrated operation with differential input
levels down to approximately 10 mV under ideal schematic-level
conditions.

However, when integrated directly with the SRAM bitlines, the sense
amplifier introduced significant bitline loading. Therefore, the sense
amplifier was retained as an experimental circuit, while the main 2word
× 2bit SRAM read path was changed to a CMOS Read Buffer.

> Note: The standalone sensitivity result does not include full
> mismatch, process, voltage, temperature, or extracted-layout effects.

------------------------------------------------------------------------

## 5. CMOS Read Buffer

The final read path uses a CMOS inverter driven from BLB.

Transistor sizing:

  Device   W/L
  -------- ---------------
  PMOS     6.8 µm / 1 µm
  NMOS     3.4 µm / 1 µm

Single-cell read-buffer measurement:

``` text
t_wl   = 24.9500 ns
t_dout = 26.0408 ns
t_read = 1.09085 ns
```

Result:

**Single-cell CMOS Read Buffer: PASS**

------------------------------------------------------------------------

## 6. 2word × 2bit SRAM Core

The SRAM core consists of four 6T cells.

``` text
             Bit0       Bit1
           ┌──────┐   ┌──────┐
Word0 ────►│ Cell │   │ Cell │
           └──────┘   └──────┘
              │          │
           BL0/BLB0    BL1/BLB1
              │          │
           ┌──────┐   ┌──────┐
Word1 ────►│ Cell │   │ Cell │
           └──────┘   └──────┘
```

Verified stored data:

``` text
Word0 = 10
Word1 = 01
```

Readback:

``` text
Word0 → 10 PASS
Word1 → 01 PASS
```

------------------------------------------------------------------------

## 7. Word Decoder

A WLE-enabled 1-to-2 decoder is used.

Logic:

``` text
A0B = /A0
WL0 = WLE AND A0B
WL1 = WLE AND A0
```

Truth table:

    WLE   A0   WL0   WL1
  ----- ---- ----- -----
      0    0     0     0
      0    1     0     0
      1    0     1     0
      1    1     0     1

Standalone decoder verification:

-   WLE=0 → WL0=0, WL1=0: PASS
-   WLE=1, A0=0 → Word0 selected: PASS
-   WLE=1, A0=1 → Word1 selected: PASS

An earlier decoder without WLE showed asymmetric propagation:

``` text
tpd_wl0 = 0.268 ns
tpd_wl1 = 0.988 ns
difference ≈ 0.720 ns
```

WLE was subsequently added so the address can be changed while both word
lines are disabled.

------------------------------------------------------------------------

## 8. Write Driver

The 2-bit write driver generates differential BL/BLB signals from DIN0
and DIN1.

Each data input includes an inverter to generate its complement,
followed by transmission gates controlled by WE/WEB.

Standalone verification:

``` text
WE=1:
  DIN0=0 → BL0=0, BLB0=1  PASS
  DIN0=1 → BL0=1, BLB0=0  PASS

  DIN1=0 → BL1=0, BLB1=1  PASS
  DIN1=1 → BL1=1, BLB1=0  PASS

WE=0:
  BL/BLB isolated (High-Z) PASS
```

Transient overshoot/undershoot observed on unloaded floating bitlines
while WE=0 was treated as a high-impedance testbench effect rather than
a functional failure.

------------------------------------------------------------------------

## 9. Precharge / Equalize

Each column contains:

-   PMOS precharge device from VDD to BL
-   PMOS precharge device from VDD to BLB
-   NMOS equalization device between BL and BLB

Control signals:

-   PCB: active-low precharge
-   EQEN: active-high equalize

The original inline circuitry was converted to the hierarchical
`precharge` block without changing simulation results.

Result:

**Precharge / Equalize block: PASS**

------------------------------------------------------------------------

## 10. Integrated 2word × 2bit SRAM Timing

### 10.1 Test sequence

``` text
5–15 ns    WLE=1, A0=0
            Write Word0 = 10

17 ns       Change A0 while WLE=0

20–30 ns   WLE=1, A0=1
            Write Word1 = 01

32 ns       Change A0 while WLE=0

35–40 ns   Precharge + Equalize

45–55 ns   WLE=1, A0=0
            Read Word0

57 ns       Change A0 while WLE=0

60–65 ns   Precharge + Equalize

70–80 ns   WLE=1, A0=1
            Read Word1
```

### 10.2 Final read-access measurement

Measurement definition:

``` spice
.meas tran t_read0 TRIG v(wl0) VAL=2.5 RISE=2 TARG v(dout0) VAL=2.5 RISE=1 TD=40n
.meas tran t_read1 TRIG v(wl1) VAL=2.5 RISE=2 TARG v(dout1) VAL=2.5 RISE=1 TD=65n
```

Final ngspice result:

``` text
t_read0 = 1.247439e-09 s
  targ = 4.762365e-08 s
  trig = 4.637621e-08 s

t_read1 = 1.246053e-09 s
  targ = 7.257285e-08 s
  trig = 7.132680e-08 s
```

Therefore:

  Read operation     Access time
  ---------------- -------------
  Word0              1.247439 ns
  Word1              1.246053 ns

The two words show closely matched read access times.

------------------------------------------------------------------------

## 11. Hierarchical Integration Verification

Peripheral circuits were progressively converted from inline transistor
circuits to hierarchical blocks.

  Integration stage                 Word0 read    Word1 read Result
  ------------------------------ ------------- ------------- --------
  Decoder integrated               1.247509 ns   1.246053 ns PASS
  Write Driver integrated          1.247439 ns   1.246053 ns PASS
  Precharge block integrated       1.247439 ns   1.246053 ns PASS
  Read Buffer block integrated     1.247439 ns   1.246053 ns PASS

The final Precharge and Read Buffer hierarchy changes produced no change
in the measured read access time.

For reference, the earlier direct-word-line configuration measured
approximately:

``` text
Word0 = 0.9957744 ns
Word1 = 0.9953930 ns
```

The final integrated read measurement is approximately 1.25 ns. Because
the final measurement is triggered from the 50% crossing of WL itself,
the difference from the direct-WL result should not be interpreted as
the complete decoder propagation delay.

------------------------------------------------------------------------

## 12. Final Verification Summary

``` text
TR-10 / IP62 2word × 2bit SRAM

6T SRAM cell
  Hold                         PASS
  Write                        PASS
  Read                         PASS

2word × 2bit SRAM core
  Word0 = 10                   PASS
  Word1 = 01                   PASS

Word Decoder
  WLE disable                  PASS
  Word0 selection              PASS
  Word1 selection              PASS

Write Driver
  Differential BL/BLB drive    PASS
  High-Z isolation             PASS

Precharge / Equalize
  Precharge                    PASS
  Equalize                     PASS

CMOS Read Buffer
  Word0 read                   PASS
  Word1 read                   PASS

Final read access
  Word0 = 1.247439 ns
  Word1 = 1.246053 ns

Overall schematic simulation
  PASS
```

------------------------------------------------------------------------

## 13. Current Final Architecture

``` text
DIN0 / DIN1
     │
     ▼
┌──────────────┐
│ Write Driver │◄── WE / WEB
└──────┬───────┘
       │
 BL0/BLB0, BL1/BLB1
       │
       ├──────────────┐
       │              │
       ▼              ▼
┌──────────────┐  ┌───────────────┐
│ 2word × 2bit │  │ Precharge /   │
│ SRAM Core    │  │ Equalize      │
└──────┬───────┘  └───────────────┘
       │
       │ BLB0 / BLB1
       ▼
┌──────────────┐
│ Read Buffer  │
└──────┬───────┘
       │
   DOUT0/DOUT1

A0 / WLE
   │
   ▼
┌──────────────┐
│   Decoder    │
└──────┬───────┘
     WL0/WL1
       │
       └────────► SRAM Core
```

------------------------------------------------------------------------

## 14. Next Steps

The schematic-level 2word × 2bit SRAM integration is complete.

Recommended next phase:

1.  Preserve the completed schematic simulation milestone in Git.
2.  Begin physical layout planning.
3.  Create layout for the 6T SRAM cell.
4.  Verify cell DRC/LVS.
5.  Construct the 2word × 2bit array layout.
6.  Add peripheral layouts for decoder, write driver,
    precharge/equalize, and read buffer.
7.  Perform integrated DRC/LVS.
8.  Repeat post-layout/extracted simulation and compare against the
    schematic-level results documented here.
