// carry_gen.v

module carry_gen(cin, a, b, p, g, c, cout);

    input cin;
    input [3:0] a, b, p, g;

    output [3:0] c;
    output cout;

    and(c00, cin,  p[0]);
    
    or(c[0], g[0], c00);

    and(c10, cin,  p[0], p[1]);

    and(c11, g[0], p[1]);

    or(c[1], g[1], c10, c11);

    and(c20, cin,  p[0], p[1], p[2]);

    and(c21, g[0], p[1], p[2]);

    and(c22, g[1], p[2]);

    or(c[2], g[2], c20, c21, c22);

    and(c30, cin,  p[0], p[1], p[2], p[3]);

    and(c31, g[0], p[1], p[2], p[3]);

    and(c32, g[1], p[2], p[3]);

    and(c33, g[2], p[3]);

    or(c[3], g[3], c30, c31, c32, c33);

endmodule
