// carry_gen_test.v

module carry_gen_test(cin, a, b, p, g, c, cout);

    output reg cin;
    output reg [3:0] a, b;
    output [3:0] p, g;

    input [3:0] c;
    input cout;

    pgu u(a, b, p, g);

    initial begin

        $monitor("a %4b p %4b cin %1b\nb %4b g %4b cout %1b\nc %4b\n",
        a, p, cin, b, g, cout, c);

        cin = 0;

        a = 4'b0000;
        b = 4'b0000;

        #10

        a = 4'b0001;
        b = 4'b0000;

        #10

        a = 4'b0001;
        b = 4'b0001;

        #10

        a = 4'b0010;
        b = 4'b0000;

        #10

        a = 4'b0010;
        b = 4'b0010;

        #10

        a = 4'b0011;
        b = 4'b0001;

        #10

        a = 4'b0100;
        b = 4'b0000;

        #10

        a = 4'b0100;
        b = 4'b0100;

        #10

        a = 4'b0110;
        b = 4'b0010;

        #10

        a = 4'b0111;
        b = 4'b0001;

        #10

        a = 4'b1000;
        b = 4'b0000;

        #10

        a = 4'b1000;
        b = 4'b1000;

        #10

        a = 4'b1100;
        b = 4'b0100;

        #10

        a = 4'b1110;
        b = 4'b0010;

        #10

        a = 4'b1111;
        b = 4'b0001;

        $finish;

    end

endmodule

module carry_gen_bench();

    wire cin, cout;
    wire [3:0] a, b, p, g, c;

    carry_gen cg(cin, a, b, p, g, c, cout);
    
    carry_gen_test t(cin, a, b, p, g, c, cout);

endmodule
