// carry_gen_test.v

module carry_gen_test(cin, p, g, c);

    output reg cin;
    output reg [3:0] p, g;

    input [3:0] c;

    initial begin

        $monitor("cin  %b\np %4b\ng %4b\nc %4b\n", cin, p, g, c);

        cin = 0;

        p = 4'b0000;
        g = 4'b0000;

        #10

        p = 4'b0001;
        g = 4'b0000;

        #10

        p = 4'b0000;
        g = 4'b0001;

        #10

        p = 4'b0010;
        g = 4'b0000;

        #10

        p = 4'b0000;
        g = 4'b0010;

        #10

        p = 4'b0100;
        g = 4'b0000;

        #10

        p = 4'b0000;
        g = 4'b0100;

        #10

        p = 4'b1000;
        g = 4'b0000;

        #10

        p = 4'b0000;
        g = 4'b1000;

        #10

        p = 4'b0010;
        g = 4'b0001;

        #10

        p = 4'b0000;
        g = 4'b0011;

        #10

        p = 4'b0100;
        g = 4'b0010;

        #10

        p = 4'b0000;
        g = 4'b0110;

        #10

        p = 4'b0110;
        g = 4'b0001;

        #10

        p = 4'b1000;
        g = 4'b0100;

        #10

        p = 4'b0000;
        g = 4'b1100;

        #10

        p = 4'b1100;
        g = 4'b0010;

        #10

        p = 4'b1110;
        g = 4'b0001;

        $finish;

    end

endmodule

module carry_gen_bench();

    wire cin;
    wire [3:0] p, g, c;

    carry_gen cg(cin, p, g, c);
    
    carry_gen_test t(cin, p, g, c);

endmodule
