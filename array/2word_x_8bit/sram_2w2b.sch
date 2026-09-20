v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 50 -560 50 -510 {lab=WL0}
N 50 -560 460 -560 {lab=WL0}
N 460 -560 460 -510 {lab=WL0}
N 0 -560 50 -560 {lab=WL0}
N 50 -360 50 -310 {lab=WL1}
N 50 -360 460 -360 {lab=WL1}
N 460 -360 460 -310 {lab=WL1}
N -0 -360 50 -360 {lab=WL1}
N 350 -490 380 -490 {lab=BL0}
N 380 -490 380 -200 {lab=BL0}
N 350 -290 380 -290 {lab=BL0}
N 350 -510 400 -510 {lab=BLB0}
N 400 -510 400 -200 {lab=BLB0}
N 350 -310 400 -310 {lab=BLB0}
N 760 -490 790 -490 {lab=BL1}
N 790 -490 790 -200 {lab=BL1}
N 760 -290 790 -290 {lab=BL1}
N 760 -510 810 -510 {lab=BLB1}
N 810 -510 810 -200 {lab=BLB1}
N 760 -310 810 -310 {lab=BLB1}
N 350 -270 370 -270 {lab=VDD}
N 350 -470 370 -470 {lab=VDD}
N 350 -450 360 -450 {lab=VSS}
N 360 -450 360 -420 {lab=VSS}
N 350 -250 360 -250 {lab=VSS}
N 360 -250 360 -220 {lab=VSS}
N 760 -450 770 -450 {lab=VSS}
N 770 -450 770 -420 {lab=VSS}
N 760 -250 770 -250 {lab=VSS}
N 770 -250 770 -220 {lab=VSS}
N 760 -470 780 -470 {lab=VDD}
N 760 -270 780 -270 {lab=VDD}
N 120 -740 150 -740 {lab=VDD}
N 120 -690 150 -690 {lab=VSS}
N 320 -740 350 -740 {lab=WL0}
N 320 -690 350 -690 {lab=WL1}
N 520 -740 550 -740 {lab=BL0}
N 520 -690 550 -690 {lab=BLB0}
N 730 -740 760 -740 {lab=BL1}
N 730 -690 760 -690 {lab=BLB1}
C {devices/lab_pin.sym} 370 -470 1 1 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 780 -470 1 1 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 370 -270 1 1 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 780 -270 1 1 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 0 -560 0 0 {name=p5 sig_type=std_logic lab=WL0}
C {devices/lab_pin.sym} 0 -360 0 0 {name=p6 sig_type=std_logic lab=WL1}
C {devices/lab_pin.sym} 380 -200 1 1 {name=p7 sig_type=std_logic lab=BL0}
C {devices/lab_pin.sym} 400 -200 1 1 {name=p8 sig_type=std_logic lab=BLB0}
C {devices/lab_pin.sym} 790 -200 1 1 {name=p9 sig_type=std_logic lab=BL1}
C {devices/lab_pin.sym} 810 -200 1 1 {name=p10 sig_type=std_logic lab=BLB1}
C {devices/lab_pin.sym} 360 -420 1 1 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 770 -420 1 1 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 360 -220 1 1 {name=p13 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 770 -220 1 1 {name=p14 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} 150 -740 0 0 {name=p15 lab=VDD}
C {devices/iopin.sym} 150 -690 0 0 {name=p16 lab=VSS}
C {devices/iopin.sym} 550 -740 0 0 {name=p19 lab=BL0}
C {devices/iopin.sym} 550 -690 0 0 {name=p20 lab=BLB0}
C {devices/iopin.sym} 760 -740 0 0 {name=p21 lab=BL1}
C {devices/iopin.sym} 760 -690 0 0 {name=p22 lab=BLB1}
C {devices/lab_pin.sym} 120 -740 0 0 {name=p23 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 120 -690 0 0 {name=p24 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 320 -740 0 0 {name=p25 sig_type=std_logic lab=WL0}
C {devices/lab_pin.sym} 320 -690 0 0 {name=p26 sig_type=std_logic lab=WL1}
C {devices/lab_pin.sym} 520 -740 0 0 {name=p27 sig_type=std_logic lab=BL0}
C {devices/lab_pin.sym} 520 -690 0 0 {name=p28 sig_type=std_logic lab=BLB0}
C {devices/lab_pin.sym} 730 -740 0 0 {name=p29 sig_type=std_logic lab=BL1}
C {devices/lab_pin.sym} 730 -690 0 0 {name=p30 sig_type=std_logic lab=BLB1}
C {devices/ipin.sym} 350 -740 0 1 {name=p17 lab=WL0}
C {devices/ipin.sym} 350 -690 0 1 {name=p18 lab=WL1}
C {sram6t_tr10.sym} 200 -480 0 0 {name=x1}
C {sram6t_tr10.sym} 610 -480 0 0 {name=x2}
C {sram6t_tr10.sym} 200 -280 0 0 {name=x3}
C {sram6t_tr10.sym} 610 -280 0 0 {name=x4}
