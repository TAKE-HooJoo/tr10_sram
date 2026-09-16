v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 230 -100 260 -100 {lab=#net1}
N 380 -100 410 -100 {lab=#net2}
N 530 -100 570 -100 {lab=#net3}
N 160 -60 160 -20 {lab=VSS}
N 160 -20 620 -20 {lab=VSS}
N 620 -60 620 -20 {lab=VSS}
N 460 -60 460 -20 {lab=VSS}
N 310 -60 310 -20 {lab=VSS}
N 380 -20 380 10 {lab=VSS}
N 160 -200 160 -140 {lab=VDD}
N 160 -200 620 -200 {lab=VDD}
N 620 -200 620 -140 {lab=VDD}
N 460 -200 460 -140 {lab=VDD}
N 310 -200 310 -150 {lab=VDD}
N 380 -240 380 -200 {lab=VDD}
N 80 -100 110 -100 {lab=D}
N 690 -100 730 -100 {lab=DLYOUT}
C {TR-1um_5_stdcell/INV_X1.sym} 130 -100 0 0 {name=x1}
C {TR-1um_5_stdcell/INV_X1.sym} 280 -100 0 0 {name=x2}
C {TR-1um_5_stdcell/INV_X1.sym} 430 -100 0 0 {name=x3}
C {TR-1um_5_stdcell/INV_X1.sym} 590 -100 0 0 {name=x4}
C {devices/iopin.sym} 380 10 0 0 {name=p1 lab=VSS}
C {devices/iopin.sym} 380 -240 0 0 {name=p2 lab=VDD}
C {devices/ipin.sym} 80 -100 0 0 {name=p3 lab=DLYIN}
C {devices/opin.sym} 730 -100 0 0 {name=p4 lab=DLYOUT}
