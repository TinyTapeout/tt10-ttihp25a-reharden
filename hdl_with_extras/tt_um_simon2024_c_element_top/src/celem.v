`ifndef COCOTB_SIM
(* blackbox *)
`endif

module celem (
`ifdef USE_POWER_PINS
    inout             VPWR,
    inout             VGND,
`endif
    input A,
    input B,
    output Y
);

`ifdef COCOTB_SIM
    compound_c_element sim_imp(.A(A), .B(B), .Y(Y));
`endif

endmodule

