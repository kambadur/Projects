`include "fadd.v"
module fadd3( 
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [3:0] sum 
);
/*
    fadd fadd_1(a, b, cin, sum[0], cout[0]);
    fadd fadd_2(a, b, cout[0], sum[1], cout[1]);
    fadd fadd_3(a, b, cout[1], sum[2], cout[2]);
    */
    
        fadd fadd_1(
        .a(a[0]),
        .b(b[0]),
        .cin(cin),
        .cout(cout[0]),
        .sum(sum[0])
    );

        fadd fadd_2(
        .a(a[1]),
        .b(b[1]),
        .cin(cout[0]),
        .cout(cout[1]),
        .sum(sum[1])
    );
    
        fadd fadd_3(
        .a(a[2]),
        .b(b[2]),
        .cin(cout[1]),
        .cout(cout[2]),
        .sum(sum[2])
    );
assign sum[3] = cout[2];

endmodule
