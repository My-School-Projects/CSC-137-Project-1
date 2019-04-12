// subtractor.v

module subtractor(a, b, d, ovf);

    input [3:0] a, b;

    output [3:0] d;
    output ovf;

    wire [3:0] _b, bcomp;

    // Take 2's complement of b (flip bits, add 1)

    xor(_b[0], b[0], 1);
    xor(_b[1], b[1], 1);
    xor(_b[2], b[2], 1);
    xor(_b[3], b[3], 1);

    adder add1(1'b0, _b, 4'b0001, bcomp, _);

    // If carry out is 0 if there is no overflow, so we need to invert the carry
    // out to get the overflow bit

    adder sub(1'b0, a, bcomp, d, _ovf);

    not(ovf, _ovf);

endmodule
