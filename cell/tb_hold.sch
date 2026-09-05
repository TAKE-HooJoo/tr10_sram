v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 80 -550 80 -520 {lab=VDD}
N 80 -460 80 -410 {lab=0}
N 300 -550 300 -520 {lab=WL}
N 300 -460 300 -410 {lab=0}
N 60 -310 90 -310 {lab=WL}
N 80 -180 80 -150 {lab=BL}
N 80 -90 80 -40 {lab=0}
N 380 -180 380 -150 {lab=BLB}
N 380 -90 380 -40 {lab=0}
N 390 -310 420 -310 {lab=BLB}
N 390 -290 420 -290 {lab=BL}
N 390 -270 420 -270 {lab=VDD}
N 390 -250 420 -250 {lab=VSS}
N 200 -550 200 -520 {lab=VSS}
N 200 -460 200 -410 {lab=0}
C {devices/vsource.sym} 80 -490 0 0 {name=VVDD value=5 savecurrent=false}
C {devices/lab_pin.sym} 80 -550 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 80 -410 0 0 {name=l1 lab=0}
C {devices/vsource.sym} 300 -490 0 0 {name=VWL value="PWL(0 0 4.9n 0 5n 5 14.9n 5 15n 0 60n 0)" savecurrent=false}
C {devices/lab_pin.sym} 300 -550 0 0 {name=p2 sig_type=std_logic lab=WL}
C {devices/gnd.sym} 300 -410 0 0 {name=l2 lab=0}
C {devices/lab_pin.sym} 60 -310 0 0 {name=p3 sig_type=std_logic lab=WL}
C {devices/vsource.sym} 80 -120 0 0 {name=VBL value="PWL(0 0 4.9n 0 5n 5 14.9n 5 15n 0 60n 0)" savecurrent=false}
C {devices/lab_pin.sym} 80 -180 0 0 {name=p4 sig_type=std_logic lab=BL}
C {devices/gnd.sym} 80 -40 0 0 {name=l3 lab=0}
C {devices/vsource.sym} 380 -120 0 0 {name=VBLB value="PWL(0 5 4.9n 5 5n 0 14.9n 0 15n 5 60n 5)" savecurrent=false}
C {devices/lab_pin.sym} 380 -180 0 0 {name=p5 sig_type=std_logic lab=BLB}
C {devices/gnd.sym} 380 -40 0 0 {name=l4 lab=0}
C {devices/lab_pin.sym} 420 -310 0 1 {name=p6 sig_type=std_logic lab=BLB}
C {devices/lab_pin.sym} 420 -290 0 1 {name=p7 sig_type=std_logic lab=BL}
C {devices/lab_pin.sym} 420 -270 0 1 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 420 -250 0 1 {name=p9 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 200 -490 0 0 {name=VVSS value=0 savecurrent=false}
C {devices/lab_pin.sym} 200 -550 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 200 -410 0 0 {name=l5 lab=0}
C {sram6t_tr10.sym} 240 -280 0 0 {name=x1}
C {devices/code.sym} 580 -460 0 0 {name=TR-1um_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/ip62_models"
spice_ignore=false}
C {devices/code_shown.sym} 600 -270 0 0 {name=SPICE only_toplevel=false value="
.tran 10p 60n
"}
