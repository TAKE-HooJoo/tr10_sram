v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 630 -720 630 -580 {lab=VDD}
N 450 -720 450 -580 {lab=VDD}
N 570 -550 590 -550 {lab=Q}
N 570 -550 570 -310 {lab=Q}
N 570 -310 590 -310 {lab=Q}
N 630 -520 630 -340 {lab=QB}
N 450 -520 450 -340 {lab=Q}
N 490 -550 510 -550 {lab=QB}
N 510 -550 510 -310 {lab=QB}
N 490 -310 510 -310 {lab=QB}
N 310 -430 450 -430 {lab=Q}
N 450 -470 570 -470 {lab=Q}
N 630 -370 760 -370 {lab=QB}
N 510 -410 630 -410 {lab=QB}
N 800 -640 800 -410 {lab=WL}
N 280 -640 280 -470 {lab=WL}
N 450 -280 450 -180 {lab=VSS}
N 630 -280 630 -180 {lab=VSS}
N 830 -370 950 -370 {lab=BLB}
N 150 -430 250 -430 {lab=BL}
N 70 -640 1030 -640 {lab=WL}
N 950 -770 950 -50 {lab=BLB}
N 150 -770 150 -50 {lab=BL}
N 280 -430 280 -300 {lab=VSS}
N 800 -370 800 -300 {lab=VSS}
N 630 -310 690 -310 {lab=VSS}
N 390 -310 450 -310 {lab=VSS}
N 630 -550 690 -550 {lab=VDD}
N 390 -550 450 -550 {lab=#net1}
C {TR-1umLIB/MP.sym} 490 -550 0 1 {name=XM1
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
C {TR-1umLIB/MP.sym} 590 -550 0 0 {name=XM2
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
C {TR-1umLIB/MN.sym} 590 -310 0 0 {name=XM4
model=NMOS
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
C {TR-1umLIB/MN.sym} 490 -310 0 1 {name=XM3
model=NMOS
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
C {TR-1umLIB/MN.sym} 280 -470 1 0 {name=XM5
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
C {TR-1umLIB/MN.sym} 800 -410 3 1 {name=XM6
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
C {devices/iopin.sym} 630 -720 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 450 -720 0 1 {name=p2 lab=VDD}
C {devices/iopin.sym} 450 -180 0 1 {name=p3 lab=VSS}
C {devices/iopin.sym} 630 -720 0 0 {name=p4 lab=VDD}
C {devices/iopin.sym} 630 -720 0 0 {name=p5 lab=VDD}
C {devices/iopin.sym} 630 -180 0 0 {name=p6 lab=VSS}
C {devices/iopin.sym} 950 -50 0 0 {name=p9 lab=BLB}
C {devices/iopin.sym} 150 -50 0 1 {name=p10 lab=BL}
C {devices/iopin.sym} 950 -770 0 0 {name=p11 lab=BLB}
C {devices/iopin.sym} 150 -770 0 1 {name=p12 lab=BL}
C {devices/ipin.sym} 70 -640 0 0 {name=p7 lab=WL}
C {devices/ipin.sym} 1030 -640 0 1 {name=p8 lab=WL}
C {devices/lab_pin.sym} 450 -470 0 0 {name=p13 sig_type=std_logic lab=Q}
C {devices/lab_pin.sym} 630 -410 0 1 {name=p14 sig_type=std_logic lab=QB}
C {devices/iopin.sym} 280 -300 0 1 {name=p15 lab=VSS}
C {devices/iopin.sym} 800 -300 0 0 {name=p16 lab=VSS}
C {devices/iopin.sym} 690 -310 0 0 {name=p17 lab=VSS}
C {devices/iopin.sym} 390 -310 0 1 {name=p18 lab=VSS}
C {devices/iopin.sym} 690 -550 0 0 {name=p19 lab=VDD}
C {devices/iopin.sym} 390 -550 0 1 {name=p20 lab=VDD}
