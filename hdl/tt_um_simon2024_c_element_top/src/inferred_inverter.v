module inferred_inv(
    input               in,
    output              out
);

`ifdef COCOTB_SIM
    assign out = ~in;
`else
    sky130_fd_sc_hd__inv_1 inv(.A(in), .Y(out));
`endif

endmodule
