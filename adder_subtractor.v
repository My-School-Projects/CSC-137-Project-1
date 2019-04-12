// adder_subtractor.v

module adder_subtractor(select, a, b, r, cout, ovf);

    input select;
    input [3:0] a, b;

    output [3:0] r;
    output cout, ovf;

    wire [3:0] x;
    wire cout;

    xor(x[0], b[0], select);
    xor(x[1], b[1], select);
    xor(x[2], b[2], select);
    xor(x[3], b[3], select);

    adder add(select, a, x, r, cout, ovf);

endmodule
