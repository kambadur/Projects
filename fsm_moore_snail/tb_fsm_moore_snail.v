`timescale 1ns / 1ps
`include "fsm_moore_snail.v"

module tb_fsm_moore_snail;
reg clk_in, rst_in, sequence_in;
wire smile_out;

fsm_moore_snail uut(
    .clk_in(clk_in),
    .rst_in(rst_in),
    .sequence_in(sequence_in),
    .smile_out(smile_out)
);

initial begin
    // dump tb simulation to vcd file
    $dumpfile("tb_fsm_moore_snail.vcd");
    $dumpvars(0, tb_fsm_moore_snail);
    //init inputs
    clk_in = 0;
    rst_in = 0;
    sequence_in = 0;
    #3000 $finish;  //end of simulation time
end

always  #50    clk_in = ~clk_in;
always  #1075   rst_in = ~rst_in;
always  #200    sequence_in = ~sequence_in;

endmodule   //end of testbench tb_fsm_moore_snail