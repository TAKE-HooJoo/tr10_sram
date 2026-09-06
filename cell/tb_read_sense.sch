v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 80 -720 80 -690 {lab=VDD}
N 80 -630 80 -580 {lab=0}
N 300 -720 300 -690 {lab=WL}
N 300 -630 300 -580 {lab=0}
N 60 -420 90 -420 {lab=WL}
N 80 -290 80 -260 {lab=WBL}
N 80 -200 80 -150 {lab=0}
N 380 -290 380 -260 {lab=WBLB}
N 380 -200 380 -150 {lab=0}
N 390 -420 420 -420 {lab=BLB}
N 390 -400 420 -400 {lab=BL}
N 390 -380 420 -380 {lab=VDD}
N 390 -360 420 -360 {lab=VSS}
N 200 -720 200 -690 {lab=VSS}
N 200 -630 200 -580 {lab=0}
N 1010 -650 1010 -610 {lab=BL}
N 1010 -650 1160 -650 {lab=BL}
N 1160 -650 1160 -610 {lab=BL}
N 1010 -550 1010 -510 {lab=WBL}
N 1010 -510 1160 -510 {lab=WBL}
N 1160 -550 1160 -510 {lab=WBL}
N 1080 -700 1080 -650 {lab=BL}
N 1080 -510 1080 -460 {lab=WBL}
N 1010 -580 1060 -580 {lab=VSS}
N 1110 -580 1160 -580 {lab=VDD}
N 1420 -720 1420 -690 {lab=WE}
N 1420 -630 1420 -580 {lab=0}
N 1420 -440 1420 -410 {lab=WEB}
N 1420 -350 1420 -300 {lab=0}
N 1200 -580 1250 -580 {lab=WEB}
N 910 -580 970 -580 {lab=WE}
N 1010 -290 1010 -250 {lab=BLB}
N 1010 -290 1160 -290 {lab=BLB}
N 1160 -290 1160 -250 {lab=BLB}
N 1010 -190 1010 -150 {lab=WBLB}
N 1010 -150 1160 -150 {lab=WBLB}
N 1160 -190 1160 -150 {lab=WBLB}
N 1080 -340 1080 -290 {lab=BLB}
N 1080 -150 1080 -100 {lab=WBLB}
N 1010 -220 1060 -220 {lab=VSS}
N 1110 -220 1160 -220 {lab=VDD}
N 1200 -220 1250 -220 {lab=WEB}
N 910 -220 970 -220 {lab=WE}
N 200 -1050 200 -1000 {lab=VDD}
N 200 -1050 360 -1050 {lab=VDD}
N 360 -1050 360 -1000 {lab=VDD}
N 280 -1120 280 -1050 {lab=VDD}
N 200 -940 200 -860 {lab=BL}
N 360 -940 360 -860 {lab=BLB}
N 240 -970 320 -970 {lab=PCB}
N 280 -970 280 -860 {lab=PCB}
N 360 -970 420 -970 {lab=VDD}
N 420 -1020 420 -970 {lab=VDD}
N 360 -1020 420 -1020 {lab=VDD}
N 140 -970 200 -970 {lab=VDD}
N 140 -1020 140 -970 {lab=VDD}
N 140 -1020 200 -1020 {lab=VDD}
N 550 -1040 550 -1010 {lab=PCB}
N 550 -950 550 -900 {lab=0}
N 940 -1040 940 -1010 {lab=BL}
N 940 -950 940 -920 {lab=0}
N 1070 -1040 1070 -1010 {lab=BLB}
N 1070 -950 1070 -920 {lab=0}
N 340 -1310 420 -1310 {lab=BLB}
N 210 -1310 280 -1310 {lab=BL}
N 310 -1270 310 -1240 {lab=EQEN}
N 310 -1380 310 -1310 {lab=VSS}
N 530 -1370 530 -1340 {lab=EQEN}
N 530 -1280 530 -1230 {lab=0}
N 1450 -1260 1490 -1260 {lab=0}
N 1490 -1260 1490 -1220 {lab=0}
N 1450 -1280 1490 -1280 {lab=BL}
N 1450 -1300 1490 -1300 {lab=BLB}
N 1450 -1320 1490 -1320 {lab=VDD}
N 1110 -1320 1150 -1320 {lab=SAE}
N 910 -1370 910 -1340 {lab=SAE}
N 910 -1280 910 -1230 {lab=0}
C {devices/vsource.sym} 80 -660 0 0 {name=VVDD value=5 savecurrent=false}
C {devices/lab_pin.sym} 80 -720 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 80 -580 0 0 {name=l1 lab=0}
C {devices/vsource.sym} 300 -660 0 0 {name=VWL value="PWL(0 0 4.9n 0 5n 5 14.9n 5 15n 0 24.9n 0 25n 5 34.9n 5 35n 0 70n 0)" savecurrent=false}
C {devices/lab_pin.sym} 300 -720 0 0 {name=p2 sig_type=std_logic lab=WL}
C {devices/gnd.sym} 300 -580 0 0 {name=l2 lab=0}
C {devices/lab_pin.sym} 60 -420 0 0 {name=p3 sig_type=std_logic lab=WL}
C {devices/vsource.sym} 80 -230 0 0 {name=VBL value=5 savecurrent=false}
C {devices/lab_pin.sym} 80 -290 0 0 {name=p4 sig_type=std_logic lab=WBL}
C {devices/gnd.sym} 80 -150 0 0 {name=l3 lab=0}
C {devices/vsource.sym} 380 -230 0 0 {name=VBLB value=0 savecurrent=false}
C {devices/lab_pin.sym} 380 -290 0 0 {name=p5 sig_type=std_logic lab=WBLB}
C {devices/gnd.sym} 380 -150 0 0 {name=l4 lab=0}
C {devices/lab_pin.sym} 420 -420 0 1 {name=p6 sig_type=std_logic lab=BLB}
C {devices/lab_pin.sym} 420 -400 0 1 {name=p7 sig_type=std_logic lab=BL}
C {devices/lab_pin.sym} 420 -380 0 1 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 420 -360 0 1 {name=p9 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 200 -660 0 0 {name=VVSS value=0 savecurrent=false}
C {devices/lab_pin.sym} 200 -720 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 200 -580 0 0 {name=l5 lab=0}
C {sram6t_tr10.sym} 240 -390 0 0 {name=x1}
C {devices/code.sym} 580 -570 0 0 {name=TR-1um_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/ip62_models"
spice_ignore=false}
C {devices/code_shown.sym} 600 -380 0 0 {name=SPICE only_toplevel=false value="
.tran 10p 70n

.meas tran bl_2504 FIND v(bl) AT=25.04n
.meas tran blb_2504 FIND v(blb) AT=25.04n
"}
C {TR-1umLIB/MN.sym} 970 -580 0 0 {name=XM1
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
C {TR-1umLIB/MP.sym} 1200 -580 0 1 {name=XM2
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
C {devices/lab_pin.sym} 1060 -580 1 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1110 -580 1 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 1420 -660 0 0 {name=VWE value="PWL(0 0 4.9n 0 5n 5 14.9n 5 15n 0 45n 0)" savecurrent=false}
C {devices/lab_pin.sym} 1420 -720 0 0 {name=p13 sig_type=std_logic lab=WE}
C {devices/gnd.sym} 1420 -580 0 0 {name=l6 lab=0}
C {devices/vsource.sym} 1420 -380 0 0 {name=VWEB value="PWL(0 5 4.9n 5 5n 0 14.9n 0 15n 5 45n 5)" savecurrent=false}
C {devices/lab_pin.sym} 1420 -440 0 0 {name=p14 sig_type=std_logic lab=WEB}
C {devices/gnd.sym} 1420 -300 0 0 {name=l7 lab=0}
C {devices/lab_pin.sym} 910 -580 1 0 {name=p15 sig_type=std_logic lab=WE}
C {devices/lab_pin.sym} 1250 -580 1 0 {name=p16 sig_type=std_logic lab=WEB}
C {devices/lab_pin.sym} 1080 -700 1 0 {name=p17 sig_type=std_logic lab=BL}
C {devices/lab_pin.sym} 1080 -460 3 0 {name=p18 sig_type=std_logic lab=WBL}
C {TR-1umLIB/MN.sym} 970 -220 0 0 {name=XM3
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
C {TR-1umLIB/MP.sym} 1200 -220 0 1 {name=XM4
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
C {devices/lab_pin.sym} 1060 -220 1 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1110 -220 1 0 {name=p20 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 910 -220 1 0 {name=p21 sig_type=std_logic lab=WE}
C {devices/lab_pin.sym} 1250 -220 1 0 {name=p22 sig_type=std_logic lab=WEB}
C {devices/lab_pin.sym} 1080 -340 1 0 {name=p23 sig_type=std_logic lab=BLB}
C {devices/lab_pin.sym} 1080 -100 3 0 {name=p24 sig_type=std_logic lab=WBLB}
C {TR-1umLIB/MP.sym} 240 -970 0 1 {name=XM5
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
C {TR-1umLIB/MP.sym} 320 -970 0 0 {name=XM6
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
C {devices/lab_pin.sym} 200 -860 0 0 {name=p25 sig_type=std_logic lab=BL}
C {devices/lab_pin.sym} 360 -860 0 1 {name=p26 sig_type=std_logic lab=BLB}
C {devices/lab_pin.sym} 280 -860 0 1 {name=p27 sig_type=std_logic lab=PCB}
C {devices/lab_pin.sym} 280 -1120 0 1 {name=p28 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 550 -980 0 0 {name=VPCB value="PWL(0 5 14.9n 5 15n 0 19.9n 0 20n 5 70n 5)" savecurrent=false}
C {devices/lab_pin.sym} 550 -1040 0 0 {name=p29 sig_type=std_logic lab=PCB}
C {devices/gnd.sym} 550 -900 0 0 {name=l8 lab=0}
C {devices/capa.sym} 940 -980 0 0 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 940 -920 0 0 {name=l9 lab=0}
C {devices/lab_pin.sym} 940 -1040 0 0 {name=CBL sig_type=std_logic lab=BL}
C {devices/capa.sym} 1070 -980 0 0 {name=C2
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1070 -920 0 0 {name=l10 lab=0}
C {devices/lab_pin.sym} 1070 -1040 0 0 {name=CBLB sig_type=std_logic lab=BLB}
C {TR-1umLIB/MN.sym} 310 -1270 3 0 {name=XM7
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
C {devices/lab_pin.sym} 310 -1380 0 1 {name=p30 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 420 -1310 0 1 {name=p31 sig_type=std_logic lab=BLB}
C {devices/lab_pin.sym} 210 -1310 0 0 {name=p32 sig_type=std_logic lab=BL}
C {devices/lab_pin.sym} 310 -1240 0 1 {name=p33 sig_type=std_logic lab=EQEN}
C {devices/vsource.sym} 530 -1310 0 0 {name=VEQ value="PWL(0 0 14.9n 0 15n 5 19.9n 5 20n 0 70n 0)" savecurrent=false}
C {devices/lab_pin.sym} 530 -1370 0 0 {name=p34 sig_type=std_logic lab=EQEN}
C {devices/gnd.sym} 530 -1230 0 0 {name=l11 lab=0}
C {sense_amp.sym} 1300 -1290 0 0 {name=xSA}
C {devices/gnd.sym} 1490 -1220 0 0 {name=l12 lab=0}
C {devices/lab_pin.sym} 1110 -1320 0 0 {name=p35 sig_type=std_logic lab=SAE}
C {devices/lab_pin.sym} 1490 -1320 0 1 {name=p36 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1490 -1300 0 1 {name=p37 sig_type=std_logic lab=BLB}
C {devices/lab_pin.sym} 1490 -1280 0 1 {name=p38 sig_type=std_logic lab=BL}
C {devices/vsource.sym} 910 -1310 0 0 {name=VSAE value="PWL(0 0 25.04n 0 25.05n 5 70n 5)" savecurrent=false}
C {devices/lab_pin.sym} 910 -1370 0 0 {name=p39 sig_type=std_logic lab=SAE}
C {devices/gnd.sym} 910 -1230 0 0 {name=l13 lab=0}
