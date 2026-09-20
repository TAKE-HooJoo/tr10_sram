v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 60 -220 60 -180 {lab=VDD}
N 60 -60 60 -20 {lab=VSS}
N 30 -110 60 -110 {lab=SCLK}
N 30 -110 30 -40 {lab=SCLK}
N 570 -110 570 -40 {lab=SCLK}
N 0 -110 30 -110 {lab=SCLK}
N 90 -80 90 0 {lab=RST}
N 620 -80 620 0 {lab=RST}
N 350 -80 350 0 {lab=RST}
N 0 -150 60 -150 {lab=SDI}
N 140 -210 140 -150 {lab=Q0}
N 410 -210 410 -150 {lab=Q1}
N 280 -180 280 -150 {lab=VDD}
N 280 -110 280 -60 {lab=VSS}
N 280 -130 300 -130 {lab=#net1}
N 300 -150 300 -130 {lab=#net1}
N 300 -150 320 -150 {lab=#net1}
N 550 -180 550 -150 {lab=VDD}
N 300 -110 320 -110 {lab=SCLK}
N 300 -110 300 -40 {lab=SCLK}
N 550 -110 550 -60 {lab=VSS}
N 120 -150 160 -150 {lab=Q0}
N 380 -150 430 -150 {lab=Q1}
N 550 -130 570 -130 {lab=#net2}
N 570 -150 570 -130 {lab=#net2}
N 570 -150 590 -150 {lab=#net2}
N 570 -110 590 -110 {lab=SCLK}
N 1100 -110 1100 -40 {lab=SCLK}
N 1150 -80 1150 0 {lab=RST}
N 880 -80 880 0 {lab=RST}
N 670 -210 670 -150 {lab=Q2}
N 940 -210 940 -150 {lab=Q3}
N 810 -180 810 -150 {lab=VDD}
N 810 -110 810 -60 {lab=VSS}
N 810 -130 830 -130 {lab=#net3}
N 830 -150 830 -130 {lab=#net3}
N 830 -150 850 -150 {lab=#net3}
N 1080 -180 1080 -150 {lab=VDD}
N 830 -110 850 -110 {lab=SCLK}
N 830 -110 830 -40 {lab=SCLK}
N 1080 -110 1080 -60 {lab=VSS}
N 650 -150 690 -150 {lab=Q2}
N 910 -150 960 -150 {lab=Q3}
N 1080 -130 1100 -130 {lab=#net4}
N 1100 -150 1100 -130 {lab=#net4}
N 1100 -150 1120 -150 {lab=#net4}
N 1100 -110 1120 -110 {lab=SCLK}
N 1410 -80 1410 0 {lab=RST}
N 1200 -210 1200 -150 {lab=Q4}
N 1470 -210 1470 -150 {lab=Q5}
N 1340 -180 1340 -150 {lab=VDD}
N 1340 -110 1340 -60 {lab=VSS}
N 1340 -130 1360 -130 {lab=#net5}
N 1360 -150 1360 -130 {lab=#net5}
N 1360 -150 1380 -150 {lab=#net5}
N 1360 -110 1380 -110 {lab=SCLK}
N 1360 -110 1360 -40 {lab=SCLK}
N 1180 -150 1220 -150 {lab=Q4}
N 1440 -150 1470 -150 {lab=Q5}
N 60 -180 1380 -180 {lab=VDD}
N 60 -60 1380 -60 {lab=VSS}
N 0 -0 1410 0 {lab=RST}
N 30 -40 1360 -40 {lab=SCLK}
C {TR-1um_5_stdcell/DFFR.sym} 90 -120 0 0 {name=x1}
C {TR-1um_5_stdcell/DFFR.sym} 350 -120 0 0 {name=x2}
C {TR-1um_5_stdcell/DFFR.sym} 620 -120 0 0 {name=x3}
C {devices/iopin.sym} 60 -220 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 60 -20 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} 0 -110 0 0 {name=p3 lab=SCLK}
C {devices/ipin.sym} 0 0 0 0 {name=p4 lab=RST}
C {devices/ipin.sym} 0 -150 0 0 {name=p5 lab=SDI}
C {devices/opin.sym} 140 -210 0 0 {name=p6 lab=Q0}
C {devices/opin.sym} 410 -210 0 0 {name=p7 lab=Q1}
C {dlyinv4.sym} 220 -130 0 0 {name=x7}
C {dlyinv4.sym} 490 -130 0 0 {name=x8}
C {TR-1um_5_stdcell/DFFR.sym} 880 -120 0 0 {name=x4}
C {TR-1um_5_stdcell/DFFR.sym} 1150 -120 0 0 {name=x5}
C {devices/opin.sym} 670 -210 0 0 {name=p8 lab=Q2}
C {devices/opin.sym} 940 -210 0 0 {name=p9 lab=Q3}
C {dlyinv4.sym} 750 -130 0 0 {name=x6}
C {dlyinv4.sym} 1020 -130 0 0 {name=x9}
C {TR-1um_5_stdcell/DFFR.sym} 1410 -120 0 0 {name=x10}
C {devices/opin.sym} 1200 -210 0 0 {name=p10 lab=Q4}
C {devices/opin.sym} 1470 -210 0 0 {name=p11 lab=Q5}
C {dlyinv4.sym} 1280 -130 0 0 {name=x12}
