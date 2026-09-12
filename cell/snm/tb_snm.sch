v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 210 -250 210 -180 {lab=VOUT}
N 120 -280 170 -280 {lab=VIN}
N 120 -280 120 -150 {lab=VIN}
N 120 -150 170 -150 {lab=VIN}
N 210 -210 330 -210 {lab=VOUT}
N 40 -210 120 -210 {lab=VIN}
N 210 -120 210 -60 {lab=0}
N 210 -400 210 -310 {lab=VDD}
N 210 -150 270 -150 {lab=0}
N 270 -150 270 -90 {lab=0}
N 210 -90 270 -90 {lab=0}
N 210 -280 270 -280 {lab=VDD}
N 270 -330 270 -280 {lab=VDD}
N 210 -330 270 -330 {lab=VDD}
N 100 -660 100 -630 {lab=VDD}
N 100 -570 100 -520 {lab=0}
N 220 -660 220 -630 {lab=VIN}
N 220 -570 220 -520 {lab=0}
C {TR-1umLIB/MN.sym} 170 -150 0 0 {name=XM1
model=NMOS
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
C {TR-1umLIB/MP.sym} 170 -280 0 0 {name=XM2
model=PMOS
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
C {devices/ipin.sym} 40 -210 0 0 {name=p1 lab=VIN}
C {devices/gnd.sym} 210 -60 0 0 {name=l1 lab=0}
C {devices/iopin.sym} 210 -400 0 0 {name=p2 lab=VDD}
C {devices/code.sym} 550 -430 0 0 {name=TR-1um_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/ip62_models"
spice_ignore=false}
C {devices/vsource.sym} 100 -600 0 0 {name=VVDD value=5 savecurrent=false}
C {devices/lab_pin.sym} 100 -660 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 100 -520 0 0 {name=l2 lab=0}
C {devices/code_shown.sym} 570 -220 0 0 {name=SPICE only_toplevel=false value="

.control
save v(vin) v(vout)

dc VVIN 0 5 0.005

wrdata snm_vtc.dat v(vin) v(vout)

plot v(vout) vs v(vin)

.endc
"}
C {devices/opin.sym} 330 -210 0 0 {name=p4 lab=VOUT}
C {devices/vsource.sym} 220 -600 0 0 {name=VVIN value=0 savecurrent=false}
C {devices/lab_pin.sym} 220 -660 0 0 {name=VVIN1 sig_type=std_logic lab=VIN
value=0}
C {devices/gnd.sym} 220 -520 0 0 {name=VVIN2 lab=0
value=0}
