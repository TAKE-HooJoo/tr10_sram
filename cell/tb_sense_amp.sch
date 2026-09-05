v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 350 -60 420 -60 {lab=0}
N 420 -60 420 -30 {lab=0}
N 120 -230 120 -200 {lab=0}
N 120 -340 120 -290 {lab=VDD}
N 270 -230 270 -200 {lab=0}
N 270 -340 270 -290 {lab=SAE}
N 490 -230 490 -200 {lab=0}
N 490 -340 490 -290 {lab=BL}
N 590 -230 590 -200 {lab=0}
N 590 -340 590 -290 {lab=BLB}
N 30 -120 50 -120 {lab=SAE}
N 350 -120 420 -120 {lab=VDD}
N 350 -100 420 -100 {lab=BLB}
N 350 -80 420 -80 {lab=#net1}
C {sense_amp.sym} 200 -90 0 0 {name=x1}
C {devices/gnd.sym} 420 -30 0 0 {name=l1 lab=0}
C {devices/vsource.sym} 120 -260 0 0 {name=VVDD value=5 savecurrent=false}
C {devices/gnd.sym} 120 -200 0 0 {name=l2 lab=0}
C {devices/lab_pin.sym} 120 -340 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 270 -260 0 0 {name=VSAE value="PWL(0 0 4.9n 0 5n 5 10n 5)" savecurrent=false}
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
C {devices/code_shown.sym} 540 -120 0 0 {name=SPICE only_toplevel=false value="
.ic v(BL)=5.0 v(BLB)=4.8
.tran 1p 10n uic
"}
C {devices/code.sym} 660 -310 0 0 {name=TR-1um_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/ip62_models"
spice_ignore=false}
C {devices/lab_pin.sym} 30 -120 0 0 {name=p5 sig_type=std_logic lab=SAE}
C {devices/lab_pin.sym} 420 -120 0 1 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 420 -100 0 1 {name=p7 sig_type=std_logic lab=BLB}
C {devices/lab_pin.sym} 420 -80 0 1 {name=p8 sig_type=std_logic lab=BL}
