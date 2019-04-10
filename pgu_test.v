// pgu_test.v

module pgu_test(a, b, p, g);

    output reg [3:0] a, b;

    input [3:0] p, g;

    initial begin

        $monitor("a %4b\nb %4b\ng %4b\np %4b\n", a, b, g, p);

        a = 4'b0000;
        b = 4'b0000;

        #10

        a = 4'b1111;
        b = 4'b1111;

        #10

        a = 4'b1111;
        b = 4'b0000;

        #10

        a = 4'b0000;
        b = 4'b0011;

        #10

        a = 4'b1111;
        b = 4'b0011;

        $finish;

    end

endmodule

module pgu_bench();

    wire [3:0] a, b, p, g;

    pgu u(a, b, p, g);

    pgu_test t(a, b, p, g);

endmodule
