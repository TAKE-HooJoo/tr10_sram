v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 70 -340 140 -340 {lab=VDD}
N 70 -310 140 -310 {lab=VSS}
N 70 -280 140 -280 {lab=PCB}
N 70 -250 140 -250 {lab=PCB}
N 70 -210 140 -210 {lab=VSS}
N 70 -180 140 -180 {lab=VSS}
N 70 -150 140 -150 {lab=VSS}
N 70 -120 140 -120 {lab=VSS}
C {devices/iopin.sym} 70 -340 0 1 {name=p1 lab=VDD}
C {devices/lab_pin.sym} 140 -340 0 1 {name=p2 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} 70 -310 0 1 {name=p3 lab=VSS}
C {devices/lab_pin.sym} 140 -310 0 1 {name=p4 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 70 -280 0 0 {name=p5 lab=PCB}
C {devices/lab_pin.sym} 140 -280 0 1 {name=p6 sig_type=std_logic lab=PCB}
C {devices/ipin.sym} 70 -250 0 0 {name=p7 lab=EQEN}
C {devices/lab_pin.sym} 140 -250 0 1 {name=p8 sig_type=std_logic lab=EQEN}
C {devices/iopin.sym} 70 -210 0 1 {name=p9 lab=BL0}
C {devices/lab_pin.sym} 140 -210 0 1 {name=p10 sig_type=std_logic lab=BL0}
C {devices/iopin.sym} 70 -180 0 1 {name=p11 lab=BLB0}
C {devices/lab_pin.sym} 140 -180 0 1 {name=p12 sig_type=std_logic lab=BLB0}
C {devices/iopin.sym} 70 -150 0 1 {name=p13 lab=BL1}
C {devices/lab_pin.sym} 140 -150 0 1 {name=p14 sig_type=std_logic lab=BL1}
C {devices/iopin.sym} 70 -120 0 1 {name=p15 lab=BLB1}
C {devices/lab_pin.sym} 140 -120 0 1 {name=p16 sig_type=std_logic lab=BLB1}
