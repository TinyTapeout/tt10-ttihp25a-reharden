v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 300 140 300 230 {
lab=#net1}
N 200 190 300 190 {
lab=#net1}
N 340 110 370 110 {
lab=IN}
N 370 110 370 260 {
lab=IN}
N 340 260 370 260 {
lab=IN}
N -280 190 -190 190 {
lab=IN}
N -220 190 -220 330 {
lab=IN}
N -220 330 430 330 {
lab=IN}
N 430 190 430 330 {
lab=IN}
N 370 190 430 190 {
lab=IN}
N -150 220 -150 270 {
lab=VGND}
N -150 270 160 270 {
lab=VGND}
N 160 220 160 270 {
lab=VGND}
N 160 30 160 160 {
lab=OUT}
N -150 30 -150 160 {
lab=#net2}
N -150 -90 -150 -30 {
lab=VPWR_H}
N -150 -90 160 -90 {
lab=VPWR_H}
N 160 -90 160 -30 {
lab=VPWR_H}
N -110 -0 -70 0 {
lab=OUT}
N 90 80 160 80 {
lab=OUT}
N -70 -0 90 80 {
lab=OUT}
N 90 0 120 0 {
lab=#net2}
N -70 80 90 0 {
lab=#net2}
N -150 80 -70 80 {
lab=#net2}
N -0 -150 -0 -90 {
lab=VPWR_H}
N 160 80 210 80 {
lab=OUT}
N 300 40 300 80 {
lab=VPWR_L}
N 300 290 300 310 {
lab=VGND}
N 300 260 300 290 {
lab=VGND}
N 300 80 300 110 {
lab=VPWR_L}
N 160 190 160 220 {
lab=VGND}
N -150 190 -150 220 {
lab=VGND}
N -150 -30 -150 -0 {
lab=VPWR_H}
N 160 -30 160 0 {
lab=VPWR_H}
C {sky130_fd_pr/pfet_01v8.sym} -130 0 0 1 {name=M1
L=0.15
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 140 0 0 0 {name=M2
L=0.15
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -170 190 0 0 {name=M3
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 180 190 0 1 {name=M4
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 320 110 0 1 {name=M5
L=0.15
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 320 260 0 1 {name=M6
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/iopin.sym} -420 220 2 0 {name=p8 lab=VGND sim_pinnumber=1}
C {devices/iopin.sym} -420 190 2 0 {name=p1 lab=VPWR_H sim_pinnumber=1}
C {devices/iopin.sym} -420 160 2 0 {name=p2 lab=VPWR_L sim_pinnumber=1}
C {devices/ipin.sym} -280 190 0 0 {name=p3 lab=IN}
C {devices/opin.sym} 210 80 0 0 {name=p4 lab=OUT}
C {devices/lab_wire.sym} -10 270 0 0 {name=p9 sig_type=std_logic lab=VGND}
C {devices/lab_wire.sym} 0 -150 0 0 {name=p5 sig_type=std_logic lab=VPWR_H}
C {devices/lab_wire.sym} 300 40 0 0 {name=p6 sig_type=std_logic lab=VPWR_L}
C {devices/lab_wire.sym} 300 310 0 0 {name=p7 sig_type=std_logic lab=VGND}
