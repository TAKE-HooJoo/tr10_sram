v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 120 -150 170 -150 {lab=Q0}
N 230 -150 280 -150 {lab=Q1}
N 340 -150 390 -150 {lab=Q2}
N 450 -150 490 -150 {lab=Q3}
N 550 -150 590 -150 {lab=Q4}
N 60 -180 590 -180 {lab=VDD}
N 60 -220 60 -180 {lab=VDD}
N 60 -60 590 -60 {lab=VSS}
N 60 -60 60 -20 {lab=VSS}
N 30 -110 60 -110 {lab=SCLK}
N 30 -110 30 -40 {lab=SCLK}
N 30 -40 140 -40 {lab=SCLK}
N 140 -110 140 -40 {lab=SCLK}
N 140 -110 170 -110 {lab=SCLK}
N 140 -40 250 -40 {lab=SCLK}
N 250 -110 250 -40 {lab=SCLK}
N 250 -110 280 -110 {lab=SCLK}
N 250 -40 360 -40 {lab=SCLK}
N 360 -110 360 -40 {lab=SCLK}
N 360 -110 390 -110 {lab=SCLK}
N 360 -40 470 -40 {lab=SCLK}
N 470 -110 470 -40 {lab=SCLK}
N 470 -110 490 -110 {lab=SCLK}
N 470 -40 570 -40 {lab=SCLK}
N 570 -110 570 -40 {lab=SCLK}
N 570 -110 590 -110 {lab=SCLK}
N 0 -110 30 -110 {lab=SCLK}
N 90 -80 90 0 {lab=RST}
N -0 0 620 -0 {lab=RST}
N 620 -80 620 -0 {lab=RST}
N 520 -80 520 -0 {lab=RST}
N 420 -80 420 -0 {lab=RST}
N 310 -80 310 -0 {lab=RST}
N 200 -80 200 -0 {lab=RST}
N 0 -150 60 -150 {lab=SDI}
N 140 -210 140 -150 {lab=Q0}
N 260 -210 260 -150 {lab=Q1}
N 370 -210 370 -150 {lab=Q2}
N 470 -210 470 -150 {lab=Q3}
N 570 -210 570 -150 {lab=Q4}
N 650 -150 680 -150 {lab=Q0}
N 680 -210 680 -150 {lab=Q0}
C {TR-1um_5_stdcell/DFFR.sym} 90 -120 0 0 {name=x1}
C {TR-1um_5_stdcell/DFFR.sym} 200 -120 0 0 {name=x2}
C {TR-1um_5_stdcell/DFFR.sym} 310 -120 0 0 {name=x3}
C {TR-1um_5_stdcell/DFFR.sym} 420 -120 0 0 {name=x4}
C {TR-1um_5_stdcell/DFFR.sym} 520 -120 0 0 {name=x5}
C {TR-1um_5_stdcell/DFFR.sym} 620 -120 0 0 {name=x6}
C {devices/iopin.sym} 60 -220 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 60 -20 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} 0 -110 0 0 {name=p3 lab=SCLK}
C {devices/ipin.sym} 0 0 0 0 {name=p4 lab=RST}
C {devices/ipin.sym} 0 -150 0 0 {name=p5 lab=SDI}
C {devices/opin.sym} 140 -210 0 0 {name=p6 lab=Q0}
C {devices/opin.sym} 260 -210 0 0 {name=p7 lab=Q1}
C {devices/opin.sym} 370 -210 0 0 {name=p8 lab=Q2}
C {devices/opin.sym} 470 -210 0 0 {name=p9 lab=Q3}
C {devices/opin.sym} 570 -210 0 0 {name=p10 lab=Q4}
C {devices/opin.sym} 680 -210 0 0 {name=p11 lab=Q5}
