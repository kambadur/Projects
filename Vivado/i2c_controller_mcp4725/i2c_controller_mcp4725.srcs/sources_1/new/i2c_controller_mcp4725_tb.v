`include "i2c_controller_mcp4725.v"
`timescale 1ns / 1ps 

module i2c_controller_mcp4725_tb();
	reg clk;					// FPGA clock
    reg reset;				// Reset line
    //reg  [15:0] data,		    // 16-bit data byte
    wire scl;             // I2C clock line
    inout wire sda;              // I2C data line
    wire done;             // Done signal to indicate end of transaction
    wire nACK;             // NACK signal to indicate no ack from the device
    wire bus_busy;                   // signal to report bus busy

	
	//Instantitae the UUT
	i2c_controller_mcp4725 uut0(
		.clk(clk),
		.reset(reset),
		//.control(control),
		//.data(data),
		.scl(scl),
		.sda(sda),
		.done(done),
		.nACK(nACK),
		.bus_busy(bus_busy)
	);
	
	initial begin
		clk = 1;
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
		#10000000	$finish;
	end
	
	initial begin
		$dumpfile("i2c_controller_mcp4725.vcd");
		$dumpvars;
	end
	
	/*
	initial begin
		$display("\t, \ttime, \tclk, \treset, \tstart, \tmosi, \tdone");
		$monitor("%d, \t%d, \t%d, \t%d, \%d, \%d", $time, clk, reset, start, mosi, done);
	end
	*/
endmodule
	
	
	
	