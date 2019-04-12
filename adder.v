// adder.v

module adder(cin, a, b, s, cout, ovf);

    input cin;
    input [3:0] a, b;

    output [3:0] s;
    output cout, ovf;

    wire [3:0] p, g, c;

    pgu pg(a, b, p, g);

    carry_gen cg(cin, p, g, c);

    sum sum(cin, c[2:0], p, s);

    assign cout = c[3];

    xor(ovf, c[3], c[2]);

endmodule
