v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 130 -620 130 -590 {lab=A0}
N 130 -530 130 -480 {lab=0}
N 150 -160 150 -110 {lab=0}
N 150 -270 150 -220 {lab=VDD}
N 300 -160 300 -110 {lab=0}
N 300 -270 300 -220 {lab=VSS}
N 80 -410 100 -410 {lab=WLE}
N 400 -410 440 -410 {lab=VDD}
N 400 -390 440 -390 {lab=VSS}
N 400 -370 440 -370 {lab=WL0}
N 400 -350 440 -350 {lab=WL1}
N 80 -390 100 -390 {lab=A0}
N 530 -620 530 -590 {lab=WLE}
N 530 -530 530 -480 {lab=0}
C {devices/code.sym} 640 -150 0 0 {name=TR-1um_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/ip62_models"
spice_ignore=false}
C {devices/code_shown.sym} 650 -260 0 0 {name=SPICE only_toplevel=false value="
.tran 10p 60n

"}
C {devices/vsource.sym} 130 -560 0 0 {name=VA0 value="PWL(0 0 19.9n 0 20n 5 39.9n 5 40n 0 60n 0)" savecurrent=false}
C {devices/lab_pin.sym} 130 -620 0 0 {name=p65 sig_type=std_logic lab=A0}
C {devices/gnd.sym} 130 -480 0 0 {name=l13 lab=0}
C {devices/vsource.sym} 150 -190 0 0 {name=VVDD value=5 savecurrent=false}
C {devices/gnd.sym} 150 -110 0 0 {name=l4 lab=0}
C {devices/lab_pin.sym} 150 -270 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 300 -190 0 0 {name=VVSS value=0 savecurrent=false}
C {devices/gnd.sym} 300 -110 0 0 {name=l9 lab=0}
C {devices/lab_pin.sym} 300 -270 0 0 {name=p43 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 80 -410 0 0 {name=p1 sig_type=std_logic lab=WLE}
C {devices/lab_pin.sym} 440 -410 0 1 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 440 -390 0 1 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 440 -370 0 1 {name=p4 sig_type=std_logic lab=WL0}
C {devices/lab_pin.sym} 440 -350 0 1 {name=p5 sig_type=std_logic lab=WL1}
C {decoder.sym} 250 -380 0 0 {name=x1}
C {devices/lab_pin.sym} 80 -390 0 0 {name=p7 sig_type=std_logic lab=A0}
C {devices/vsource.sym} 530 -560 0 0 {name=VWLE value="PWL(0 0 9.9n 0 10n 5 49.9n 5 50n 0 60n 0)" savecurrent=false}
C {devices/lab_pin.sym} 530 -620 0 0 {name=p8 sig_type=std_logic lab=WLE}
C {devices/gnd.sym} 530 -480 0 0 {name=l1 lab=0}
