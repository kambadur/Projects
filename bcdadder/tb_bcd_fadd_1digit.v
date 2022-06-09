`timescale 1ns/1ps
`include "bcd_fadd_1digit.v"
//`include "../fadd/fadd.v"

module tb_bcd_fadd_1digit;
reg [3:0] a, b;
reg cin;
wire cout;
wire [3:0] sum;

//Instantiate
bcd_fadd_1digit uut(
    .a(a),
    .b(b),
    .cin(cin),
    .cout(cout),
    .sum(sum)
);

//Initialize
initial begin
    $dumpfile("tb_bcd_fadd_1digit.vcd");
    $dumpvars(0, tb_bcd_fadd_1digit);

    a= 0;
    b=0;
    cin = 0;
    #2000 $finish;
end

always #50  if(a>=9) a=0; else a=a+1;
always #75  if(b>=9) b=0; else b=b+1;
always #1000 cin = 1;
always #1100 cin = 0;

endmodule

