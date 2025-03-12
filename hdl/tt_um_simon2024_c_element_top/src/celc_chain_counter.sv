module celc_chain_counter #(
    parameter           NUM_INVERTERS = 3
)(
    input               enable,
    input               reset,
    output reg  [23:0]  count
);

    // assert num inverters is odd
    // TODO: make this work..
    // assert property (@(posedge enable) NUM_INVERTERS % 2 == 1);

    wire inv_chain_in;
    wire inv_chain_out;

    (* keep *) (* dont_touch *)
    celc_chain #(.NUM_INVERTERS(NUM_INVERTERS)) inv_chain (
        .in(inv_chain_in),
        .out(inv_chain_out)
    );

    // Oscillate only when enable is high
    assign inv_chain_in = inv_chain_out & enable;

    // Increase counter every time invertor chain toggles
    always @(posedge inv_chain_out or posedge reset) begin
        if (reset) begin
            count <= 0;
        end else begin
            count <= count + 1;
        end
    end
endmodule
