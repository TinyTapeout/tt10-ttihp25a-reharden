v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 10 -140 10 -120 {
lab=VDD}
N -170 10 -120 10 {
lab=src_n}
N 140 10 200 10 {
lab=IN}
N -80 140 -80 160 {
lab=VSS}
N 100 140 100 160 {
lab=VSS}
N -80 40 -80 80 {
lab=out_p}
N 100 40 100 80 {
lab=out_n}
N -40 110 -20 110 {
lab=out_p}
N 40 110 60 110 {
lab=out_p}
N 360 40 360 80 {
lab=OUT}
N 300 110 320 110 {
lab=out_n}
N 300 10 300 110 {
lab=out_n}
N 300 10 320 10 {
lab=out_n}
N 360 -40 360 -20 {
lab=VDD}
N 360 140 360 160 {
lab=VSS}
N 210 60 300 60 {
lab=out_n}
N 360 60 500 60 {
lab=OUT}
N 100 60 210 60 {
lab=out_n}
N -80 -40 -80 -20 {
lab=#net1}
N -80 -40 100 -40 {
lab=#net1}
N 100 -40 100 -20 {
lab=#net1}
N 10 -60 10 -40 {
lab=#net1}
N -290 -90 -30 -90 {
lab=#net2}
N -330 -140 -330 -120 {
lab=VDD}
N -330 -60 -330 -20 {
lab=#net2}
N -330 -20 -260 -20 {
lab=#net2}
N -260 -90 -260 -20 {
lab=#net2}
N -20 110 40 110 {
lab=out_p}
N -80 60 -20 60 {
lab=out_p}
N -20 60 -20 110 {
lab=out_p}
N -330 -20 -330 80 {
lab=#net2}
N -290 110 -260 110 {
lab=#net2}
N -260 -20 -260 110 {
lab=#net2}
N -330 140 -330 160 {
lab=VSS}
N -510 30 -510 80 {
lab=src_n}
N -510 140 -510 160 {
lab=VSS}
N -510 -50 -510 -30 {
lab=VDD_L}
N -570 110 -550 110 {
lab=src_n}
N -570 0 -570 110 {
lab=src_n}
N -570 0 -550 0 {
lab=src_n}
N -570 50 -510 50 {
lab=src_n}
C {sky130_fd_pr/pfet3_01v8_hvt.sym} -100 10 0 0 {name=M5
W=1.68
L=0.15
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8_hvt.sym} 120 10 0 1 {name=M6
W=1.68
L=0.15
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_hvt
spiceprefix=X
}
C {devices/lab_wire.sym} -170 10 0 0 {name=p3 sig_type=std_logic lab=src_n}
C {sky130_fd_pr/nfet3_01v8.sym} -60 110 0 1 {name=M7
W=0.42
L=0.3
body=VSS
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
C {sky130_fd_pr/nfet3_01v8.sym} 80 110 0 0 {name=M8
W=0.42
L=0.3
body=VSS
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
C {devices/lab_wire.sym} -80 60 0 0 {name=p6 sig_type=std_logic lab=out_p}
C {devices/lab_wire.sym} 100 60 0 1 {name=p7 sig_type=std_logic lab=out_n}
C {sky130_fd_pr/nfet3_01v8.sym} 340 110 0 0 {name=M9
W=0.42
L=0.15
body=VSS
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
C {sky130_fd_pr/pfet3_01v8_hvt.sym} 340 10 0 0 {name=M10
W=0.84
L=0.15
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8_hvt.sym} -10 -90 0 0 {name=M1
W=1.68
L=0.3
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8_hvt.sym} -310 -90 0 1 {name=M2
W=0.42
L=0.3
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} -310 110 0 1 {name=M3
W=0.42
L=0.6
body=VSS
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
C {sky130_fd_pr/pfet3_01v8_hvt.sym} -530 0 0 0 {name=M4
W=0.42
L=0.15
body=VDD_L
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} -530 110 0 0 {name=M11
W=0.42
L=0.6
body=VSS
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
C {devices/lab_wire.sym} -510 50 0 1 {name=p2 sig_type=std_logic lab=src_n}
C {devices/iopin.sym} -520 -240 2 0 {name=p8 lab=VDD_L sim_pinnumber=1}
C {devices/iopin.sym} -520 -310 2 0 {name=p1 lab=VDD sim_pinnumber=1}
C {devices/iopin.sym} -520 -350 2 0 {name=p4 lab=VSS sim_pinnumber=1}
C {devices/ipin.sym} 200 10 2 0 {name=p10 lab=IN}
C {devices/opin.sym} 500 60 0 0 {name=p12 lab=OUT}
C {devices/lab_wire.sym} -510 160 2 1 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -330 160 2 1 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -80 160 2 1 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 100 160 2 1 {name=p13 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 360 160 2 1 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -510 -50 0 1 {name=p15 sig_type=std_logic lab=VDD_L}
C {devices/lab_wire.sym} -330 -140 0 1 {name=p16 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 590 420 0 1 {name=p17 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 290 420 0 1 {name=p18 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 10 -140 0 1 {name=p19 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 360 -40 0 1 {name=p20 sig_type=std_logic lab=VDD}
