// sum.v

module sum(cin, c, p, s);

    input cin;
    input [2:0] c;
    input [3:0] p;

    output [3:0] s;

    xor(s[0], cin,  p[0]);
    xor(s[1], c[0], p[1]);
    xor(s[2], c[1], p[2]);
    xor(s[3], c[2], p[3]);

endmodule
