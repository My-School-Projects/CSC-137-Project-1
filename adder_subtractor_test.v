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
        a = 4'b0111;
        b = 4'b0001;

    end

endmodule

module adder_subtractor_bench();

    wire select, cout, ovf;
    wire [3:0] a, b, r;

    adder_subtractor u(select, a, b, r, cout, ovf);

    adder_subtractor_test t(select, a, b, r, cout, ovf);

endmodule
