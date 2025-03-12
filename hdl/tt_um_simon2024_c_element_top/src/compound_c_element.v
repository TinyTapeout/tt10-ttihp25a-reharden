module compound_c_element(
    input       a,
    input       b,
    output      out
);

    wire first_and_output;
    wire second_and_output;

`ifdef COCOTB_SIM
    assign first_and_output = a & out;
    assign second_and_output = b & out;
`else
    // we need to use this to avoid loop detection
    sky130_fd_sc_hd__and2_2 first_and(
        .A(a),
        .B(out),
        .X(first_and_output)
    );

    sky130_fd_sc_hd__and2_2 second_and(
        .A(b),
        .B(out),
        .X(second_and_output)
    );
`endif

    assign out = (a & b) | first_and_output | second_and_output;
endmodule
