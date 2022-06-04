`timescale 1ns/1ps
`include "fadd3.v"

module tb_fadd3;
reg [2:0] a, b;
reg cin;
wire [2:0] cout;
wire [3:0] sum;

//Instantiate
fadd3 uut(
    .a(a),
    .b(b),
    .cin(cin),
    .cout(cout),
    .sum(sum)
);

//Initialize
initial begin
    $dumpfile("tb_fadd3:v");
    $dumpvars(0, tb_fadd3);

    #25 a = 7;
    b= 6;
    cin = 0;
    #50 cin = 1;
    #100 $finish;
end

endmodule
