`timescale 1ns/1ps
`include "fadd32.v"

module tb_fadd32;
reg [31:0] a, b;
reg cin;
wire cout;
wire [31:0] sum;

//Instantiate
fadd32 uut(
    .a(a),
    .b(b),
    .cin(cin),
    .cout(cout),
    .sum(sum)
);

//Initialize
initial begin
    $dumpfile("tb_fadd32.vcd");
    $dumpvars(0, tb_fadd32);

    #25 a = 243;
    b= 129;
    cin = 0;
    #50 cin = 1;
    #100 $finish;
end

endmodule
