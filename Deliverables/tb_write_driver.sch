v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 520 -230 550 -230 {lab=VDD}
N 520 -170 550 -170 {lab=VSS}
N 100 -400 100 -350 {lab=0}
N 100 -510 100 -460 {lab=VDD}
N 250 -400 250 -350 {lab=0}
N 250 -510 250 -460 {lab=VSS}
N 460 -400 460 -350 {lab=0}
N 460 -510 460 -460 {lab=DIN0}
N 190 -230 220 -230 {lab=DIN0}
N 770 -400 770 -350 {lab=0}
N 770 -510 770 -460 {lab=DIN1}
N 190 -210 220 -210 {lab=DIN1}
N 440 -670 440 -620 {lab=0}
N 440 -780 440 -730 {lab=WE}
N 190 -190 220 -190 {lab=WE}
N 740 -670 740 -620 {lab=0}
N 740 -780 740 -730 {lab=WEB}
N 190 -170 220 -170 {lab=WEB}
N 520 -210 550 -210 {lab=BL0}
N 520 -190 550 -190 {lab=BLB0}
N 520 -150 550 -150 {lab=BL1}
N 520 -130 550 -130 {lab=BLB1}
C {write_driver.sym} 370 -180 0 0 {name=x1}
C {devices/lab_pin.sym} 550 -230 0 1 {name=p67 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 550 -170 0 1 {name=p68 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 100 -430 0 0 {name=VVDD value=5 savecurrent=false}
C {devices/gnd.sym} 100 -350 0 0 {name=l4 lab=0}
C {devices/lab_pin.sym} 100 -510 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 250 -430 0 0 {name=VVSS value=0 savecurrent=false}
C {devices/gnd.sym} 250 -350 0 0 {name=l9 lab=0}
C {devices/lab_pin.sym} 250 -510 0 0 {name=p43 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 460 -430 0 0 {name=VDIN0 value="PWL(0 0 9.9n 0 10n 5 19.9n 5 20n 0 30n 0)" savecurrent=false}
C {devices/gnd.sym} 460 -350 0 0 {name=l5 lab=0}
C {devices/lab_pin.sym} 460 -510 0 0 {name=p35 sig_type=std_logic lab=DIN0}
C {devices/lab_pin.sym} 190 -230 0 0 {name=p1 sig_type=std_logic lab=DIN0}
C {devices/vsource.sym} 770 -430 0 0 {name=VDIN1 value="PWL(0 5 9.9n 5 10n 0 19.9n 0 20n 5 30n 5)" savecurrent=false}
C {devices/gnd.sym} 770 -350 0 0 {name=l1 lab=0}
C {devices/lab_pin.sym} 770 -510 0 0 {name=p2 sig_type=std_logic lab=DIN1}
C {devices/lab_pin.sym} 190 -210 0 0 {name=p3 sig_type=std_logic lab=DIN1}
C {devices/vsource.sym} 440 -700 0 0 {name=VWE value="PWL(0 0 4.9n 0 5n 5 24.9n 5 25n 0 30n 0)" savecurrent=false}
C {devices/gnd.sym} 440 -620 0 0 {name=l2 lab=0}
C {devices/lab_pin.sym} 440 -780 0 0 {name=p4 sig_type=std_logic lab=WE}
C {devices/lab_pin.sym} 190 -190 0 0 {name=p5 sig_type=std_logic lab=WE}
C {devices/vsource.sym} 740 -700 0 0 {name=VWEB value="PWL(0 5 4.9n 5 5n 0 24.9n 0 25n 5 30n 5)" savecurrent=false}
C {devices/gnd.sym} 740 -620 0 0 {name=VWEB1 lab=0
value="PWL(0 5 4.9n 5 5n 0 24.9n 0 25n 5 30n 5)"}
C {devices/lab_pin.sym} 740 -780 0 0 {name=p7 sig_type=std_logic lab=WEB}
C {devices/lab_pin.sym} 190 -170 0 0 {name=p8 sig_type=std_logic lab=WEB}
C {devices/lab_pin.sym} 550 -210 0 1 {name=p9 sig_type=std_logic lab=BL0}
C {devices/lab_pin.sym} 550 -190 0 1 {name=p10 sig_type=std_logic lab=BLB0}
C {devices/lab_pin.sym} 550 -150 0 1 {name=p11 sig_type=std_logic lab=BL1}
C {devices/lab_pin.sym} 550 -130 0 1 {name=p12 sig_type=std_logic lab=BLB1}
C {devices/code.sym} 1150 -470 0 0 {name=TR-1um_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/ip62_models"
spice_ignore=false}
C {devices/code_shown.sym} 710 -220 0 0 {name=SPICE only_toplevel=false value="
.tran 10p 100n

"}
