module inverter_chain #(
    parameter           NUM_INVERTERS
)(
    input               in,
    output              out
);


    wire [NUM_INVERTERS - 1:0] inv_out_wire;

    inferred_inv inv0(
        .in(in),
        .out(inv_out_wire[0])
    );

    generate
        genvar i;
        for (i = 1 ; i < NUM_INVERTERS ; i = i + 1) begin
            inferred_inv inv(
                .in(inv_out_wire[i-1]),
                .out(inv_out_wire[i])
            );
        end
    endgenerate

    assign out = inv_out_wire[NUM_INVERTERS - 1];

endmodule
