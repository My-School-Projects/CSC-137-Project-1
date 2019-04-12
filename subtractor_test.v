// subtractor_test.v

module subtractor_test(a, b, d);

    output reg [3:0] a, b;

    input [3:0] d;
    input ovf;

    initial begin

        $monitor("a %b\nb %b\nd %b\n", a, b, d);

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
        b = 4'b0001;

        #10

        a = 4'b0011;
        b = 4'b0001;

        #10

        a = 4'b0111;
        b = 4'b0101;

        #10

        a = 4'b0000;
        b = 4'b0001;

        #10

        a = 4'b1101;
        b = 4'b0111;

        #10

        a = 4'b1111;
        b = 4'b1000;

        #10

        a = 4'b1111;
        b = 4'b1111;

        $finish;

    end

endmodule

module subtractor_bench();

    wire [3:0] a, b, d;

    subtractor u(a, b, d);

    subtractor_test t(a, b, d);

endmodule
