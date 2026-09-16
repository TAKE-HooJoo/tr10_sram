v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 150 -410 170 -410 {lab=A0}
N 150 -430 170 -430 {lab=WLE}
N 470 -430 490 -430 {lab=VDD}
N 470 -410 490 -410 {lab=VSS}
N 470 -390 490 -390 {lab=WL0}
N 470 -370 490 -370 {lab=WL1}
N 630 -450 650 -450 {lab=WL0}
N 630 -430 650 -430 {lab=WL1}
N 950 -450 970 -450 {lab=BL0}
N 950 -430 970 -430 {lab=VDD}
N 950 -410 970 -410 {lab=BL1}
N 950 -390 970 -390 {lab=BLB1}
N 950 -370 970 -370 {lab=BLB0}
N 1100 -450 1120 -450 {lab=PCB}
N 1100 -430 1120 -430 {lab=EQEN}
N 570 -240 590 -240 {lab=DIN0}
N 570 -220 590 -220 {lab=DIN1}
N 570 -200 590 -200 {lab=WE}
N 570 -180 590 -180 {lab=WEB}
N 950 -350 970 -350 {lab=VSS}
N 890 -240 910 -240 {lab=VDD}
N 890 -220 910 -220 {lab=BL0}
N 890 -200 910 -200 {lab=BLB0}
N 890 -180 910 -180 {lab=VSS}
N 890 -160 910 -160 {lab=BL1}
N 890 -140 910 -140 {lab=BLB1}
N 1060 -210 1080 -210 {lab=BLB0}
N 1060 -190 1080 -190 {lab=BLB1}
N 1420 -450 1440 -450 {lab=VDD}
N 1420 -430 1440 -430 {lab=VSS}
N 1420 -410 1440 -410 {lab=BL0}
N 1420 -390 1440 -390 {lab=BLB0}
N 1420 -370 1440 -370 {lab=BL1}
N 1420 -350 1440 -350 {lab=BLB1}
N 1380 -210 1400 -210 {lab=VDD}
N 1380 -190 1400 -190 {lab=VSS}
N 1380 -170 1400 -170 {lab=DOUT0}
N 1380 -150 1400 -150 {lab=DOUT1}
N 360 -650 380 -650 {lab=VDD}
N 360 -630 380 -630 {lab=VSS}
N 540 -650 560 -650 {lab=WLE}
N 540 -630 560 -630 {lab=A0}
N 700 -650 720 -650 {lab=WE}
N 860 -650 880 -650 {lab=DIN0}
N 860 -630 880 -630 {lab=DIN1}
N 1030 -650 1050 -650 {lab=PCB}
N 1030 -630 1050 -630 {lab=EQEN}
N 1200 -650 1220 -650 {lab=DOUT0}
N 1200 -630 1220 -630 {lab=DOUT1}
N 300 -200 300 -170 {lab=WEB}
N 300 -110 300 -60 {lab=VSS}
N 300 -140 320 -140 {lab=VSS}
N 320 -140 320 -100 {lab=VSS}
N 300 -100 320 -100 {lab=VSS}
N 300 -300 300 -260 {lab=VDD}
N 240 -230 260 -230 {lab=WE}
N 240 -230 240 -140 {lab=WE}
N 240 -140 260 -140 {lab=WE}
N 300 -190 360 -190 {lab=WEB}
N 200 -190 240 -190 {lab=WE}
N 300 -230 320 -230 {lab=VDD}
N 320 -270 320 -230 {lab=VDD}
N 300 -270 320 -270 {lab=VDD}
C {sram_2w2b.sym} 800 -400 0 0 {name=x1}
C {decoder.sym} 320 -400 0 0 {name=x2}
C {write_driver.sym} 740 -190 0 0 {name=x3}
C {precharge.sym} 1270 -400 0 0 {name=x4}
C {read_buffer.sym} 1230 -180 0 0 {name=x5}
C {devices/iopin.sym} 360 -650 0 1 {name=p1 lab=VDD}
C {devices/ipin.sym} 540 -650 0 0 {name=p2 lab=WLE}
C {devices/opin.sym} 1220 -650 0 0 {name=p3 lab=DOUT0}
C {devices/lab_pin.sym} 150 -430 0 0 {name=p5 sig_type=std_logic lab=WLE}
C {devices/lab_pin.sym} 150 -410 0 0 {name=p6 sig_type=std_logic lab=A0}
C {devices/lab_pin.sym} 490 -430 0 1 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 490 -410 0 1 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 490 -390 0 1 {name=p8 sig_type=std_logic lab=WL0}
C {devices/lab_pin.sym} 490 -370 0 1 {name=p9 sig_type=std_logic lab=WL1}
C {devices/lab_pin.sym} 630 -450 0 0 {name=p10 sig_type=std_logic lab=WL0}
C {devices/lab_pin.sym} 630 -430 0 0 {name=p11 sig_type=std_logic lab=WL1}
C {devices/lab_pin.sym} 970 -450 0 1 {name=p12 sig_type=std_logic lab=BL0}
C {devices/lab_pin.sym} 970 -430 0 1 {name=p13 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 970 -410 0 1 {name=p14 sig_type=std_logic lab=BL1}
C {devices/lab_pin.sym} 970 -390 0 1 {name=p15 sig_type=std_logic lab=BLB1}
C {devices/lab_pin.sym} 970 -370 0 1 {name=p16 sig_type=std_logic lab=BLB0}
C {devices/lab_pin.sym} 1100 -450 0 0 {name=p17 sig_type=std_logic lab=PCB}
C {devices/lab_pin.sym} 1100 -430 0 0 {name=p18 sig_type=std_logic lab=EQEN}
C {devices/lab_pin.sym} 570 -240 0 0 {name=p19 sig_type=std_logic lab=DIN0}
C {devices/lab_pin.sym} 570 -220 0 0 {name=p20 sig_type=std_logic lab=DIN1}
C {devices/lab_pin.sym} 570 -200 0 0 {name=p21 sig_type=std_logic lab=WE}
C {devices/lab_pin.sym} 570 -180 0 0 {name=p22 sig_type=std_logic lab=WEB
}
C {devices/lab_pin.sym} 970 -350 0 1 {name=p23 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 910 -240 0 1 {name=p24 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 910 -220 0 1 {name=p25 sig_type=std_logic lab=BL0}
C {devices/lab_pin.sym} 910 -200 0 1 {name=p26 sig_type=std_logic lab=BLB0}
C {devices/lab_pin.sym} 910 -180 0 1 {name=p27 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 910 -160 0 1 {name=p28 sig_type=std_logic lab=BL1}
C {devices/lab_pin.sym} 910 -140 0 1 {name=p29 sig_type=std_logic lab=BLB1}
C {devices/lab_pin.sym} 1060 -210 0 0 {name=p30 sig_type=std_logic lab=BLB0}
C {devices/lab_pin.sym} 1060 -190 0 0 {name=p31 sig_type=std_logic lab=BLB1}
C {devices/lab_pin.sym} 1440 -450 0 1 {name=p32 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1440 -430 0 1 {name=p33 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1440 -410 0 1 {name=p34 sig_type=std_logic lab=BL0}
C {devices/lab_pin.sym} 1440 -390 0 1 {name=p35 sig_type=std_logic lab=BLB0}
C {devices/lab_pin.sym} 1440 -370 0 1 {name=p36 sig_type=std_logic lab=BL1}
C {devices/lab_pin.sym} 1440 -350 0 1 {name=p37 sig_type=std_logic lab=BLB1}
C {devices/lab_pin.sym} 1400 -210 0 1 {name=p38 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1400 -190 0 1 {name=p39 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1400 -170 0 1 {name=p40 sig_type=std_logic lab=DOUT0}
C {devices/lab_pin.sym} 1400 -150 0 1 {name=p41 sig_type=std_logic lab=DOUT1}
C {devices/lab_pin.sym} 380 -650 0 1 {name=p42 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} 360 -630 0 1 {name=p43 lab=VSS}
C {devices/lab_pin.sym} 380 -630 0 1 {name=p44 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 560 -650 0 1 {name=p45 sig_type=std_logic lab=WLE}
C {devices/ipin.sym} 540 -630 0 0 {name=p46 lab=A0}
C {devices/lab_pin.sym} 560 -630 0 1 {name=p47 sig_type=std_logic lab=A0}
C {devices/ipin.sym} 700 -650 0 0 {name=p48 lab=WE}
C {devices/lab_pin.sym} 720 -650 0 1 {name=p49 sig_type=std_logic lab=WE}
C {devices/ipin.sym} 860 -650 0 0 {name=p52 lab=DIN0}
C {devices/lab_pin.sym} 880 -650 0 1 {name=p53 sig_type=std_logic lab=DIN0}
C {devices/ipin.sym} 860 -630 0 0 {name=p54 lab=DIN1}
C {devices/lab_pin.sym} 880 -630 0 1 {name=p55 sig_type=std_logic lab=DIN1}
C {devices/ipin.sym} 1030 -650 0 0 {name=p56 lab=PCB}
C {devices/lab_pin.sym} 1050 -650 0 1 {name=p57 sig_type=std_logic lab=PCB}
C {devices/ipin.sym} 1030 -630 0 0 {name=p58 lab=EQEN}
C {devices/lab_pin.sym} 1050 -630 0 1 {name=p59 sig_type=std_logic lab=EQEN}
C {devices/lab_pin.sym} 1200 -650 0 0 {name=p60 sig_type=std_logic lab=DOUT0}
C {devices/opin.sym} 1220 -630 0 0 {name=p61 lab=DOUT1}
C {devices/lab_pin.sym} 1200 -630 0 0 {name=p62 sig_type=std_logic lab=DOUT1}
C {devices/lab_pin.sym} 300 -300 0 0 {name=p63 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 200 -190 0 0 {name=p64 sig_type=std_logic lab=WE}
C {devices/lab_pin.sym} 360 -190 0 1 {name=p65 sig_type=std_logic lab=WEB}
C {devices/lab_pin.sym} 300 -60 0 0 {name=p66 sig_type=std_logic lab=VSS}
C {TR-1umLIB/MN.sym} 260 -140 0 0 {name=XM1
model=NMOS
w=3.4u
l=1u
m=1
spiceprefix=X
as=0
ad=0
ps=0
pd=0
nrd=0
nrs=0}
C {TR-1umLIB/MP.sym} 260 -230 0 0 {name=XM2
model=PMOS
w=6.8u
l=1u
m=1
spiceprefix=X
as=0
ad=0
ps=0
pd=0
nrd=0
nrs=0}
