v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1630 -740 2430 -340 {flags=graph

y2=6.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=4.0684505e-07
x2=4.0958319e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
color=4
node=in
y1=-0.6}
B 2 1630 -1190 2430 -790 {flags=graph
y1=-0.005

ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=4.0684505e-07

divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0




color=7
node=out
sim_type=tran
autoload=1
mode=Line
legend=1
digital=0
rainbow=0
y2=0.3
x2=4.0958319e-07}
N 1470 -410 1470 -390 {lab=GND}
N 1450 -440 1450 -410 {lab=GND}
N 1450 -410 1470 -410 {lab=GND}
N 880 -470 1080 -470 {lab=in}
N 880 -450 1080 -450 {lab=GND}
N 1380 -470 1470 -470 {lab=out}
C {devices/launcher.sym} 300 -300 0 0 {name=h2 
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"}
C {devices/code_shown.sym} 220 -880 0 0 {name=NGSPICE
only_toplevel=true


value="
.param Vdd = 1.8V
.param V60Hz = 0.1

*V_PS_DC in GND \{Vdd\} DC 
*V_PS_ripple in GND SIN(time*2*pi*1e6) 

.control

op
tran 1n 2u

write tb_inv.raw

.endc
"}
C {devices/lab_wire.sym} 880 -470 0 0 {name=l3 lab=in}
C {devices/gnd.sym} 880 -450 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 1440 -470 0 0 {name=l4 lab=out
}
C {devices/launcher.sym} 520 -300 0 0 {name=h5
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_inv.raw tran"
}
C {devices/code.sym} 240 -530 0 0 {name=TT_MODELS
only_toplevel=true
corner=tt
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {PTAT_wulff.sym} 1230 -460 0 0 {name=x1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 1470 -440 0 0 {name=R10
W=0.35
L=0.175
model=res_xhigh_po_0p35
spiceprefix=X
 mult=1}
C {devices/gnd.sym} 1470 -390 0 0 {name=l2 lab=GND}
C {vsource_arith.sym} 790 -470 0 0 {name=E1 VOL=2*SIN(time*2*pi*1e10)}
C {devices/lab_wire.sym} 790 -500 0 0 {name=l5 lab=in}
C {devices/gnd.sym} 790 -440 0 0 {name=l6 lab=GND}
