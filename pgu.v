
module pgu (input [3:0] a, b, output [3:0] p, g)

assign g = a & b;

assign p = a ^ b;

endmodule
