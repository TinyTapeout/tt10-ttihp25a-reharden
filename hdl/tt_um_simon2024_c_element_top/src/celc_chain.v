module celc_chain #(
    parameter           NUM_INVERTERS
)(
    input               in,
    output              out
);


    wire [NUM_INVERTERS - 1:0] inv_out_wire;

    celem inv0(
        .A(~in),
        .B(~in),
        .Y(inv_out_wire[0])
    );

    generate
        genvar i;
        for (i = 1 ; i < NUM_INVERTERS ; i = i + 1) begin
            celem inv(
                .A(~inv_out_wire[i-1]),
                .B(~inv_out_wire[i-1]),
                .Y(inv_out_wire[i])
            );
        end
    endgenerate

    assign out = inv_out_wire[NUM_INVERTERS - 1];

endmodule
