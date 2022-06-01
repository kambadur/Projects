`timescale 1ns/1ps
`include "my_dff8.v"
`include "shiftreg8_3.v"

module tb_shiftreg8_3;
reg clk;
reg [7:0] d;
reg [1:0] sel;
wire [7:0] q;

//Instantiate
shiftreg8_3 uut(
    .clk(clk),
    .d(d),
    .sel(sel),
    .q(q)
);
//Initialize
initial begin
    $dumpfile("tb_shiftreg8_3.vcd");
    $dumpvars(0, tb_shiftreg8_3);
    //init inputs
    #5 clk = 0;
    d=0;
    #3000 $finish;
end

always #50      clk = ~clk;
always #50      d = d + 1;
always #500     sel = sel + 1;

endmodule