v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 630 -720 630 -580 {lab=VDD}
N 450 -720 450 -580 {lab=VDD}
N 570 -550 590 -550 {lab=#net1}
N 570 -550 570 -310 {lab=#net1}
N 570 -310 590 -310 {lab=#net1}
N 630 -520 630 -340 {lab=QB}
N 450 -520 450 -340 {lab=#net1}
N 490 -550 510 -550 {lab=QB}
N 510 -550 510 -310 {lab=QB}
N 490 -310 510 -310 {lab=QB}
N 310 -430 450 -430 {lab=#net1}
N 450 -470 570 -470 {lab=#net1}
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
N 630 -310 690 -310 {lab=VSS}
N 390 -310 450 -310 {lab=VSS}
N 630 -550 690 -550 {lab=VDD}
N 390 -550 450 -550 {lab=VDD}
N 630 -370 770 -370 {lab=QB}
N 690 -600 690 -550 {lab=VDD}
N 630 -600 690 -600 {lab=VDD}
N 390 -600 390 -550 {lab=VDD}
N 390 -600 450 -600 {lab=VDD}
N 690 -310 690 -240 {lab=VSS}
N 630 -240 690 -240 {lab=VSS}
N 390 -310 390 -240 {lab=VSS}
N 390 -240 450 -240 {lab=VSS}
N 800 -370 800 -180 {lab=VSS}
N 280 -180 800 -180 {lab=VSS}
N 280 -430 280 -180 {lab=VSS}
N 450 -720 630 -720 {lab=VDD}
N 540 -770 540 -720 {lab=VDD}
N 540 -180 540 -110 {lab=VSS}
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
C {TR-1umLIB/MN.sym} 280 -470 3 1 {name=XM5
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
C {TR-1umLIB/MN.sym} 800 -410 1 0 {name=XM6
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
C {devices/iopin.sym} 150 -770 0 1 {name=p1 lab=BL}
C {devices/iopin.sym} 950 -770 0 0 {name=p2 lab=BLB}
C {devices/ipin.sym} 70 -640 0 0 {name=p3 lab=WL}
C {devices/iopin.sym} 540 -770 0 1 {name=p4 lab=VDD}
C {devices/iopin.sym} 540 -110 0 1 {name=p5 lab=VSS}
