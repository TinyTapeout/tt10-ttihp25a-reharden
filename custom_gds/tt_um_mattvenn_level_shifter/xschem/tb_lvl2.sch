v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 240 -420 240 -400 {
lab=GND}
N 240 -500 240 -480 {
lab=VDD}
N 110 -140 110 -120 {
lab=GND}
N 110 -220 110 -200 {
lab=src_p}
N 340 -420 340 -400 {
lab=GND}
N 340 -500 340 -480 {
lab=VDD_L}
N 830 -280 830 -260 {
lab=VDD}
N 650 -130 700 -130 {
lab=src_n}
N 960 -130 1020 -130 {
lab=src_p}
N 740 0 740 20 {
lab=GND}
N 920 0 920 20 {
lab=GND}
N 740 -100 740 -60 {
lab=out_p}
N 920 -100 920 -60 {
lab=out_n}
N 780 -30 800 -30 {
lab=out_p}
N 860 -30 880 -30 {
lab=out_p}
N 1180 -100 1180 -60 {
lab=out}
N 1120 -30 1140 -30 {
lab=out_n}
N 1120 -130 1120 -30 {
lab=out_n}
N 1120 -130 1140 -130 {
lab=out_n}
N 1180 -180 1180 -160 {
lab=VDD}
N 1180 0 1180 20 {
lab=GND}
N 1030 -80 1120 -80 {
lab=out_n}
N 1180 -80 1320 -80 {
lab=out}
N 920 -80 1030 -80 {
lab=out_n}
N 740 -180 740 -160 {
lab=#net1}
N 740 -180 920 -180 {
lab=#net1}
N 920 -180 920 -160 {
lab=#net1}
N 830 -200 830 -180 {
lab=#net1}
N 530 -230 790 -230 {
lab=#net2}
N 490 -280 490 -260 {
lab=VDD}
N 490 -200 490 -160 {
lab=#net2}
N 490 -160 560 -160 {
lab=#net2}
N 560 -230 560 -160 {
lab=#net2}
N 800 -30 860 -30 {
lab=out_p}
N 740 -80 800 -80 {
lab=out_p}
N 800 -80 800 -30 {
lab=out_p}
N 490 -160 490 -60 {
lab=#net2}
N 530 -30 560 -30 {
lab=#net2}
N 560 -160 560 -30 {
lab=#net2}
N 490 0 490 20 {
lab=GND}
N 310 -110 310 -60 {
lab=src_n}
N 310 0 310 20 {
lab=GND}
N 310 -190 310 -170 {
lab=VDD_L}
N 250 -30 270 -30 {
lab=src_n}
N 250 -140 250 -30 {
lab=src_n}
N 250 -140 270 -140 {
lab=src_n}
N 250 -90 310 -90 {
lab=src_n}
C {devices/vsource.sym} 240 -450 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} 240 -400 0 0 {name=l2 lab=GND}
C {devices/simulator_commands.sym} 30 -500 0 0 {name=TT_MODELS
simulator=ngspice
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice ff
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
.param mc_mm_switch=0
.option wnflag=1
"}
C {devices/simulator_commands_shown.sym} 420 -510 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.control
save all

tran 10p 100n


.endc
"}
C {devices/vdd.sym} 240 -500 0 0 {name=l1 lab=VDD}
C {devices/vsource.sym} 110 -170 0 1 {name=V2 value="PULSE(0 0.3 0 0.1n 0.1n 9.8n 20n)" savecurrent=false}
C {devices/gnd.sym} 110 -120 0 0 {name=l10 lab=GND}
C {devices/lab_wire.sym} 110 -220 0 0 {name=p4 sig_type=std_logic lab=src_p}
C {devices/vsource.sym} 340 -450 0 0 {name=V3 value=0.3 savecurrent=false}
C {devices/gnd.sym} 340 -400 0 0 {name=l11 lab=GND}
C {devices/vdd.sym} 340 -500 0 0 {name=l12 lab=VDD_L}
C {sky130_fd_pr/pfet3_01v8_hvt.sym} 720 -130 0 0 {name=M5
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
C {sky130_fd_pr/pfet3_01v8_hvt.sym} 940 -130 0 1 {name=M6
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
C {devices/vdd.sym} 830 -280 0 0 {name=l7 lab=VDD
}
C {devices/lab_wire.sym} 650 -130 0 0 {name=p3 sig_type=std_logic lab=src_n}
C {devices/lab_wire.sym} 1020 -130 0 1 {name=p5 sig_type=std_logic lab=src_p}
C {sky130_fd_pr/nfet3_01v8.sym} 760 -30 0 1 {name=M7
W=0.42
L=0.3
body=GND
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
C {sky130_fd_pr/nfet3_01v8.sym} 900 -30 0 0 {name=M8
W=0.42
L=0.3
body=GND
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
C {devices/gnd.sym} 740 20 0 0 {name=l9 lab=GND}
C {devices/gnd.sym} 920 20 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 740 -80 0 0 {name=p6 sig_type=std_logic lab=out_p}
C {devices/lab_wire.sym} 920 -80 0 1 {name=p7 sig_type=std_logic lab=out_n}
C {sky130_fd_pr/nfet3_01v8.sym} 1160 -30 0 0 {name=M9
W=0.42
L=0.15
body=GND
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
C {sky130_fd_pr/pfet3_01v8_hvt.sym} 1160 -130 0 0 {name=M10
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
C {devices/vdd.sym} 1180 -180 0 0 {name=l14 lab=VDD}
C {devices/gnd.sym} 1180 20 0 0 {name=l15 lab=GND}
C {devices/lab_wire.sym} 1300 -80 0 0 {name=p9 sig_type=std_logic lab=out}
C {sky130_fd_pr/pfet3_01v8_hvt.sym} 810 -230 0 0 {name=M1
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
C {sky130_fd_pr/pfet3_01v8_hvt.sym} 510 -230 0 1 {name=M2
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
C {devices/vdd.sym} 490 -280 0 0 {name=l3 lab=VDD
}
C {sky130_fd_pr/nfet3_01v8.sym} 510 -30 0 1 {name=M3
W=0.42
L=0.6
body=GND
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
C {devices/gnd.sym} 490 20 0 0 {name=l4 lab=GND}
C {sky130_fd_pr/pfet3_01v8_hvt.sym} 290 -140 0 0 {name=M4
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
C {sky130_fd_pr/nfet3_01v8.sym} 290 -30 0 0 {name=M11
W=0.42
L=0.6
body=GND
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
C {devices/gnd.sym} 310 20 0 0 {name=l5 lab=GND}
C {devices/vdd.sym} 310 -190 0 0 {name=l6 lab=VDD_L
}
C {devices/lab_wire.sym} 310 -90 0 1 {name=p2 sig_type=std_logic lab=src_n}
