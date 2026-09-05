v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {TR-10 / IP62 6T SRAM - v3 visible-drive testbench} 40 -430 0 0 0.46 0.46 {}
T {VDD / WL / PC / W1 / W0 are real Xschem voltage-source symbols. BL/BLB switching remains testbench-only.} 40 -395 0 0 0.23 0.23 {}
T {0-5ns PC | 5-15ns WRITE 1 | 15-20ns PC | 20-30ns READ 1 | 30-35ns PC | 35-45ns WRITE 0 | 45-50ns PC | 50-60ns READ 0} 40 -365 0 0 0.2 0.2 {}
N 760 80 760 90 {lab=0}
N 300 -100 470 -100 {lab=WL}
N 470 -100 470 20 {lab=WL}
N 470 20 600 20 {lab=WL}
N 500 -70 600 -70 {lab=BL}
N 860 -70 960 -70 {lab=BLB}
N 300 150 300 160 {lab=0}
N 500 150 500 160 {lab=0}
N 700 150 700 160 {lab=0}
N 300 -290 300 -280 {lab=VDD}
N 300 -220 300 -210 {lab=0}
N 300 -40 300 -30 {lab=0}
C {./sram6t_tr10.sym} 600 -20 0 0 {name=CELL}
C {devices/vsource.sym} 300 -250 0 0 {name=VVDD value=5}
C {devices/vdd.sym} 300 -290 0 0 {name=VDD1 lab=VDD}
C {devices/gnd.sym} 300 -210 0 0 {name=G_VDD lab=0}
C {devices/vdd.sym} 700 -130 0 0 {name=VDD2 lab=VDD}
C {devices/gnd.sym} 760 90 0 0 {name=G_CELL lab=0}
C {devices/vsource.sym} 300 -70 0 0 {name=VWL value="PWL(0 0 4.9n 0 5n 5 14.9n 5 15n 0 19.9n 0 20n 5 29.9n 5 30n 0 34.9n 0 35n 5 44.9n 5 45n 0 49.9n 0 50n 5 59.9n 5 60n 0 65n 0)"}
C {devices/gnd.sym} 300 -30 0 0 {name=G_WL lab=0}
C {devices/lab_wire.sym} 400 -100 0 0 {name=LWL lab=WL}
C {devices/iopin.sym} 500 -70 2 0 {name=PBL lab=BL}
C {devices/iopin.sym} 960 -70 0 0 {name=PBLB lab=BLB}
C {devices/vsource.sym} 300 120 0 0 {name=VPC value="PWL(0 5 4.9n 5 5n 0 14.9n 0 15n 5 19.9n 5 20n 0 29.9n 0 30n 5 34.9n 5 35n 0 44.9n 0 45n 5 49.9n 5 50n 0 59.9n 0 60n 5 65n 5)"}
C {devices/gnd.sym} 300 160 0 0 {name=G_PC lab=0}
C {devices/lab_wire.sym} 300 90 0 0 {name=LPC lab=PC}
C {devices/vsource.sym} 500 120 0 0 {name=VW1 value="PWL(0 0 4.9n 0 5n 5 14.9n 5 15n 0 65n 0)"}
C {devices/gnd.sym} 500 160 0 0 {name=G_W1 lab=0}
C {devices/lab_wire.sym} 500 90 0 0 {name=LW1 lab=W1}
C {devices/vsource.sym} 700 120 0 0 {name=VW0 value="PWL(0 0 34.9n 0 35n 5 44.9n 5 45n 0 65n 0)"}
C {devices/gnd.sym} 700 160 0 0 {name=G_W0 lab=0}
C {devices/lab_wire.sym} 700 90 0 0 {name=LW0 lab=W0}
C {devices/code_shown.sym} 1050 -260 0 0 {name=CORE only_toplevel=true value=".include $::LIB/ip62_models

.subckt SRAM6T_TR10 BL BLB WL VDD VSS
XPUQ   Q  QB VDD VDD PMOS w=3.4u l=1u nrd=0 nrs=0 m=1
XPUQB  QB Q  VDD VDD PMOS w=3.4u l=1u nrd=0 nrs=0 m=1
XPDQ   Q  QB VSS VSS NMOS w=6.8u l=1u nrd=0 nrs=0 m=1
XPDQB  QB Q  VSS VSS NMOS w=6.8u l=1u nrd=0 nrs=0 m=1
XACCQ  BL  WL Q  VSS NMOS w=5.1u l=1u nrd=0 nrs=0 m=1
XACCQB BLB WL QB VSS NMOS w=5.1u l=1u nrd=0 nrs=0 m=1
.ends SRAM6T_TR10

.model SWBIT SW(Ron=5 Roff=1e12 Vt=2.5 Vh=0.1)
SPCBL   BL  VDD PC 0 SWBIT
SPCBLB  BLB VDD PC 0 SWBIT
SWR1H   BL  VDD W1 0 SWBIT
SWR1L   BLB 0   W1 0 SWBIT
SWR0L   BL  0   W0 0 SWBIT
SWR0H   BLB VDD W0 0 SWBIT
CBL  BL  0 50f
CBLB BLB 0 50f
RBL  BL  0 1G
RBLB BLB 0 1G"}
C {devices/code_shown.sym} 1050 280 0 0 {name=SIM only_toplevel=true value=".tran 0.02n 65n
.save v(VDD) v(WL) v(PC) v(W1) v(W0) v(BL) v(BLB) v(xcell.q) v(xcell.qb)"}
