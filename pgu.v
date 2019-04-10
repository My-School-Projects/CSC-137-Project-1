// pgu.v

module pgu(a, b, p, g);


    input [3:0] a, b;

    output [3:0] p, g;

    xor(p[0], a[0], b[0]);
    xor(p[1], a[1], b[1]);
    xor(p[2], a[2], b[2]);
    xor(p[3], a[3], b[3]);

    and(g[0], a[0], b[0]);
    and(g[1], a[1], b[1]);
    and(g[2], a[2], b[2]);
    and(g[3], a[3], b[3]);

endmodule
