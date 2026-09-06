v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 540 -530 540 -430 {lab=DIN0B}
N 460 -560 500 -560 {lab=DIN0}
N 460 -560 460 -400 {lab=DIN0}
N 460 -400 500 -400 {lab=DIN0}
N 540 -470 640 -470 {lab=DIN0B}
N 380 -470 460 -470 {lab=DIN0}
N 540 -650 540 -590 {lab=VDD}
N 540 -370 540 -310 {lab=VSS}
N 540 -560 600 -560 {lab=VDD}
N 600 -610 600 -560 {lab=VDD}
N 540 -610 600 -610 {lab=VDD}
N 540 -400 600 -400 {lab=VSS}
N 600 -400 600 -350 {lab=VSS}
N 540 -350 600 -350 {lab=VSS}
N 180 -1070 180 -1030 {lab=BL0}
N 180 -1070 330 -1070 {lab=BL0}
N 330 -1070 330 -1030 {lab=BL0}
N 180 -970 180 -930 {lab=DIN0}
N 180 -930 330 -930 {lab=DIN0}
N 330 -970 330 -930 {lab=DIN0}
N 250 -1120 250 -1070 {lab=BL0}
N 250 -930 250 -880 {lab=DIN0}
N 180 -1000 230 -1000 {lab=VSS}
N 280 -1000 330 -1000 {lab=VDD}
N 370 -1000 420 -1000 {lab=WEB}
N 80 -1000 140 -1000 {lab=WE}
N 680 -1070 680 -1030 {lab=BLB0}
N 680 -1070 830 -1070 {lab=BLB0}
N 830 -1070 830 -1030 {lab=BLB0}
N 680 -970 680 -930 {lab=DIN0B}
N 680 -930 830 -930 {lab=DIN0B}
N 830 -970 830 -930 {lab=DIN0B}
N 750 -1120 750 -1070 {lab=BLB0}
N 750 -930 750 -880 {lab=DIN0B}
N 680 -1000 730 -1000 {lab=VSS}
N 780 -1000 830 -1000 {lab=VDD}
N 870 -1000 920 -1000 {lab=WEB}
N 580 -1000 640 -1000 {lab=WE}
N 1420 -530 1420 -430 {lab=DIN1B}
N 1340 -560 1380 -560 {lab=DIN1}
N 1340 -560 1340 -400 {lab=DIN1}
N 1340 -400 1380 -400 {lab=DIN1}
N 1420 -470 1520 -470 {lab=DIN1B}
N 1260 -470 1340 -470 {lab=DIN1}
N 1420 -650 1420 -590 {lab=VDD}
N 1420 -370 1420 -310 {lab=VSS}
N 1420 -560 1480 -560 {lab=VDD}
N 1480 -610 1480 -560 {lab=VDD}
N 1420 -610 1480 -610 {lab=VDD}
N 1420 -400 1480 -400 {lab=VSS}
N 1480 -400 1480 -350 {lab=VSS}
N 1420 -350 1480 -350 {lab=VSS}
N 1150 -1070 1150 -1030 {lab=BL1}
N 1150 -1070 1300 -1070 {lab=BL1}
N 1300 -1070 1300 -1030 {lab=BL1}
N 1150 -970 1150 -930 {lab=DIN1}
N 1150 -930 1300 -930 {lab=DIN1}
N 1300 -970 1300 -930 {lab=DIN1}
N 1220 -1120 1220 -1070 {lab=BL1}
N 1220 -930 1220 -880 {lab=DIN1}
N 1150 -1000 1200 -1000 {lab=VSS}
N 1250 -1000 1300 -1000 {lab=VDD}
N 1340 -1000 1390 -1000 {lab=WEB}
N 1050 -1000 1110 -1000 {lab=WE}
N 1600 -1070 1600 -1030 {lab=BLB1}
N 1600 -1070 1750 -1070 {lab=BLB1}
N 1750 -1070 1750 -1030 {lab=BLB1}
N 1600 -970 1600 -930 {lab=DIN1B}
N 1600 -930 1750 -930 {lab=DIN1B}
N 1750 -970 1750 -930 {lab=DIN1B}
N 1670 -1120 1670 -1070 {lab=BLB1}
N 1670 -930 1670 -880 {lab=DIN1B}
N 1600 -1000 1650 -1000 {lab=VSS}
N 1700 -1000 1750 -1000 {lab=VDD}
N 1790 -1000 1840 -1000 {lab=WEB}
N 1500 -1000 1560 -1000 {lab=WE}
N 260 -1640 320 -1640 {lab=DIN0}
N 260 -1600 320 -1600 {lab=DIN1}
N 260 -1560 320 -1560 {lab=WE}
N 260 -1520 320 -1520 {lab=WEB}
N 530 -1640 590 -1640 {lab=BL0}
N 530 -1600 590 -1600 {lab=BLB0}
N 530 -1560 590 -1560 {lab=BL1}
N 530 -1520 590 -1520 {lab=BLB1}
N 760 -1640 820 -1640 {lab=VDD}
N 760 -1600 820 -1600 {lab=VSS}
C {TR-1umLIB/MP.sym} 500 -560 0 0 {name=XM15
model=PMOS
w=6.8u
l=1u
m=1
spiceprefix=X
as=0
ad=0
ps=0
pd=0
nrd=0
nrs=0}
C {devices/lab_pin.sym} 380 -470 0 0 {name=p59 sig_type=std_logic lab=DIN0}
C {devices/lab_pin.sym} 540 -650 0 0 {name=p60 sig_type=std_logic lab=VDD}
C {TR-1umLIB/MN.sym} 500 -400 0 0 {name=XM16
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
C {devices/lab_pin.sym} 540 -310 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 640 -470 0 1 {name=p2 sig_type=std_logic lab=DIN0B}
C {TR-1umLIB/MN.sym} 140 -1000 0 0 {name=XM7
model=NMOS
w=5.1u
l=1u
m=1
spiceprefix=X
as=0
ad=0
ps=0
pd=0
nrd=0
nrs=0}
C {TR-1umLIB/MP.sym} 370 -1000 0 1 {name=XM8
model=PMOS
w=5.1u
l=1u
m=1
spiceprefix=X
as=0
ad=0
ps=0
pd=0
nrd=0
nrs=0}
C {devices/lab_pin.sym} 230 -1000 1 0 {name=p29 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 280 -1000 1 0 {name=p30 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 80 -1000 1 0 {name=p31 sig_type=std_logic lab=WE}
C {devices/lab_pin.sym} 420 -1000 1 0 {name=p32 sig_type=std_logic lab=WEB}
C {devices/lab_pin.sym} 250 -1120 1 0 {name=p33 sig_type=std_logic lab=BL0}
C {devices/lab_pin.sym} 250 -880 3 0 {name=p34 sig_type=std_logic lab=DIN0}
C {TR-1umLIB/MN.sym} 640 -1000 0 0 {name=XM1
model=NMOS
w=5.1u
l=1u
m=1
spiceprefix=X
as=0
ad=0
ps=0
pd=0
nrd=0
nrs=0}
C {TR-1umLIB/MP.sym} 870 -1000 0 1 {name=XM2
model=PMOS
w=5.1u
l=1u
m=1
spiceprefix=X
as=0
ad=0
ps=0
pd=0
nrd=0
nrs=0}
C {devices/lab_pin.sym} 730 -1000 1 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 780 -1000 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 580 -1000 1 0 {name=p5 sig_type=std_logic lab=WE}
C {devices/lab_pin.sym} 920 -1000 1 0 {name=p6 sig_type=std_logic lab=WEB}
C {devices/lab_pin.sym} 750 -1120 1 0 {name=p7 sig_type=std_logic lab=BLB0}
C {devices/lab_pin.sym} 750 -880 3 0 {name=p8 sig_type=std_logic lab=DIN0B}
C {TR-1umLIB/MP.sym} 1380 -560 0 0 {name=XM3
model=PMOS
w=6.8u
l=1u
m=1
spiceprefix=X
as=0
ad=0
ps=0
pd=0
nrd=0
nrs=0}
C {devices/lab_pin.sym} 1260 -470 0 0 {name=p9 sig_type=std_logic lab=DIN1}
C {devices/lab_pin.sym} 1420 -650 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {TR-1umLIB/MN.sym} 1380 -400 0 0 {name=XM4
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
C {devices/lab_pin.sym} 1420 -310 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1520 -470 0 1 {name=p12 sig_type=std_logic lab=DIN1B}
C {TR-1umLIB/MN.sym} 1110 -1000 0 0 {name=XM5
model=NMOS
w=5.1u
l=1u
m=1
spiceprefix=X
as=0
ad=0
ps=0
pd=0
nrd=0
nrs=0}
C {TR-1umLIB/MP.sym} 1340 -1000 0 1 {name=XM6
model=PMOS
w=5.1u
l=1u
m=1
spiceprefix=X
as=0
ad=0
ps=0
pd=0
nrd=0
nrs=0}
C {devices/lab_pin.sym} 1200 -1000 1 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1250 -1000 1 0 {name=p14 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1050 -1000 1 0 {name=p15 sig_type=std_logic lab=WE}
C {devices/lab_pin.sym} 1390 -1000 1 0 {name=p16 sig_type=std_logic lab=WEB}
C {devices/lab_pin.sym} 1220 -1120 1 0 {name=p17 sig_type=std_logic lab=BL1}
C {devices/lab_pin.sym} 1220 -880 3 0 {name=p18 sig_type=std_logic lab=DIN1}
C {TR-1umLIB/MN.sym} 1560 -1000 0 0 {name=XM9
model=NMOS
w=5.1u
l=1u
m=1
spiceprefix=X
as=0
ad=0
ps=0
pd=0
nrd=0
nrs=0}
C {TR-1umLIB/MP.sym} 1790 -1000 0 1 {name=XM10
model=PMOS
w=5.1u
l=1u
m=1
spiceprefix=X
as=0
ad=0
ps=0
pd=0
nrd=0
nrs=0}
C {devices/lab_pin.sym} 1650 -1000 1 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1700 -1000 1 0 {name=p20 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1500 -1000 1 0 {name=p21 sig_type=std_logic lab=WE}
C {devices/lab_pin.sym} 1840 -1000 1 0 {name=p22 sig_type=std_logic lab=WEB}
C {devices/lab_pin.sym} 1670 -1120 1 0 {name=p23 sig_type=std_logic lab=BLB1}
C {devices/lab_pin.sym} 1670 -880 3 0 {name=p24 sig_type=std_logic lab=DIN1B}
C {devices/ipin.sym} 260 -1640 0 0 {name=p25 lab=DIN0}
C {devices/lab_pin.sym} 320 -1640 0 1 {name=p26 sig_type=std_logic lab=DIN0}
C {devices/ipin.sym} 260 -1600 0 0 {name=p27 lab=DIN1}
C {devices/lab_pin.sym} 320 -1600 0 1 {name=p28 sig_type=std_logic lab=DIN1}
C {devices/ipin.sym} 260 -1560 0 0 {name=p35 lab=WE}
C {devices/lab_pin.sym} 320 -1560 0 1 {name=p36 sig_type=std_logic lab=WE}
C {devices/ipin.sym} 260 -1520 0 0 {name=p37 lab=WEB}
C {devices/lab_pin.sym} 320 -1520 0 1 {name=p38 sig_type=std_logic lab=WEB}
C {devices/lab_pin.sym} 590 -1640 0 1 {name=p40 sig_type=std_logic lab=BL0}
C {devices/iopin.sym} 530 -1640 0 1 {name=p39 lab=BL0}
C {devices/lab_pin.sym} 590 -1600 0 1 {name=p41 sig_type=std_logic lab=BLB0}
C {devices/iopin.sym} 530 -1600 0 1 {name=p42 lab=BLB0}
C {devices/lab_pin.sym} 590 -1560 0 1 {name=p43 sig_type=std_logic lab=BL1}
C {devices/iopin.sym} 530 -1560 0 1 {name=p44 lab=BL1}
C {devices/lab_pin.sym} 590 -1520 0 1 {name=p45 sig_type=std_logic lab=BLB1}
C {devices/iopin.sym} 530 -1520 0 1 {name=p46 lab=BLB1}
C {devices/lab_pin.sym} 820 -1640 0 1 {name=p47 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} 760 -1640 0 1 {name=p48 lab=VDD}
C {devices/lab_pin.sym} 820 -1600 0 1 {name=p49 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} 760 -1600 0 1 {name=p50 lab=VSS}
