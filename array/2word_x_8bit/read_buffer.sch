v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 90 -240 160 -240 {lab=VDD}
N 90 -210 160 -210 {lab=VSS}
N 90 -180 160 -180 {lab=BLB0}
N 90 -150 160 -150 {lab=BLB1}
N 90 -110 160 -110 {lab=DOUT0}
N 90 -80 160 -80 {lab=DOUT1}
N 390 -600 390 -500 {lab=DOUT0}
N 310 -630 350 -630 {lab=BLB0}
N 310 -630 310 -470 {lab=BLB0}
N 310 -470 350 -470 {lab=BLB0}
N 390 -540 490 -540 {lab=DOUT0}
N 230 -540 310 -540 {lab=BLB0}
N 390 -720 390 -660 {lab=VDD}
N 390 -440 390 -380 {lab=VSS}
N 390 -630 450 -630 {lab=VDD}
N 450 -680 450 -630 {lab=VDD}
N 390 -680 450 -680 {lab=VDD}
N 390 -470 450 -470 {lab=VSS}
N 450 -470 450 -420 {lab=VSS}
N 390 -420 450 -420 {lab=VSS}
N 810 -600 810 -500 {lab=DOUT1}
N 730 -630 770 -630 {lab=BLB1}
N 730 -630 730 -470 {lab=BLB1}
N 730 -470 770 -470 {lab=BLB1}
N 810 -540 910 -540 {lab=DOUT1}
N 650 -540 730 -540 {lab=BLB1}
N 810 -720 810 -660 {lab=VDD}
N 810 -440 810 -380 {lab=VSS}
N 810 -630 870 -630 {lab=VDD}
N 870 -680 870 -630 {lab=VDD}
N 810 -680 870 -680 {lab=VDD}
N 810 -470 870 -470 {lab=VSS}
N 870 -470 870 -420 {lab=VSS}
N 810 -420 870 -420 {lab=VSS}
C {devices/iopin.sym} 90 -240 0 1 {name=p1 lab=VDD}
C {devices/lab_pin.sym} 160 -240 0 1 {name=p2 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} 90 -210 0 1 {name=p3 lab=VSS}
C {devices/lab_pin.sym} 160 -210 0 1 {name=p4 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 90 -180 0 0 {name=p5 lab=BLB0}
C {devices/lab_pin.sym} 160 -180 0 1 {name=p6 sig_type=std_logic lab=BLB0}
C {devices/ipin.sym} 90 -150 0 0 {name=p7 lab=BLB1}
C {devices/lab_pin.sym} 160 -150 0 1 {name=p8 sig_type=std_logic lab=BLB1}
C {devices/opin.sym} 160 -110 0 0 {name=p9 lab=DOUT0}
C {devices/lab_pin.sym} 90 -110 0 0 {name=p10 sig_type=std_logic lab=DOUT0}
C {devices/opin.sym} 160 -80 0 0 {name=p11 lab=DOUT1}
C {devices/lab_pin.sym} 90 -80 0 0 {name=p12 sig_type=std_logic lab=DOUT1}
C {TR-1umLIB/MP.sym} 350 -630 0 0 {name=XM15
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
C {devices/lab_pin.sym} 230 -540 0 0 {name=p59 sig_type=std_logic lab=BLB0}
C {devices/lab_pin.sym} 390 -720 0 0 {name=p60 sig_type=std_logic lab=VDD}
C {TR-1umLIB/MN.sym} 350 -470 0 0 {name=XM16
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
C {devices/lab_pin.sym} 390 -380 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 490 -540 0 1 {name=p14 sig_type=std_logic lab=DOUT0}
C {TR-1umLIB/MP.sym} 770 -630 0 0 {name=XM1
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
C {devices/lab_pin.sym} 650 -540 0 0 {name=p15 sig_type=std_logic lab=BLB1}
C {devices/lab_pin.sym} 810 -720 0 0 {name=p16 sig_type=std_logic lab=VDD}
C {TR-1umLIB/MN.sym} 770 -470 0 0 {name=XM2
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
C {devices/lab_pin.sym} 810 -380 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 910 -540 0 1 {name=p18 sig_type=std_logic lab=DOUT1}
