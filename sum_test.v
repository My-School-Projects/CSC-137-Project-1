// sum_test.v

module sum_test(cin, c, p, s);

    output reg cin;
    output reg [2:0] c;
    output reg [3:0] p;
    
    input [3:0] s;

    initial begin

        $monitor("p %b\nc %b%b\ns %b\n", p, c, cin, s);

        c = 3'b000;
        cin = 0;
        p = 4'b0000;

        #10
        
        p = 4'b1111;
        
        #10

        p = 4'b0000;
        cin = 1;
        c = 3'b111;

        #10

        p = 4'b1111;

        $finish;

    end

endmodule

module sum_bench();

    wire cin;
    wire [2:0] c;
    wire [3:0] p, s;

    sum u(cin, c, p, s);

    sum_test t(cin, c, p, s);

endmodule
