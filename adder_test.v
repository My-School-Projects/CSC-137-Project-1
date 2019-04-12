// atter_test.v

module adder_test(cin, a, b, s, cout, ovf);

    output reg cin;
    output reg [3:0] a, b;

    input [3:0] s;
    input cout, ovf;

    initial begin

        $monitor("a %b cin  %b\nb %b cout %b\ns %b ovf %b\n",
        a, cin, b, cout, s, ovf);

        cin = 0;
        a = 4'b0000;
        b = 4'b0000;

        #10

        a = 4'b0000;
        b = 4'b0001;

        #10

        a = 4'b0001;
        b = 4'b0000;

        #10

        a = 4'b0001;
        b = 4'b0001;

        #10

        a = 4'b0010;
        b = 4'b0001;

        #10

        a = 4'b0011;
        b = 4'b0001;

        #10

        a = 4'b0101;
        b = 4'b0111;

        #10

        a = 4'b1111;
        b = 4'b0001;

        #10

        a = 4'b1111;
        b = 4'b1111;

        #10

        cin = 1;
        a = 4'b0000;
        b = 4'b0000;

        #10

        a = 4'b0000;
        b = 4'b0001;

        #10

        a = 4'b0001;
        b = 4'b0000;

        #10

        a = 4'b0001;
        b = 4'b0001;

        #10

        a = 4'b0010;
        b = 4'b0001;

        #10

        a = 4'b0011;
        b = 4'b0001;

        #10

        a = 4'b0101;
        b = 4'b0111;

        #10

        a = 4'b1111;
        b = 4'b0001;

        #10

        a = 4'b1111;
        b = 4'b1111;

        $finish;

    end

endmodule

module adder_bench();

    wire cin, cout, ovf;
    wire [3:0] a, b, s;

    adder u(cin, a, b, s, cout, ovf);

    adder_test t(cin, a, b, s, cout, ovf);

endmodule
