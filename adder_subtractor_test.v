// adder_subtractor_test.v

module adder_subtractor_test(select, a, b, r, cout, ovf);

    output reg select;
    output reg [3:0] a, b;

    input [3:0] r;
    input cout, ovf;

    initial begin

        $monitor("a %b select %b\nb %b cout %b\nr %b ovf %b\n",
        a, select, b, cout, r, ovf);

        select = 0;
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

        select = 1;
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

    end

endmodule

module adder_subtractor_bench();

    wire select, cout, ovf;
    wire [3:0] a, b, r;

    adder_subtractor u(select, a, b, r, cout, ovf);

    adder_subtractor_test t(select, a, b, r, cout, ovf);

endmodule
