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
N 490 -550 510 -550 {lab=N1}
N 510 -550 510 -310 {lab=N1}
N 490 -310 510 -310 {lab=N1}
N 310 -430 450 -430 {lab=Q}
N 450 -470 570 -470 {lab=Q}
N 800 -640 800 -410 {lab=WL}
N 280 -640 280 -470 {lab=WL}
N 450 -280 450 -180 {lab=0}
N 630 -280 630 -180 {lab=0}
N 830 -370 950 -370 {lab=BLB}
N 150 -430 250 -430 {lab=BL}
N 70 -640 1030 -640 {lab=WL}
N 950 -770 950 -50 {lab=BLB}
N 150 -770 150 -50 {lab=BL}
N 630 -310 690 -310 {lab=0}
N 390 -310 450 -310 {lab=0}
N 630 -550 690 -550 {lab=VDD}
N 390 -550 450 -550 {lab=VDD}
N 630 -370 770 -370 {lab=QB}
N 690 -600 690 -550 {lab=VDD}
N 630 -600 690 -600 {lab=VDD}
N 390 -600 390 -550 {lab=VDD}
N 390 -600 450 -600 {lab=VDD}
N 690 -310 690 -240 {lab=0}
N 630 -240 690 -240 {lab=0}
N 390 -310 390 -240 {lab=0}
N 390 -240 450 -240 {lab=0}
N 800 -370 800 -180 {lab=0}
N 280 -180 800 -180 {lab=0}
N 280 -430 280 -180 {lab=0}
N 450 -720 630 -720 {lab=VDD}
N 540 -770 540 -720 {lab=VDD}
N 540 -180 540 -110 {lab=0}
N 510 -410 530 -410 {lab=N1}
N 140 -1040 140 -1010 {lab=VDD}
N 140 -950 140 -900 {lab=0}
N 260 -1040 260 -1010 {lab=WL}
N 260 -950 260 -900 {lab=0}
N 370 -1040 370 -1010 {lab=BL}
N 370 -950 370 -900 {lab=0}
N 460 -1040 460 -1010 {lab=BLB}
N 460 -950 460 -900 {lab=0}
N 590 -1030 590 -1000 {lab=N1}
N 590 -940 590 -890 {lab=0}
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
C {devices/lab_pin.sym} 450 -470 0 0 {name=p6 sig_type=std_logic lab=Q}
C {devices/lab_pin.sym} 630 -410 0 1 {name=p7 sig_type=std_logic lab=QB}
C {devices/lab_pin.sym} 530 -410 0 1 {name=p8 sig_type=std_logic lab=N1}
C {devices/vsource.sym} 140 -980 0 0 {name=VVDD value=5 savecurrent=false}
C {devices/lab_pin.sym} 140 -1040 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 140 -900 0 0 {name=l2 lab=0}
C {devices/vsource.sym} 260 -980 0 0 {name=VWL1 value=5 savecurrent=false}
C {devices/lab_pin.sym} 260 -1040 0 0 {name=VWL sig_type=std_logic lab=WL
value=0}
C {devices/gnd.sym} 260 -900 0 0 {name=VVIN2 lab=0
value=0}
C {devices/lab_pin.sym} 370 -1040 0 0 {name=VBL sig_type=std_logic lab=BL
value=0}
C {devices/gnd.sym} 370 -900 0 0 {name=VVIN3 lab=0
value=0}
C {devices/vsource.sym} 460 -980 0 0 {name=VBLB value=5 savecurrent=false}
C {devices/lab_pin.sym} 460 -1040 0 0 {name=VBLB1 sig_type=std_logic lab=BLB
value=0}
C {devices/gnd.sym} 460 -900 0 0 {name=VBLB2 lab=0
value=0}
C {devices/vsource.sym} 370 -980 0 0 {name=VBL1 value=5 savecurrent=false}
C {devices/code.sym} 1100 -660 0 0 {name=TR-1um_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/ip62_models"
spice_ignore=false}
C {devices/code_shown.sym} 1120 -450 0 0 {name=SPICE only_toplevel=false value="

.control
save all

dc VN1 0 5 0.005

plot v(n1) v(q) v(qb)

wrdata read_snm_vtc.dat v(n1) v(q) v(qb)

.endc
"}
C {devices/vsource.sym} 590 -970 0 0 {name=VN1 value=0 savecurrent=false}
C {devices/lab_pin.sym} 590 -1030 0 0 {name=VN2 sig_type=std_logic lab=N1}
C {devices/gnd.sym} 590 -890 0 0 {name=VN3 lab=0}
C {devices/gnd.sym} 540 -110 0 0 {name=l1 lab=0}
