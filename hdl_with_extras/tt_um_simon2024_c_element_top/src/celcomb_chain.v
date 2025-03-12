module celcomb_chain #(
    parameter           NUM_INVERTERS
)(
    input               in,
    output              out
);


    wire [NUM_INVERTERS - 1:0] inv_out_wire;

    compound_c_element inv0(
        .a(~in),
        .b(~in),
        .out(inv_out_wire[0])
    );

    generate
        genvar i;
        for (i = 1 ; i < NUM_INVERTERS ; i = i + 1) begin
            compound_c_element inv(
                .a(~inv_out_wire[i-1]),
                .b(~inv_out_wire[i-1]),
                .out(inv_out_wire[i])
            );
        end
    endgenerate

    assign out = inv_out_wire[NUM_INVERTERS - 1];

endmodule
