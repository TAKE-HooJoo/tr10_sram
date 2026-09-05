v {xschem version=3.4.8 file_version=1.2}
G {}
K {type=subcircuit}
V {}
S {}
E {}
T {TR-10 MPW : 2 word x 2 bit Single-Port SRAM - functional generic-MOS version} 70 -590 0 0 0.47 0.47 {}
T {CE=0 precharge / CE=1 access; WE=1 write, WE=0 read} 70 -555 0 0 0.28 0.28 {}
C {devices/ipin.sym} 60 -410 0 0 {name=pA0 lab=A0}
C {devices/ipin.sym} 60 -350 0 0 {name=pCE lab=CE}
C {devices/ipin.sym} 60 -290 0 0 {name=pWE lab=WE}
C {devices/ipin.sym} 60 70 0 0 {name=pDIN0 lab=DIN0}
C {devices/ipin.sym} 60 320 0 0 {name=pDIN1 lab=DIN1}
C {devices/opin.sym} 1100 70 0 0 {name=pDOUT0 lab=DOUT0}
C {devices/opin.sym} 1100 320 0 0 {name=pDOUT1 lab=DOUT1}
C {devices/iopin.sym} 540 -500 0 0 {name=pVDD lab=VDD}
C {devices/iopin.sym} 540 500 0 0 {name=pVSS lab=VSS}
C {./rowdec.sym} 170 -380 0 0 {name=XDEC}
C {./sram6t.sym} 480 -310 0 0 {name=XB00}
C {./sram6t.sym} 750 -310 0 0 {name=XB01}
C {./sram6t.sym} 480 -80 0 0 {name=XB10}
C {./sram6t.sym} 750 -80 0 0 {name=XB11}
C {./wrdrv.sym} 330 170 0 0 {name=XWR0}
C {./wrdrv.sym} 680 170 0 0 {name=XWR1}
C {./readpc.sym} 880 70 0 0 {name=XRD0}
C {./readpc.sym} 880 320 0 0 {name=XRD1}
N 60 -410 160 -405 {lab=A0}
N 60 -350 160 -350 {lab=CE}
N 350 -405 650 -405 {lab=WL0}
N 650 -405 650 -310 {lab=WL0}
N 650 -310 630 -310 {lab=WL0}
N 650 -405 920 -405 {lab=WL0}
N 920 -405 920 -310 {lab=WL0}
N 920 -310 900 -310 {lab=WL0}
N 350 -350 650 -350 {lab=WL1}
N 650 -350 650 -80 {lab=WL1}
N 650 -80 630 -80 {lab=WL1}
N 650 -350 920 -350 {lab=WL1}
N 920 -350 920 -80 {lab=WL1}
N 920 -80 900 -80 {lab=WL1}
N 470 -350 420 -350 {lab=BL0}
N 470 -270 440 -270 {lab=BL0B}
N 470 -120 420 -120 {lab=BL0}
N 470 -40 440 -40 {lab=BL0B}
N 420 -350 420 130 {lab=BL0}
N 440 -270 440 210 {lab=BL0B}
N 420 130 500 130 {lab=BL0}
N 440 210 500 210 {lab=BL0B}
N 420 30 870 30 {lab=BL0}
N 440 80 870 80 {lab=BL0B}
N 740 -350 700 -350 {lab=BL1}
N 740 -270 720 -270 {lab=BL1B}
N 740 -120 700 -120 {lab=BL1}
N 740 -40 720 -40 {lab=BL1B}
N 700 -350 700 130 {lab=BL1}
N 720 -270 720 210 {lab=BL1B}
N 700 130 850 130 {lab=BL1}
N 720 210 850 210 {lab=BL1B}
N 700 280 870 280 {lab=BL1}
N 720 330 870 330 {lab=BL1B}
N 60 70 320 130 {lab=DIN0}
N 60 320 670 130 {lab=DIN1}
N 60 -350 300 -350 {lab=CE}
N 300 -350 300 170 {lab=CE}
N 300 170 320 170 {lab=CE}
N 300 170 650 170 {lab=CE}
N 650 170 670 170 {lab=CE}
N 650 170 850 170 {lab=CE}
N 850 170 850 120 {lab=CE}
N 850 120 870 120 {lab=CE}
N 850 170 850 370 {lab=CE}
N 850 370 870 370 {lab=CE}
N 60 -290 280 -290 {lab=WE}
N 280 -290 280 210 {lab=WE}
N 280 210 320 210 {lab=WE}
N 280 210 650 210 {lab=WE}
N 650 210 670 210 {lab=WE}
N 1080 70 1100 70 {lab=DOUT0}
N 1080 320 1100 320 {lab=DOUT1}
N 540 -500 540 -460 {lab=VDD}
N 220 -460 950 -460 {lab=VDD}
N 540 -460 540 -460 {lab=VDD}
N 540 460 540 500 {lab=VSS}
N 220 460 950 460 {lab=VSS}
N 540 460 540 460 {lab=VSS}
N 225 -450 225 -460 {lab=VDD}
N 275 -310 275 460 {lab=VSS}
N 540 -400 540 -460 {lab=VDD}
N 580 -230 580 460 {lab=VSS}
N 810 -400 810 -460 {lab=VDD}
N 850 -230 850 460 {lab=VSS}
N 540 -170 540 -460 {lab=VDD}
N 580 0 580 460 {lab=VSS}
N 810 -170 810 -460 {lab=VDD}
N 850 0 850 460 {lab=VSS}
N 385 80 385 -460 {lab=VDD}
N 435 250 435 460 {lab=VSS}
N 735 80 735 -460 {lab=VDD}
N 785 250 785 460 {lab=VSS}
N 935 -10 935 -460 {lab=VDD}
N 990 150 990 460 {lab=VSS}
N 935 240 935 -460 {lab=VDD}
N 990 400 990 460 {lab=VSS}
C {devices/lab_wire.sym} 380 -405 0 0 {name=lwl0 lab=WL0}
C {devices/lab_wire.sym} 380 -350 0 0 {name=lwl1 lab=WL1}
C {devices/lab_wire.sym} 420 -200 0 0 {name=lbl0 lab=BL0}
C {devices/lab_wire.sym} 440 -180 0 0 {name=lbl0b lab=BL0B}
C {devices/lab_wire.sym} 700 -200 0 0 {name=lbl1 lab=BL1}
C {devices/lab_wire.sym} 720 -180 0 0 {name=lbl1b lab=BL1B}
