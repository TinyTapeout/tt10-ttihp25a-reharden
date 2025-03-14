`default_nettype none

module range_classifier #(parameter N = 7) (
    input  wire [N-1:0] number,
    output wire [1:0] out_bits
);

    assign out_bits = number[N-1:N-2];

endmodule