v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 570 -260 620 -260 {lab=Q0}
N 680 -260 730 -260 {lab=Q1}
N 790 -260 840 -260 {lab=Q2}
N 900 -260 940 -260 {lab=Q3}
N 1000 -260 1040 -260 {lab=Q4}
N 510 -290 1040 -290 {lab=VDD}
N 510 -330 510 -290 {lab=VDD}
N 510 -170 1040 -170 {lab=VSS}
N 510 -170 510 -130 {lab=VSS}
N 480 -220 510 -220 {lab=SCLK}
N 480 -220 480 -150 {lab=SCLK}
N 480 -150 590 -150 {lab=SCLK}
N 590 -220 590 -150 {lab=SCLK}
N 590 -220 620 -220 {lab=SCLK}
N 590 -150 700 -150 {lab=SCLK}
N 700 -220 700 -150 {lab=SCLK}
N 700 -220 730 -220 {lab=SCLK}
N 700 -150 810 -150 {lab=SCLK}
N 810 -220 810 -150 {lab=SCLK}
N 810 -220 840 -220 {lab=SCLK}
N 810 -150 920 -150 {lab=SCLK}
N 920 -220 920 -150 {lab=SCLK}
N 920 -220 940 -220 {lab=SCLK}
N 920 -150 1020 -150 {lab=SCLK}
N 1020 -220 1020 -150 {lab=SCLK}
N 1020 -220 1040 -220 {lab=SCLK}
N 450 -220 480 -220 {lab=SCLK}
N 540 -190 540 -110 {lab=RST}
N 450 -110 1070 -110 {lab=RST}
N 1070 -190 1070 -110 {lab=RST}
N 970 -190 970 -110 {lab=RST}
N 870 -190 870 -110 {lab=RST}
N 760 -190 760 -110 {lab=RST}
N 650 -190 650 -110 {lab=RST}
N 450 -260 510 -260 {lab=SDI}
N 590 -320 590 -260 {lab=Q0}
N 710 -320 710 -260 {lab=Q1}
N 820 -320 820 -260 {lab=Q2}
N 920 -320 920 -260 {lab=Q3}
N 1020 -320 1020 -260 {lab=Q4}
N 1100 -260 1130 -260 {lab=Q5}
N 1130 -320 1130 -260 {lab=Q5}
N 150 -350 150 -290 {lab=VDD}
N 150 -230 150 -180 {lab=0}
N 260 -350 260 -290 {lab=VSS}
N 260 -230 260 -180 {lab=0}
C {TR-1um_5_stdcell/DFFR.sym} 540 -230 0 0 {name=x1}
C {TR-1um_5_stdcell/DFFR.sym} 650 -230 0 0 {name=x2}
C {TR-1um_5_stdcell/DFFR.sym} 760 -230 0 0 {name=x3}
C {TR-1um_5_stdcell/DFFR.sym} 870 -230 0 0 {name=x4}
C {TR-1um_5_stdcell/DFFR.sym} 970 -230 0 0 {name=x5}
C {TR-1um_5_stdcell/DFFR.sym} 1070 -230 0 0 {name=x6}
C {devices/iopin.sym} 510 -330 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 510 -130 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} 450 -220 0 0 {name=p3 lab=SCLK}
C {devices/ipin.sym} 450 -110 0 0 {name=p4 lab=RST}
C {devices/ipin.sym} 450 -260 0 0 {name=p5 lab=SDI}
C {devices/opin.sym} 590 -320 0 0 {name=p6 lab=Q0}
C {devices/opin.sym} 710 -320 0 0 {name=p7 lab=Q1}
C {devices/opin.sym} 820 -320 0 0 {name=p8 lab=Q2}
C {devices/opin.sym} 920 -320 0 0 {name=p9 lab=Q3}
C {devices/opin.sym} 1020 -320 0 0 {name=p10 lab=Q4}
C {devices/opin.sym} 1130 -320 0 0 {name=p11 lab=Q5}
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
VCLK SCLK 0 PULSE(0 5 5n 100p 100p 5n 10n)
VRST RST 0 PWL(0 5 3n 5 3.1n 0 70n 0)
VSDI SDI 0 PWL(0 0 7n 0 7.1n 5 17n 5 17.1n 0 70n 0)
.tran 50p 70n

"}
