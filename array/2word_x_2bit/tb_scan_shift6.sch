v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 150 -350 150 -290 {lab=VDD}
N 150 -230 150 -180 {lab=0}
N 260 -350 260 -290 {lab=VSS}
N 260 -230 260 -180 {lab=0}
N 640 -490 640 -450 {lab=VDD}
N 640 -330 640 -290 {lab=VSS}
N 610 -380 640 -380 {lab=SCLK}
N 610 -380 610 -310 {lab=SCLK}
N 1150 -380 1150 -310 {lab=SCLK}
N 580 -380 610 -380 {lab=SCLK}
N 670 -350 670 -270 {lab=RST}
N 1200 -350 1200 -270 {lab=RST}
N 930 -350 930 -270 {lab=RST}
N 580 -420 640 -420 {lab=SDI}
N 720 -480 720 -420 {lab=Q0}
N 990 -480 990 -420 {lab=Q1}
N 860 -450 860 -420 {lab=VDD}
N 860 -380 860 -330 {lab=VSS}
N 860 -400 880 -400 {lab=#net1}
N 880 -420 880 -400 {lab=#net1}
N 880 -420 900 -420 {lab=#net1}
N 1130 -450 1130 -420 {lab=VDD}
N 880 -380 900 -380 {lab=SCLK}
N 880 -380 880 -310 {lab=SCLK}
N 1130 -380 1130 -330 {lab=VSS}
N 700 -420 740 -420 {lab=Q0}
N 960 -420 1010 -420 {lab=Q1}
N 1130 -400 1150 -400 {lab=#net2}
N 1150 -420 1150 -400 {lab=#net2}
N 1150 -420 1170 -420 {lab=#net2}
N 1150 -380 1170 -380 {lab=SCLK}
N 1680 -380 1680 -310 {lab=SCLK}
N 1730 -350 1730 -270 {lab=RST}
N 1460 -350 1460 -270 {lab=RST}
N 1250 -480 1250 -420 {lab=Q2}
N 1520 -480 1520 -420 {lab=Q3}
N 1390 -450 1390 -420 {lab=VDD}
N 1390 -380 1390 -330 {lab=VSS}
N 1390 -400 1410 -400 {lab=#net3}
N 1410 -420 1410 -400 {lab=#net3}
N 1410 -420 1430 -420 {lab=#net3}
N 1660 -450 1660 -420 {lab=VDD}
N 1410 -380 1430 -380 {lab=SCLK}
N 1410 -380 1410 -310 {lab=SCLK}
N 1660 -380 1660 -330 {lab=VSS}
N 1230 -420 1270 -420 {lab=Q2}
N 1490 -420 1540 -420 {lab=Q3}
N 1660 -400 1680 -400 {lab=#net4}
N 1680 -420 1680 -400 {lab=#net4}
N 1680 -420 1700 -420 {lab=#net4}
N 1680 -380 1700 -380 {lab=SCLK}
N 1990 -350 1990 -270 {lab=RST}
N 1780 -480 1780 -420 {lab=Q4}
N 2050 -480 2050 -420 {lab=Q5}
N 1920 -450 1920 -420 {lab=VDD}
N 1920 -380 1920 -330 {lab=VSS}
N 1920 -400 1940 -400 {lab=#net5}
N 1940 -420 1940 -400 {lab=#net5}
N 1940 -420 1960 -420 {lab=#net5}
N 1940 -380 1960 -380 {lab=SCLK}
N 1940 -380 1940 -310 {lab=SCLK}
N 1760 -420 1800 -420 {lab=Q4}
N 2020 -420 2050 -420 {lab=Q5}
N 640 -450 1960 -450 {lab=VDD}
N 640 -330 1960 -330 {lab=VSS}
N 580 -270 1990 -270 {lab=RST}
N 610 -310 1940 -310 {lab=SCLK}
C {devices/vsource.sym} 150 -260 0 0 {name=VVDD value=5 savecurrent=false}
C {devices/lab_pin.sym} 150 -350 0 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 260 -260 0 0 {name=VVSS value=0 savecurrent=false}
C {devices/lab_pin.sym} 260 -350 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 150 -180 0 0 {name=l1 lab=0}
C {devices/gnd.sym} 260 -180 0 0 {name=l2 lab=0}
C {devices/code.sym} 170 -540 0 0 {name=TR-1um_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/ip62_models"
spice_ignore=false}
C {devices/code_shown.sym} 180 -700 0 0 {name=SPICE only_toplevel=false value="
VCLK SCLK 0 PWL(0 0 39.9n 0 40n 5 49.9n 5 50n 0 59.9n 0 60n 5 69.9n 5 70n 0 79.9n 0 80n 5 89.9n 5 90n 0 99.9n 0 100n 5 109.9n 5 110n 0 119.9n 0 120n 5 129.9n 5 130n 0 139.9n 0 140n 5 149.9n 5 150n 0 180n 0)
VRST RST 0 PWL(0 5 3n 5 3.1n 0 180n 0)
VSDI SDI 0 PWL(0 0 49.9n 0 50n 5 89.9n 5 90n 0 109.9n 0 110n 5 129.9n 5 130n 0 180n 0)
.tran 50p 180n

"}
C {TR-1um_5_stdcell/DFFR.sym} 670 -390 0 0 {name=x1}
C {TR-1um_5_stdcell/DFFR.sym} 930 -390 0 0 {name=x2}
C {TR-1um_5_stdcell/DFFR.sym} 1200 -390 0 0 {name=x3}
C {devices/iopin.sym} 640 -490 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 640 -290 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} 580 -380 0 0 {name=p3 lab=SCLK}
C {devices/ipin.sym} 580 -270 0 0 {name=p4 lab=RST}
C {devices/ipin.sym} 580 -420 0 0 {name=p5 lab=SDI}
C {devices/opin.sym} 720 -480 0 0 {name=p6 lab=Q0}
C {devices/opin.sym} 990 -480 0 0 {name=p7 lab=Q1}
C {dlyinv4.sym} 800 -400 0 0 {name=x7}
C {dlyinv4.sym} 1070 -400 0 0 {name=x8}
C {TR-1um_5_stdcell/DFFR.sym} 1460 -390 0 0 {name=x4}
C {TR-1um_5_stdcell/DFFR.sym} 1730 -390 0 0 {name=x5}
C {devices/opin.sym} 1250 -480 0 0 {name=p8 lab=Q2}
C {devices/opin.sym} 1520 -480 0 0 {name=p9 lab=Q3}
C {dlyinv4.sym} 1330 -400 0 0 {name=x6}
C {dlyinv4.sym} 1600 -400 0 0 {name=x9}
C {TR-1um_5_stdcell/DFFR.sym} 1990 -390 0 0 {name=x10}
C {devices/opin.sym} 1780 -480 0 0 {name=p10 lab=Q4}
C {devices/opin.sym} 2050 -480 0 0 {name=p11 lab=Q5}
C {dlyinv4.sym} 1860 -400 0 0 {name=x12}
