v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 70 -240 140 -240 {lab=VDD}
N 70 -210 140 -210 {lab=VSS}
N 70 -180 140 -180 {lab=PCB}
N 70 -150 140 -150 {lab=EQEN}
N 70 -110 140 -110 {lab=BL0}
N 70 -80 140 -80 {lab=BLB0}
N 70 -50 140 -50 {lab=BL1}
N 70 -20 140 -20 {lab=BLB1}
N 460 -260 460 -210 {lab=VDD}
N 460 -260 620 -260 {lab=VDD}
N 620 -260 620 -210 {lab=VDD}
N 540 -330 540 -260 {lab=VDD}
N 460 -150 460 -70 {lab=BL0}
N 620 -150 620 -70 {lab=BLB0}
N 500 -180 580 -180 {lab=PCB}
N 540 -180 540 -70 {lab=PCB}
N 620 -180 680 -180 {lab=VDD}
N 680 -230 680 -180 {lab=VDD}
N 620 -230 680 -230 {lab=VDD}
N 400 -180 460 -180 {lab=VDD}
N 400 -230 400 -180 {lab=VDD}
N 400 -230 460 -230 {lab=VDD}
N 570 -470 650 -470 {lab=BLB0}
N 440 -470 510 -470 {lab=BL0}
N 540 -430 540 -400 {lab=EQEN}
N 540 -540 540 -470 {lab=VSS}
N 830 -260 830 -210 {lab=VDD}
N 830 -260 990 -260 {lab=VDD}
N 990 -260 990 -210 {lab=VDD}
N 910 -330 910 -260 {lab=VDD}
N 830 -150 830 -70 {lab=BL1}
N 990 -150 990 -70 {lab=BLB1}
N 870 -180 950 -180 {lab=PCB}
N 910 -180 910 -70 {lab=PCB}
N 990 -180 1050 -180 {lab=VDD}
N 1050 -230 1050 -180 {lab=VDD}
N 990 -230 1050 -230 {lab=VDD}
N 770 -180 830 -180 {lab=VDD}
N 770 -230 770 -180 {lab=VDD}
N 770 -230 830 -230 {lab=VDD}
N 940 -470 1020 -470 {lab=BLB1}
N 810 -470 880 -470 {lab=BL1}
N 910 -430 910 -400 {lab=EQEN}
N 910 -540 910 -470 {lab=VSS}
C {devices/iopin.sym} 70 -240 0 1 {name=p1 lab=VDD}
C {devices/lab_pin.sym} 140 -240 0 1 {name=p2 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} 70 -210 0 1 {name=p3 lab=VSS}
C {devices/lab_pin.sym} 140 -210 0 1 {name=p4 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 70 -180 0 0 {name=p5 lab=PCB}
C {devices/lab_pin.sym} 140 -180 0 1 {name=p6 sig_type=std_logic lab=PCB}
C {devices/ipin.sym} 70 -150 0 0 {name=p7 lab=EQEN}
C {devices/lab_pin.sym} 140 -150 0 1 {name=p8 sig_type=std_logic lab=EQEN}
C {devices/iopin.sym} 70 -110 0 1 {name=p9 lab=BL0}
C {devices/lab_pin.sym} 140 -110 0 1 {name=p10 sig_type=std_logic lab=BL0}
C {devices/iopin.sym} 70 -80 0 1 {name=p11 lab=BLB0}
C {devices/lab_pin.sym} 140 -80 0 1 {name=p12 sig_type=std_logic lab=BLB0}
C {devices/iopin.sym} 70 -50 0 1 {name=p13 lab=BL1}
C {devices/lab_pin.sym} 140 -50 0 1 {name=p14 sig_type=std_logic lab=BL1}
C {devices/iopin.sym} 70 -20 0 1 {name=p15 lab=BLB1}
C {devices/lab_pin.sym} 140 -20 0 1 {name=p16 sig_type=std_logic lab=BLB1}
C {TR-1umLIB/MP.sym} 500 -180 0 1 {name=XM9
model=PMOS
w=3.4u
l=1u
m=1
spiceprefix=X
as=0
ad=0
ps=0
pd=0
nrd=0
nrs=0}
C {TR-1umLIB/MP.sym} 580 -180 0 0 {name=XM10
model=PMOS
w=3.4u
l=1u
m=1
spiceprefix=X
as=0
ad=0
ps=0
pd=0
nrd=0
nrs=0}
C {devices/lab_pin.sym} 460 -70 0 0 {name=p42 sig_type=std_logic lab=BL0}
C {devices/lab_pin.sym} 620 -70 0 1 {name=p44 sig_type=std_logic lab=BLB0}
C {devices/lab_pin.sym} 540 -70 0 1 {name=p45 sig_type=std_logic lab=PCB}
C {devices/lab_pin.sym} 540 -330 0 1 {name=p46 sig_type=std_logic lab=VDD}
C {TR-1umLIB/MN.sym} 540 -430 3 0 {name=XM11
model=NMOS
w=3.4u
l=1u
m=1
spiceprefix=X
as=0
ad=0
ps=0
pd=0
nrd=0
nrs=0}
C {devices/lab_pin.sym} 540 -540 0 1 {name=p47 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 650 -470 0 1 {name=p48 sig_type=std_logic lab=BLB0}
C {devices/lab_pin.sym} 440 -470 0 0 {name=p49 sig_type=std_logic lab=BL0}
C {devices/lab_pin.sym} 540 -400 0 1 {name=p50 sig_type=std_logic lab=EQEN}
C {TR-1umLIB/MP.sym} 870 -180 0 1 {name=XM12
model=PMOS
w=3.4u
l=1u
m=1
spiceprefix=X
as=0
ad=0
ps=0
pd=0
nrd=0
nrs=0}
C {TR-1umLIB/MP.sym} 950 -180 0 0 {name=XM13
model=PMOS
w=3.4u
l=1u
m=1
spiceprefix=X
as=0
ad=0
ps=0
pd=0
nrd=0
nrs=0}
C {devices/lab_pin.sym} 830 -70 0 0 {name=p51 sig_type=std_logic lab=BL1}
C {devices/lab_pin.sym} 990 -70 0 1 {name=p52 sig_type=std_logic lab=BLB1}
C {devices/lab_pin.sym} 910 -70 0 1 {name=p53 sig_type=std_logic lab=PCB}
C {devices/lab_pin.sym} 910 -330 0 1 {name=p54 sig_type=std_logic lab=VDD}
C {TR-1umLIB/MN.sym} 910 -430 3 0 {name=XM14
model=NMOS
w=3.4u
l=1u
m=1
spiceprefix=X
as=0
ad=0
ps=0
pd=0
nrd=0
nrs=0}
C {devices/lab_pin.sym} 910 -540 0 1 {name=p55 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1020 -470 0 1 {name=p56 sig_type=std_logic lab=BLB1}
C {devices/lab_pin.sym} 810 -470 0 0 {name=p57 sig_type=std_logic lab=BL1}
C {devices/lab_pin.sym} 910 -400 0 1 {name=p58 sig_type=std_logic lab=EQEN}
