v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -290 380 510 780 {flags=graph
y1=0
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-4.3050742e-08
x2=9.169492e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="test_signal
test_out"
color="6 4"

unitx=1
logx=0
logy=0

rainbow=0
dataset=4}
B 2 -290 -50 510 350 {flags=graph
y1=0.2
y2=0.61
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-4.3050742e-08
x2=9.169492e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=v_adj
color=6

unitx=1
logx=0
logy=0
rainbow=1
dataset=-1}
N -610 90 -610 110 {
lab=GND}
N -640 10 -610 10 {
lab=test_signal}
N -610 10 -610 30 {
lab=test_signal}
N -1090 10 -1090 20 {
lab=v_adj}
N -1090 80 -1090 90 {
lab=GND}
N -1180 10 -1180 20 {
lab=vdd}
N -1180 80 -1180 90 {
lab=GND}
N -730 430 -700 430 {
lab=v_adj}
C {devices/code.sym} -1050 600 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/vsource.sym} -610 60 0 0 {name=V4 value="1.8" savecurrent=false}
C {devices/gnd.sym} -610 110 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -640 10 0 0 {name=p9 sig_type=std_logic lab=test_signal
}
C {devices/launcher.sym} -570 700 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_level.raw tran"
}
C {devices/code.sym} -890 600 0 0 {name=SIMULATION
only_toplevel=false 
value="
* .options filetype=ascii
.control
  let vstart = 0.6
  let vstop = 0.2
  let vstep = -0.1
  let vcurrent = vstart
  while vcurrent >= vstop
    alter V9 vcurrent
    alter @V4[PULSE] [ 0 $&vcurrent 0 10n 10n 200n 500n ]
    tran 0.05n 1u
    write tb_level.raw
    set appendwrite

    let vcurrent = vcurrent + vstep
  end
.endc

.end
"}
C {devices/vsource.sym} -1090 50 0 0 {name=V9 value=1.8 savecurrent=false}
C {devices/gnd.sym} -1090 90 0 0 {name=l12 lab=GND}
C {devices/lab_pin.sym} -1090 10 2 1 {name=p18 sig_type=std_logic lab=v_adj
}
C {devices/vsource.sym} -1180 50 0 0 {name=V10 value=1.8 savecurrent=false}
C {devices/gnd.sym} -1180 90 0 0 {name=l13 lab=GND}
C {devices/lab_pin.sym} -1180 10 2 1 {name=p19 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} -1030 390 0 0 {name=p5 sig_type=std_logic lab=test_signal
}
C {devices/gnd.sym} -730 390 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -730 410 0 1 {name=p6 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} -730 450 0 1 {name=p7 sig_type=std_logic lab=test_out
}
C {devices/lab_pin.sym} -700 430 0 1 {name=p8 sig_type=std_logic lab=v_adj
}
C {level_shifter2.sym} -880 420 0 0 {name=x1}
