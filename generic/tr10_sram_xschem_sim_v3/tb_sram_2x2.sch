v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {2 word x 2 bit SRAM transient testbench - v3} 40 -470 0 0 0.48 0.48 {}
T {W0=01 -> read W0 -> W1=10 -> read W1 -> re-read W0} 40 -435 0 0 0.3 0.3 {}
T {CE=0: precharge   CE=1/WE=0: read   CE=1/WE=1: write} 40 -405 0 0 0.27 0.27 {}
N 140 -330 600 -330 {lab=VDD}
N 600 -330 600 -180 {lab=VDD}
N 140 -210 330 -210 {lab=A0}
N 330 -210 330 -140 {lab=A0}
N 330 -140 500 -140 {lab=A0}
N 140 -90 350 -90 {lab=CE}
N 350 -100 350 -90 {lab=CE}
N 350 -100 500 -100 {lab=CE}
N 140 30 370 30 {lab=WE}
N 370 -60 370 30 {lab=WE}
N 370 -60 500 -60 {lab=WE}
N 140 150 390 150 {lab=DIN0}
N 390 -20 390 150 {lab=DIN0}
N 390 -20 500 -20 {lab=DIN0}
N 140 270 410 270 {lab=DIN1}
N 410 20 410 270 {lab=DIN1}
N 410 20 500 20 {lab=DIN1}
N 760 -100 810 -100 {lab=DOUT0}
N 760 -20 810 -20 {lab=DOUT1}
N 660 50 660 60 {lab=0}
N 140 -270 140 -250 {lab=0}
N 140 -150 140 -130 {lab=0}
N 140 -30 140 -10 {lab=0}
N 140 90 140 110 {lab=0}
N 140 210 140 230 {lab=0}
N 140 330 140 350 {lab=0}
N 660 50 660 80 {lab=0}
C {./sram_2x2_top.sym} 500 -60 0 0 {name=XSRAM}
C {devices/vsource.sym} 140 -300 0 0 {name=VVDD value=5}
C {devices/gnd.sym} 140 -250 0 0 {name=G_VDD lab=0}
C {devices/vsource.sym} 140 -180 0 0 {name=VA0 value="PWL(0 0 34.9n 0 35n 5 64.9n 5 65n 0 80n 0)"}
C {devices/gnd.sym} 140 -130 0 0 {name=G_A0 lab=0}
C {devices/vsource.sym} 140 -60 0 0 {name=VCE value="PWL(0 0 4.9n 0 5n 5 14.9n 5 15n 0 19.9n 0 20n 5 29.9n 5 30n 0 34.9n 0 35n 5 44.9n 5 45n 0 49.9n 0 50n 5 59.9n 5 60n 0 64.9n 0 65n 5 74.9n 5 75n 0 80n 0)"}
C {devices/gnd.sym} 140 -10 0 0 {name=G_CE lab=0}
C {devices/vsource.sym} 140 60 0 0 {name=VWE value="PWL(0 0 4.9n 0 5n 5 14.9n 5 15n 0 34.9n 0 35n 5 44.9n 5 45n 0 80n 0)"}
C {devices/gnd.sym} 140 110 0 0 {name=G_WE lab=0}
C {devices/vsource.sym} 140 180 0 0 {name=VDIN0 value="PWL(0 5 14.9n 5 15n 0 80n 0)"}
C {devices/gnd.sym} 140 230 0 0 {name=G_DIN0 lab=0}
C {devices/vsource.sym} 140 300 0 0 {name=VDIN1 value="PWL(0 0 34.9n 0 35n 5 44.9n 5 45n 0 80n 0)"}
C {devices/gnd.sym} 140 350 0 0 {name=G_DIN1 lab=0}
C {devices/gnd.sym} 660 80 0 0 {name=G_SRAM lab=0}
C {devices/lab_wire.sym} 330 -210 0 0 {name=L_A0 lab=A0}
C {devices/lab_wire.sym} 350 -90 0 0 {name=L_CE lab=CE}
C {devices/lab_wire.sym} 370 30 0 0 {name=L_WE lab=WE}
C {devices/lab_wire.sym} 390 150 0 0 {name=L_DIN0 lab=DIN0}
C {devices/lab_wire.sym} 410 270 0 0 {name=L_DIN1 lab=DIN1}
C {devices/lab_wire.sym} 790 -100 0 0 {name=L_DOUT0 lab=DOUT0}
C {devices/lab_wire.sym} 790 -20 0 0 {name=L_DOUT1 lab=DOUT1}
C {devices/lab_wire.sym} 600 -330 0 0 {name=L_VDD lab=VDD}
C {devices/code_shown.sym} 900 -300 0 0 {name=CORE only_toplevel=true value="
.include /home/take/Design/tr10_sram_xschem_sim_v3/sram_core.spice
.include /home/take/Design/tr10_sram_xschem_sim_v3/models_generic.spice
"}
C {devices/code_shown.sym} 900 40 0 0 {name=SIM only_toplevel=true value="
.tran 0.02n 80n
"}
C {devices/vdd.sym} 600 -330 0 0 {name=l1 lab=VDD}
