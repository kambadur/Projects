`timescale 1ns/1ps
`include "fadd.v"

module tb_fadd;
reg a, b, cin;
wire sum, cout;
reg [2:0] counter;

//Instantiate
fadd uut(
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
);
//Initialize
initial begin
    $dumpfile("tb_fadd.vcd");
    $dumpvars(0, tb_fadd);
    a   = 0;
    b   = 0;
    cin = 0;
    counter = 0;
    //#1000 $finish;
end

always #50 counter = counter + 1;
always #50 {a,b,cin} = counter;

endmodule