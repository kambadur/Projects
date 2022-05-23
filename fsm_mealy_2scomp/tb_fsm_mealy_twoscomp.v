`timescale 1ns / 1ps
`include "fsm_mealy_twoscomp.v"

module tb_fsm_mealy_twoscomp;
reg clk_in, rst_in, A_in;
wire N_out;

fsm_mealy_twoscomp uut(
    .clk_in(clk_in),
    .rst_in(rst_in),
    .A_in(A_in),
    .N_out(N_out)
);

initial begin
    //dump simulation result to vcd file
    $dumpfile("tb_fsm_mealy_twoscomp.vcd");
    $dumpvars(0, tb_fsm_mealy_twoscomp);
    //init inputs
    clk_in = 0;
    rst_in = 0;
    A_in = 0;
    #1000 $finish;   //end of simulation time
end

always #50    clk_in = ~clk_in;
always #700   rst_in = ~rst_in;
always #100    A_in = ~A_in;
endmodule       //end of testbench module for fsm_mealy_2scomp