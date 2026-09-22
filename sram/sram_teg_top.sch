v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 130 -530 150 -530 {lab=VDD}
N 130 -510 150 -510 {lab=VSS}
N 310 -530 330 -530 {lab=WLE}
N 470 -510 490 -510 {lab=A0}
N 470 -530 490 -530 {lab=WE}
N 630 -530 650 -530 {lab=DIN0}
N 630 -510 650 -510 {lab=DIN1}
N 810 -530 830 -530 {lab=DOUT0}
N 810 -510 830 -510 {lab=DOUT1}
N 110 -300 130 -300 {lab=PCB}
N 110 -320 130 -320 {lab=WLE}
N 110 -220 130 -220 {lab=A0}
N 110 -280 130 -280 {lab=WE}
N 110 -260 130 -260 {lab=DIN0}
N 110 -240 130 -240 {lab=DIN1}
N 110 -120 130 -120 {lab=PCB}
N 110 -140 130 -140 {lab=WLE}
N 110 -40 130 -40 {lab=A0}
N 110 -100 130 -100 {lab=WE}
N 110 -80 130 -80 {lab=DIN0}
N 110 -60 130 -60 {lab=DIN1}
N 630 -320 650 -320 {lab=WE}
N 630 -300 650 -300 {lab=WLE}
N 630 -280 650 -280 {lab=A0}
N 630 -260 650 -260 {lab=DIN0}
N 630 -240 650 -240 {lab=DIN1}
N 630 -220 650 -220 {lab=PCB}
N 630 -140 650 -140 {lab=DIN0}
N 630 -120 650 -120 {lab=WLE}
N 630 -80 650 -80 {lab=A0}
N 630 -100 650 -100 {lab=WE}
N 630 -60 650 -60 {lab=DIN1}
N 630 -40 650 -40 {lab=PCB}
N 430 -300 450 -300 {lab=VDD}
N 430 -260 450 -260 {lab=VSS}
N 430 -120 450 -120 {lab=VDD}
N 430 -80 450 -80 {lab=VSS}
N 950 -320 970 -320 {lab=VDD}
N 950 -300 970 -300 {lab=VSS}
N 950 -140 970 -140 {lab=VDD}
N 950 -120 970 -120 {lab=VSS}
N 430 -140 450 -140 {lab=DOUT0}
N 430 -100 450 -100 {lab=DOUT1}
N 950 -100 970 -100 {lab=DOUT2}
N 950 -80 970 -80 {lab=DOUT3}
N 430 -320 450 -320 {lab=DOUT4}
N 430 -280 450 -280 {lab=DOUT5}
N 950 -280 970 -280 {lab=DOUT6}
N 950 -260 970 -260 {lab=DOUT7}
N 810 -490 830 -490 {lab=DOUT2}
N 810 -470 830 -470 {lab=DOUT3}
N 810 -450 830 -450 {lab=DOUT4}
N 810 -430 830 -430 {lab=DOUT5}
N 810 -410 830 -410 {lab=DOUT6}
N 810 -390 830 -390 {lab=DOUT7}
N 310 -510 330 -510 {lab=PCB}
C {sram_2w2b_top.sym} 280 -90 0 0 {name=x1}
C {sram_2w16b_top.sym} 800 -90 0 0 {name=x2}
C {sram_16w2b_top.sym} 280 -270 0 0 {name=x3}
C {sram_16w16b_top.sym} 800 -270 0 0 {name=x4}
C {devices/iopin.sym} 130 -530 0 1 {name=p1 lab=VDD}
C {devices/ipin.sym} 310 -530 0 0 {name=p2 lab=WLE}
C {devices/lab_pin.sym} 150 -530 0 1 {name=p42 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} 130 -510 0 1 {name=p43 lab=VSS}
C {devices/lab_pin.sym} 150 -510 0 1 {name=p44 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 330 -530 0 1 {name=p45 sig_type=std_logic lab=WLE}
C {devices/ipin.sym} 470 -510 0 0 {name=p46 lab=A0}
C {devices/lab_pin.sym} 490 -510 0 1 {name=p47 sig_type=std_logic lab=A0}
C {devices/ipin.sym} 470 -530 0 0 {name=p48 lab=WE}
C {devices/lab_pin.sym} 490 -530 0 1 {name=p49 sig_type=std_logic lab=WE}
C {devices/ipin.sym} 630 -530 0 0 {name=p52 lab=DIN0}
C {devices/lab_pin.sym} 650 -530 0 1 {name=p53 sig_type=std_logic lab=DIN0}
C {devices/ipin.sym} 630 -510 0 0 {name=p54 lab=DIN1}
C {devices/lab_pin.sym} 650 -510 0 1 {name=p55 sig_type=std_logic lab=DIN1}
C {devices/opin.sym} 830 -530 0 0 {name=p3 lab=DOUT0}
C {devices/lab_pin.sym} 810 -530 0 0 {name=p60 sig_type=std_logic lab=DOUT0}
C {devices/opin.sym} 830 -510 0 0 {name=p61 lab=DOUT1}
C {devices/lab_pin.sym} 810 -510 0 0 {name=p62 sig_type=std_logic lab=DOUT1}
C {devices/lab_pin.sym} 110 -320 0 0 {name=p100 sig_type=std_logic lab=WLE}
C {devices/lab_pin.sym} 110 -300 0 0 {name=p101 sig_type=std_logic lab=PCB}
C {devices/lab_pin.sym} 110 -220 0 0 {name=p4 sig_type=std_logic lab=A0}
C {devices/lab_pin.sym} 110 -280 0 0 {name=p5 sig_type=std_logic lab=WE}
C {devices/lab_pin.sym} 110 -260 0 0 {name=p6 sig_type=std_logic lab=DIN0}
C {devices/lab_pin.sym} 110 -240 0 0 {name=p7 sig_type=std_logic lab=DIN1}
C {devices/lab_pin.sym} 110 -140 0 0 {name=p8 sig_type=std_logic lab=WLE}
C {devices/lab_pin.sym} 110 -120 0 0 {name=p9 sig_type=std_logic lab=PCB}
C {devices/lab_pin.sym} 110 -40 0 0 {name=p10 sig_type=std_logic lab=A0}
C {devices/lab_pin.sym} 110 -100 0 0 {name=p11 sig_type=std_logic lab=WE}
C {devices/lab_pin.sym} 110 -80 0 0 {name=p12 sig_type=std_logic lab=DIN0}
C {devices/lab_pin.sym} 110 -60 0 0 {name=p13 sig_type=std_logic lab=DIN1}
C {devices/lab_pin.sym} 630 -320 0 0 {name=p14 sig_type=std_logic lab=WE}
C {devices/lab_pin.sym} 630 -300 0 0 {name=p15 sig_type=std_logic lab=WLE}
C {devices/lab_pin.sym} 630 -280 0 0 {name=p16 sig_type=std_logic lab=A0}
C {devices/lab_pin.sym} 630 -260 0 0 {name=p17 sig_type=std_logic lab=DIN0}
C {devices/lab_pin.sym} 630 -240 0 0 {name=p18 sig_type=std_logic lab=DIN1}
C {devices/lab_pin.sym} 630 -220 0 0 {name=p19 sig_type=std_logic lab=PCB}
C {devices/lab_pin.sym} 630 -140 0 0 {name=p20 sig_type=std_logic lab=DIN0}
C {devices/lab_pin.sym} 630 -120 0 0 {name=p21 sig_type=std_logic lab=WLE}
C {devices/lab_pin.sym} 630 -80 0 0 {name=p22 sig_type=std_logic lab=A0}
C {devices/lab_pin.sym} 630 -100 0 0 {name=p23 sig_type=std_logic lab=WE}
C {devices/lab_pin.sym} 630 -60 0 0 {name=p24 sig_type=std_logic lab=DIN1}
C {devices/lab_pin.sym} 630 -40 0 0 {name=p25 sig_type=std_logic lab=PCB}
C {devices/lab_pin.sym} 450 -300 0 1 {name=p32 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 450 -260 0 1 {name=p33 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 450 -120 0 1 {name=p26 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 450 -80 0 1 {name=p27 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 970 -320 0 1 {name=p28 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 970 -300 0 1 {name=p29 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 970 -140 0 1 {name=p30 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 970 -120 0 1 {name=p31 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 450 -140 0 1 {name=p34 sig_type=std_logic lab=DOUT0}
C {devices/lab_pin.sym} 450 -100 0 1 {name=p35 sig_type=std_logic lab=DOUT1}
C {devices/lab_pin.sym} 970 -100 0 1 {name=p36 sig_type=std_logic lab=DOUT2}
C {devices/lab_pin.sym} 970 -80 0 1 {name=p37 sig_type=std_logic lab=DOUT3}
C {devices/lab_pin.sym} 450 -320 0 1 {name=p38 sig_type=std_logic lab=DOUT4}
C {devices/lab_pin.sym} 450 -280 0 1 {name=p39 sig_type=std_logic lab=DOUT5}
C {devices/lab_pin.sym} 970 -280 0 1 {name=p40 sig_type=std_logic lab=DOUT6}
C {devices/lab_pin.sym} 970 -260 0 1 {name=p41 sig_type=std_logic lab=DOUT7}
C {devices/opin.sym} 830 -490 0 0 {name=p50 lab=DOUT2}
C {devices/lab_pin.sym} 810 -490 0 0 {name=p51 sig_type=std_logic lab=DOUT2}
C {devices/opin.sym} 830 -470 0 0 {name=p56 lab=DOUT3}
C {devices/lab_pin.sym} 810 -470 0 0 {name=p57 sig_type=std_logic lab=DOUT3}
C {devices/opin.sym} 830 -450 0 0 {name=p58 lab=DOUT4}
C {devices/lab_pin.sym} 810 -450 0 0 {name=p59 sig_type=std_logic lab=DOUT4}
C {devices/opin.sym} 830 -430 0 0 {name=p63 lab=DOUT5}
C {devices/lab_pin.sym} 810 -430 0 0 {name=p64 sig_type=std_logic lab=DOUT5}
C {devices/opin.sym} 830 -410 0 0 {name=p65 lab=DOUT6}
C {devices/lab_pin.sym} 810 -410 0 0 {name=p66 sig_type=std_logic lab=DOUT6}
C {devices/opin.sym} 830 -390 0 0 {name=p67 lab=DOUT7}
C {devices/lab_pin.sym} 810 -390 0 0 {name=p68 sig_type=std_logic lab=DOUT7}
C {devices/ipin.sym} 310 -510 0 0 {name=p69 lab=PCB}
C {devices/lab_pin.sym} 330 -510 0 1 {name=p70 sig_type=std_logic lab=PCB}
