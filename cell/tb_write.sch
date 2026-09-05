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
N 80 -290 80 -260 {lab=BL}
N 80 -200 80 -150 {lab=0}
N 380 -290 380 -260 {lab=BLB}
N 380 -200 380 -150 {lab=0}
N 390 -420 420 -420 {lab=BLB}
N 390 -400 420 -400 {lab=BL}
N 390 -380 420 -380 {lab=VDD}
N 390 -360 420 -360 {lab=VSS}
N 200 -720 200 -690 {lab=VSS}
N 200 -630 200 -580 {lab=0}
C {devices/vsource.sym} 80 -660 0 0 {name=VVDD value=5 savecurrent=false}
C {devices/lab_pin.sym} 80 -720 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 80 -580 0 0 {name=l1 lab=0}
C {devices/vsource.sym} 300 -660 0 0 {name=VWL value="PWL(0 0 4.9n 0 5n 5 14.9n 5 15n 0 24.9n 0 25n 5 34.9n 5 35n 0 44.9n 0 45n 5 54.9n 5 55n 0 70n 0)" savecurrent=false}
C {devices/lab_pin.sym} 300 -720 0 0 {name=p2 sig_type=std_logic lab=WL}
C {devices/gnd.sym} 300 -580 0 0 {name=l2 lab=0}
C {devices/lab_pin.sym} 60 -420 0 0 {name=p3 sig_type=std_logic lab=WL}
C {devices/vsource.sym} 80 -230 0 0 {name=VBL value="PWL(0 0 4.9n 0 5n 5 14.9n 5 15n 0 24.9n 0 25n 0 34.9n 0 35n 0 44.9n 0 45n 5 54.9n 5 55n 0 70n 0)" savecurrent=false}
C {devices/lab_pin.sym} 80 -290 0 0 {name=p4 sig_type=std_logic lab=BL}
C {devices/gnd.sym} 80 -150 0 0 {name=l3 lab=0}
C {devices/vsource.sym} 380 -230 0 0 {name=VBLB value="PWL(0 5 4.9n 5 5n 0 14.9n 0 15n 5 24.9n 5 25n 5 34.9n 5 35n 5 44.9n 5 45n 0 54.9n 0 55n 5 70n 5)" savecurrent=false}
C {devices/lab_pin.sym} 380 -290 0 0 {name=p5 sig_type=std_logic lab=BLB}
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
"}
