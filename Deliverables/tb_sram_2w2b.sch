v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 120 -260 170 -260 {lab=WL0}
N 120 -240 170 -240 {lab=WL1}
N 470 -160 500 -160 {lab=VSS}
N 470 -240 500 -240 {lab=VDD}
N 690 -370 690 -320 {lab=0}
N 690 -480 690 -430 {lab=VDD}
N 470 -260 500 -260 {lab=BL0}
N 470 -220 500 -220 {lab=BL1}
N 470 -200 500 -200 {lab=BLB1}
N 470 -180 500 -180 {lab=BLB0}
N 170 -1040 170 -990 {lab=0}
N 170 -1150 170 -1100 {lab=DIN0}
N 840 -370 840 -320 {lab=0}
N 840 -480 840 -430 {lab=VSS}
N 160 -1280 160 -1230 {lab=0}
N 160 -1390 160 -1340 {lab=WE}
N 490 -1280 490 -1230 {lab=0}
N 490 -1390 490 -1340 {lab=WEB}
N 160 -1620 160 -1590 {lab=PCB}
N 160 -1530 160 -1480 {lab=0}
N 160 -1870 160 -1840 {lab=EQEN}
N 160 -1780 160 -1730 {lab=0}
N 120 -530 170 -530 {lab=WLE}
N 120 -510 170 -510 {lab=A0}
N 470 -530 500 -530 {lab=VDD}
N 470 -510 500 -510 {lab=VSS}
N 470 -490 500 -490 {lab=WL0}
N 470 -470 500 -470 {lab=WL1}
N 150 -750 150 -700 {lab=0}
N 150 -860 150 -810 {lab=WLE}
N 370 -750 370 -700 {lab=0}
N 370 -860 370 -810 {lab=A0}
N 1430 -480 1460 -480 {lab=VDD}
N 1430 -420 1460 -420 {lab=VSS}
N 1080 -440 1130 -440 {lab=WE}
N 1080 -420 1130 -420 {lab=WEB}
N 1430 -460 1460 -460 {lab=BL0}
N 1430 -440 1460 -440 {lab=BLB0}
N 1430 -400 1460 -400 {lab=BL1}
N 1430 -380 1460 -380 {lab=BLB1}
N 1080 -480 1130 -480 {lab=DIN0}
N 1080 -460 1130 -460 {lab=DIN1}
N 430 -1040 430 -990 {lab=0}
N 430 -1150 430 -1100 {lab=DIN1}
N 1080 -850 1130 -850 {lab=PCB}
N 1080 -830 1130 -830 {lab=EQEN}
N 1430 -850 1460 -850 {lab=VDD}
N 1430 -830 1460 -830 {lab=VSS}
N 1430 -810 1460 -810 {lab=BL0}
N 1430 -790 1460 -790 {lab=BLB0}
N 1430 -770 1460 -770 {lab=BL1}
N 1430 -750 1460 -750 {lab=BLB1}
N 1420 -1080 1450 -1080 {lab=VDD}
N 1420 -1060 1450 -1060 {lab=VSS}
N 1420 -1040 1450 -1040 {lab=DOUT0}
N 1420 -1020 1450 -1020 {lab=DOUT1}
N 1070 -1080 1120 -1080 {lab=BLB0}
N 1070 -1060 1120 -1060 {lab=BLB0}
C {sram_2w2b.sym} 320 -210 0 0 {name=x1}
C {devices/lab_pin.sym} 120 -260 0 0 {name=p1 sig_type=std_logic lab=WL0}
C {devices/lab_pin.sym} 120 -240 0 0 {name=p2 sig_type=std_logic lab=WL1}
C {devices/lab_pin.sym} 500 -240 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 690 -400 0 0 {name=VVDD value=5 savecurrent=false}
C {devices/gnd.sym} 690 -320 0 0 {name=l4 lab=0}
C {devices/lab_pin.sym} 690 -480 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 500 -260 0 1 {name=p7 sig_type=std_logic lab=BL0}
C {devices/lab_pin.sym} 500 -220 0 1 {name=p8 sig_type=std_logic lab=BL1}
C {devices/lab_pin.sym} 500 -200 0 1 {name=p9 sig_type=std_logic lab=BLB1}
C {devices/lab_pin.sym} 500 -180 0 1 {name=p10 sig_type=std_logic lab=BLB0}
C {devices/vsource.sym} 170 -1070 0 0 {name=VDIN0 value="PWL(0 5 19.9n 5 20n 0 100n 0)" savecurrent=false}
C {devices/gnd.sym} 170 -990 0 0 {name=l5 lab=0}
C {devices/lab_pin.sym} 170 -1150 0 0 {name=p35 sig_type=std_logic lab=DIN0}
C {devices/vsource.sym} 840 -400 0 0 {name=VVSS value=0 savecurrent=false}
C {devices/gnd.sym} 840 -320 0 0 {name=l9 lab=0}
C {devices/lab_pin.sym} 840 -480 0 0 {name=p43 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 500 -160 0 1 {name=p39 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 160 -1310 0 0 {name=VWE value="PWL(0 0 4.9n 0 5n 5 14.9n 5 15n 0 19.9n 0 20n 5 29.9n 5 30n 0 100n 0)" savecurrent=false}
C {devices/gnd.sym} 160 -1230 0 0 {name=l1 lab=0}
C {devices/lab_pin.sym} 160 -1390 0 0 {name=p40 sig_type=std_logic lab=WE}
C {devices/vsource.sym} 490 -1310 0 0 {name=VWEB value="PWL(0 5 4.9n 5 5n 0 14.9n 0 15n 5 19.9n 5 20n 0 29.9n 0 30n 5 100n 5)" savecurrent=false}
C {devices/gnd.sym} 490 -1230 0 0 {name=l10 lab=0}
C {devices/lab_pin.sym} 490 -1390 0 0 {name=p41 sig_type=std_logic lab=WEB}
C {devices/code.sym} 1810 -670 0 0 {name=TR-1um_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/ip62_models"
spice_ignore=false}
C {devices/code_shown.sym} 1790 -390 0 0 {name=SPICE only_toplevel=false value="
.tran 10p 100n

.meas tran t_read0 TRIG v(wl0) VAL=2.5 RISE=2 TARG v(dout0) VAL=2.5 RISE=1 TD=40n
.meas tran t_read1 TRIG v(wl1) VAL=2.5 RISE=2 TARG v(dout1) VAL=2.5 RISE=1 TD=65n

"}
C {devices/vsource.sym} 160 -1560 0 0 {name=VPCB value="PWL(0 5 34.9n 5 35n 0 39.9n 0 40n 5 59.9n 5 60n 0 64.9n 0 65n 5 100n 5)" savecurrent=false}
C {devices/lab_pin.sym} 160 -1620 0 0 {name=p65 sig_type=std_logic lab=PCB}
C {devices/gnd.sym} 160 -1480 0 0 {name=l13 lab=0}
C {devices/vsource.sym} 160 -1810 0 0 {name=VEQ value="PWL(0 0 34.9n 0 35n 5 39.9n 5 40n 0 59.9n 0 60n 5 64.9n 5 65n 0 100n 0)" savecurrent=false}
C {devices/lab_pin.sym} 160 -1870 0 0 {name=p66 sig_type=std_logic lab=EQEN}
C {devices/gnd.sym} 160 -1730 0 0 {name=l14 lab=0}
C {decoder.sym} 320 -500 0 0 {name=x2}
C {devices/lab_pin.sym} 120 -530 0 0 {name=p4 sig_type=std_logic lab=WLE}
C {devices/lab_pin.sym} 120 -510 0 0 {name=p5 sig_type=std_logic lab=A0}
C {devices/lab_pin.sym} 500 -530 0 1 {name=p67 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 500 -510 0 1 {name=p68 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 500 -490 0 1 {name=p69 sig_type=std_logic lab=WL0}
C {devices/lab_pin.sym} 500 -470 0 1 {name=p70 sig_type=std_logic lab=WL1}
C {devices/vsource.sym} 150 -780 0 0 {name=VWLE value="PWL(0 0 4.9n 0 5n 5 14.9n 5 15n 0 19.9n 0 20n 5 29.9n 5 30n 0 44.9n 0 45n 5 54.9n 5 55n 0 69.9n 0 70n 5 79.9n 5 80n 0 100n 0)" savecurrent=false}
C {devices/gnd.sym} 150 -700 0 0 {name=l2 lab=0
value=1}
C {devices/lab_pin.sym} 150 -860 0 0 {name=p71 sig_type=std_logic lab=WLE}
C {devices/vsource.sym} 370 -780 0 0 {name=VA0 value="PWL(0 0 16.9n 0 17n 5 31.9n 5 32n 0 56.9n 0 57n 5 100n 5)" savecurrent=false}
C {devices/gnd.sym} 370 -700 0 0 {name=l3 lab=0
value=1}
C {devices/lab_pin.sym} 370 -860 0 0 {name=p72 sig_type=std_logic lab=A0}
C {write_driver.sym} 1280 -430 0 0 {name=x3}
C {devices/lab_pin.sym} 1460 -480 0 1 {name=p11 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1460 -420 0 1 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1080 -440 0 0 {name=p13 sig_type=std_logic lab=WE}
C {devices/lab_pin.sym} 1080 -420 0 0 {name=p14 sig_type=std_logic lab=WEB}
C {devices/lab_pin.sym} 1460 -460 0 1 {name=p15 sig_type=std_logic lab=BL0}
C {devices/lab_pin.sym} 1460 -440 0 1 {name=p16 sig_type=std_logic lab=BLB0}
C {devices/lab_pin.sym} 1460 -400 0 1 {name=p17 sig_type=std_logic lab=BL1}
C {devices/lab_pin.sym} 1460 -380 0 1 {name=p18 sig_type=std_logic lab=BLB1}
C {devices/lab_pin.sym} 1080 -480 0 0 {name=p19 sig_type=std_logic lab=DIN0}
C {devices/lab_pin.sym} 1080 -460 0 0 {name=p20 sig_type=std_logic lab=DIN1}
C {devices/vsource.sym} 430 -1070 0 0 {name=VDIN1 value="PWL(0 0 19.9n 0 20n 5 100n 5)" savecurrent=false}
C {devices/gnd.sym} 430 -990 0 0 {name=l6 lab=0}
C {devices/lab_pin.sym} 430 -1150 0 0 {name=p21 sig_type=std_logic lab=DIN1}
C {precharge.sym} 1280 -800 0 0 {name=x4}
C {devices/lab_pin.sym} 1080 -850 0 0 {name=p22 sig_type=std_logic lab=PCB}
C {devices/lab_pin.sym} 1080 -830 0 0 {name=p23 sig_type=std_logic lab=EQEN}
C {devices/lab_pin.sym} 1460 -850 0 1 {name=p24 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1460 -830 0 1 {name=p25 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1460 -810 0 1 {name=p26 sig_type=std_logic lab=BL0}
C {devices/lab_pin.sym} 1460 -790 0 1 {name=p27 sig_type=std_logic lab=BLB0}
C {devices/lab_pin.sym} 1460 -770 0 1 {name=p28 sig_type=std_logic lab=BL1}
C {devices/lab_pin.sym} 1460 -750 0 1 {name=p29 sig_type=std_logic lab=BLB1}
C {read_buffer.sym} 1270 -1050 0 0 {name=x5}
C {devices/lab_pin.sym} 1450 -1080 0 1 {name=p30 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1450 -1060 0 1 {name=p31 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1450 -1040 0 1 {name=p32 sig_type=std_logic lab=DOUT0}
C {devices/lab_pin.sym} 1450 -1020 0 1 {name=p33 sig_type=std_logic lab=DOUT1}
C {devices/lab_pin.sym} 1070 -1080 0 0 {name=p34 sig_type=std_logic lab=BLB0}
C {devices/lab_pin.sym} 1070 -1060 0 0 {name=p36 sig_type=std_logic lab=BLB1}
