TR-10 2 word x 2 bit SRAM - Xschem functional bring-up v3
===========================================================

Important change from v2
------------------------
v2 used hand-written Xschem device/pin coordinates incorrectly. That caused
false/real shorts such as WE-VDD, CE-VSS and VDD-VSS and many open nets.

v3 deliberately separates:
  1. Xschem testbench wiring (simple and ERC-friendly)
  2. A primitive SRAM symbol
  3. The transistor-level SRAM implementation in sram_core.spice

Therefore Xschem does NOT descend into the faulty v2 hierarchy.

Files
-----
tb_sram_2x2.sch       Xschem testbench
sram_2x2_top.sym      primitive top SRAM symbol
sram_core.spice       6T x4 cell array + decoder/write/precharge/read
models_generic.spice  temporary generic 5 V Level-1 MOS models
tb_sram_2x2.spice     standalone ngspice testbench

Run
---
  cd tr10_sram_xschem_sim_v3
  xschem tb_sram_2x2.sch

Generate netlist from Xschem, then simulate.
For an independent ngspice check:
  ngspice tb_sram_2x2.spice

Expected sequence
-----------------
  5-15 ns   : write word0 = DIN[1:0] = 01
 20-30 ns   : read word0 -> DOUT[1:0] should approach 01
 35-45 ns   : write word1 = DIN[1:0] = 10
 50-60 ns   : read word1 -> DOUT[1:0] should approach 10
 65-75 ns   : re-read word0 -> DOUT[1:0] should approach 01

Notes
-----
* CE=0 is precharge/idle.
* CE=1, WE=0 is read.
* CE=1, WE=1 is write.
* The sense path is intentionally simple: DOUT = inverter(BLB).
* models_generic.spice is NOT a TR-10 sign-off model.
* Replace the generic models and tune W/L after TR-10 MOS model names,
  nominal supply voltage, and design rules are confirmed.
