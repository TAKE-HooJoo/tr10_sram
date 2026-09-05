v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 410 -60 480 -60 {lab=0}
N 480 -60 480 -30 {lab=0}
N 120 -230 120 -200 {lab=0}
N 120 -340 120 -290 {lab=VDD}
N 270 -230 270 -200 {lab=0}
N 270 -340 270 -290 {lab=SAE}
N 490 -230 490 -200 {lab=0}
N 490 -340 490 -290 {lab=BL}
N 590 -230 590 -200 {lab=0}
N 590 -340 590 -290 {lab=BLB}
N 90 -120 110 -120 {lab=SAE}
N 410 -120 480 -120 {lab=VDD}
N 410 -100 480 -100 {lab=BLB}
N 410 -80 480 -80 {lab=BL}
N 120 -460 120 -430 {lab=0}
N 120 -570 120 -520 {lab=VBL_SRC}
N 300 -460 300 -430 {lab=0}
N 300 -570 300 -520 {lab=VBLB_SRC}
N 630 -710 630 -670 {lab=BL}
N 630 -710 780 -710 {lab=BL}
N 780 -710 780 -670 {lab=BL}
N 630 -610 630 -570 {lab=VBL_SRC}
N 630 -570 780 -570 {lab=VBL_SRC}
N 780 -610 780 -570 {lab=VBL_SRC}
N 700 -760 700 -710 {lab=BL}
N 700 -570 700 -520 {lab=VBL_SRC}
N 630 -640 680 -640 {lab=VSS}
N 730 -640 780 -640 {lab=VDD}
N 820 -640 870 -640 {lab=INITB}
N 530 -640 590 -640 {lab=INIT}
N 1030 -710 1030 -670 {lab=BLB}
N 1030 -710 1180 -710 {lab=BLB}
N 1180 -710 1180 -670 {lab=BLB}
N 1030 -610 1030 -570 {lab=VBLB_SRC}
N 1030 -570 1180 -570 {lab=VBLB_SRC}
N 1180 -610 1180 -570 {lab=VBLB_SRC}
N 1100 -760 1100 -710 {lab=BLB}
N 1100 -570 1100 -520 {lab=VBLB_SRC}
N 1030 -640 1080 -640 {lab=VSS}
N 1130 -640 1180 -640 {lab=VDD}
N 1220 -640 1270 -640 {lab=INITB}
N 930 -640 990 -640 {lab=INIT}
N 70 -650 70 -620 {lab=0}
N 70 -760 70 -710 {lab=INIT}
N 330 -650 330 -620 {lab=0}
N 330 -760 330 -710 {lab=INITB}
C {sense_amp.sym} 260 -90 0 0 {name=x1}
C {devices/gnd.sym} 480 -30 0 0 {name=l1 lab=0}
C {devices/vsource.sym} 120 -260 0 0 {name=VVDD value=5 savecurrent=false}
C {devices/gnd.sym} 120 -200 0 0 {name=l2 lab=0}
C {devices/lab_pin.sym} 120 -340 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 270 -260 0 0 {name=VSAE value="PWL(0 0 5.19n 0 5.2n 5 10n 5)" savecurrent=false}
C {devices/gnd.sym} 270 -200 0 0 {name=l3 lab=0}
C {devices/lab_pin.sym} 270 -340 0 0 {name=p2 sig_type=std_logic lab=SAE}
C {devices/capa.sym} 490 -260 0 0 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 490 -200 0 0 {name=l4 lab=0}
C {devices/lab_pin.sym} 490 -340 0 0 {name=p3 sig_type=std_logic lab=BL}
C {devices/capa.sym} 590 -260 0 0 {name=C2
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 590 -200 0 0 {name=l5 lab=0}
C {devices/lab_pin.sym} 590 -340 0 0 {name=p4 sig_type=std_logic lab=BLB}
C {devices/code_shown.sym} 600 -120 0 0 {name=SPICE only_toplevel=false value="
.tran 1p 20n
.meas tran t_sae WHEN v(sae)=2.5 RISE=1
.meas tran t_b500 WHEN v(blb)=0.5 FALL=1
.meas tran t_sense PARAM='t_b500-t_sae'
"}
C {devices/code.sym} 660 -310 0 0 {name=TR-1um_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/ip62_models"
spice_ignore=false}
C {devices/lab_pin.sym} 90 -120 0 0 {name=p5 sig_type=std_logic lab=SAE}
C {devices/lab_pin.sym} 480 -120 0 1 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 480 -100 0 1 {name=p7 sig_type=std_logic lab=BLB}
C {devices/lab_pin.sym} 480 -80 0 1 {name=p8 sig_type=std_logic lab=BL}
C {devices/vsource.sym} 120 -490 0 0 {name=VVBL_SRC value=5 savecurrent=false}
C {devices/gnd.sym} 120 -430 0 0 {name=l6 lab=0}
C {devices/lab_pin.sym} 120 -570 0 0 {name=p9 sig_type=std_logic lab=VBL_SRC}
C {devices/vsource.sym} 300 -490 0 0 {name=VVBLB_SRC value=4.8 savecurrent=false}
C {devices/gnd.sym} 300 -430 0 0 {name=l7 lab=0}
C {devices/lab_pin.sym} 300 -570 0 0 {name=p10 sig_type=std_logic lab=VBLB_SRC}
C {TR-1umLIB/MN.sym} 590 -640 0 0 {name=XM1
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
C {TR-1umLIB/MP.sym} 820 -640 0 1 {name=XM2
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
C {devices/lab_pin.sym} 680 -640 1 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 730 -640 1 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 530 -640 1 0 {name=p15 sig_type=std_logic lab=INIT}
C {devices/lab_pin.sym} 870 -640 1 0 {name=p16 sig_type=std_logic lab=INITB}
C {devices/lab_pin.sym} 700 -760 1 0 {name=p17 sig_type=std_logic lab=BL}
C {devices/lab_pin.sym} 700 -520 3 0 {name=p18 sig_type=std_logic lab=VBL_SRC}
C {TR-1umLIB/MN.sym} 990 -640 0 0 {name=XM3
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
C {TR-1umLIB/MP.sym} 1220 -640 0 1 {name=XM4
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
C {devices/lab_pin.sym} 1080 -640 1 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1130 -640 1 0 {name=p20 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 930 -640 1 0 {name=p21 sig_type=std_logic lab=INIT}
C {devices/lab_pin.sym} 1270 -640 1 0 {name=p22 sig_type=std_logic lab=INITB}
C {devices/lab_pin.sym} 1100 -760 1 0 {name=p23 sig_type=std_logic lab=BLB}
C {devices/lab_pin.sym} 1100 -520 3 0 {name=p24 sig_type=std_logic lab=VBLB_SRC}
C {devices/vsource.sym} 70 -680 0 0 {name=VVINT value="PWL(0 5 4.9n 5 5n 0 20n 0)" savecurrent=false}
C {devices/gnd.sym} 70 -620 0 0 {name=l8 lab=0}
C {devices/lab_pin.sym} 70 -760 0 0 {name=p13 sig_type=std_logic lab=INIT}
C {devices/vsource.sym} 330 -680 0 0 {name=VINITB value="PWL(0 0 4.9n 0 5n 5 20n 5)" savecurrent=false}
C {devices/gnd.sym} 330 -620 0 0 {name=l9 lab=0}
C {devices/lab_pin.sym} 330 -760 0 0 {name=p14 sig_type=std_logic lab=INITB}
