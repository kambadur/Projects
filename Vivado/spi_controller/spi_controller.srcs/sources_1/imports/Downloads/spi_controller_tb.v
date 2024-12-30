`include "spi_controller.v"
`timescale 1ns / 1ps 

module spi_controller_tb();
	reg clk;					// FPGA clock
	reg reset;				// Reset line
	//reg [7:0] control;	// 8-bit control byte
	//reg [7:0] data;		// 8-bit daty byte
	reg start;				// start command
	wire nCS;				// chipselect
	wire mosi;			// serial MOSI
	wire done;
	wire sclk;

	
	//Instantitae the UUT
	spi_controller uut0(
		.clk(clk),
		.reset(reset),
		//.control(control),
		//.data(data),
		.start(start),
		.nCS(nCS),
		.mosi(mosi),
		.done(done),
		.sclk(sclk)
	);
	
	initial begin
		clk = 0;
		reset = 1;
		//control = 8'hFF;
		//data = 8'hAB;
		//start = 1;
	end
	
	always #50 clk = !clk;	//100MHz FPGA clock
	
	initial begin
		#200 	reset = 1'b0;
		//#200		start = 1'b0;
		//#200		start = 1'b1;
		#5000	$finish;
	end
	
	initial begin
		$dumpfile("spi_controller.vcd");
		$dumpvars;
	end
	
	/*
	initial begin
		$display("\t, \ttime, \tclk, \treset, \tstart, \tmosi, \tdone");
		$monitor("%d, \t%d, \t%d, \t%d, \%d, \%d", $time, clk, reset, start, mosi, done);
	end
	*/
endmodule
	
	
	
	