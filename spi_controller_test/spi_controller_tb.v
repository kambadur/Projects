//`include "spi_controller_100.v"
`include "spi_controller_1.v"
`timescale 1ns / 1ps 

module spi_controller_100_tb();
	reg clk;					// FPGA clock
	reg nreset;				// Reset line
	reg [7:0] control;	// 8-bit control byte
	reg [7:0] data;		// 8-bit data byte
	reg start;				// start command
	wire sclk;			// derived SPI clock
	wire nCS;				// chipselect
	wire mosi;			// serial MOSI
	wire done;

	//Instantiate the UUT
	spi_controller uut0(
		.clk(clk),
		.nreset(nreset),
		.control(control),
		.data(data),
		.start(start),
		.sclk(sclk),
		.nCS(nCS),
		.mosi(mosi),
		.done(done)
	);
	
	initial begin
		clk = 0;
		nreset = 0;
		control = 8'h00;
		data = 8'h7F;
		start = 0;
	end
	
	always #5 clk = !clk;	//100MHz FPGA clock
	
	initial begin
		#50 	nreset = 1'b0;
		#60 	nreset = 1'b1;
		#20		start = 1'b1;
		#200		start = 1'b0;
		#20000	$finish;
	end
	
	initial begin
		$dumpfile("spi_controller.vcd");
		$dumpvars;
	end
	
	/*
	initial begin
		$display("\t, \ttime, \tclk, \treset, \tstart, \tmosi, \tdone");
		$monitor("%d, \t%d, \t%d, \t%d, \%d, \%d", $time, clk, nreset, start, mosi, done);
	end
	*/
endmodule
