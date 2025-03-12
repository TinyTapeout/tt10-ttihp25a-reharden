`ifndef COCOTB_SIM
(* blackbox *)
`endif

module inv4 (
`ifdef USE_POWER_PINS
    inout             VPWR,
    inout             VGND,
`endif
    input A,
    output Y
);

`ifdef COCOTB_SIM
    assign Y = ~A;
`endif

endmodule

