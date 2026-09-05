TR-10 / IP62 6T SRAM v3
========================

Purpose
-------
Visible-source Xschem testbench for the TR-10 6T SRAM single cell.
VDD, WL, PC, W1 and W0 are real devices/vsource.sym instances.
The SRAM cell remains Wpd/Wacc/Wpu = 6.8u/5.1u/3.4u, L=1u, VDD=5V.

Files
-----
tb_sram6t_write_read_v3.sch  : top testbench
sram6t_tr10.sch/.sym          : 6T cell
MN.sym / MP.sym               : TR-10 MOS symbols

Run
---
cd ~/Design/tr10_sram6t_v3
xschem tb_sram6t_write_read_v3.sch

Then Netlist. Check:
grep -E '^(VVDD|VWL|VPC|VW1|VW0|XCELL)' ~/.xschem/simulations/tb_sram6t_write_read_v3.spice

Expected essential lines:
VVDD VDD 0 5
VWL WL 0 PWL(...)
XCELL BL BLB WL VDD 0 SRAM6T_TR10

Simulation sequence
-------------------
0-5 ns    precharge
5-15 ns   write 1
15-20 ns  precharge
20-30 ns  read 1
30-35 ns  precharge
35-45 ns  write 0
45-50 ns  precharge
50-60 ns  read 0

Plot:
plot v(wl)
plot v(bl) v(blb)
plot v(xcell.q) v(xcell.qb)

Note
----
BL/BLB ideal switching is still testbench-only SPICE code. This is intentional for
single-cell characterization. The next MPW step is to replace it with transistor-level
precharge/write/read circuitry after the 6T cell ratio is validated.
