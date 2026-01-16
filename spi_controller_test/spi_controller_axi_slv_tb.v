`include "spi_controller_axi_slv.v"
`timescale 1ns/1ps

module tb_spi_controller;

  // Testbench signals
  reg         clk;
  reg         nreset;
  reg [31:0]  axi_control;
  reg [31:0]  axi_data;
  
  // Wires connected to the outputs of the DUT
  wire        sclk;
  wire        nCS;
  wire        mosi;
  wire        done;
  wire        cmd_clear_start;
  
  // Instantiate the DUT (your spi_controller)
  spi_controller uut (
    .clk(clk),
    .nreset(nreset),
    .axi_control(axi_control),
    .axi_data(axi_data),
    .sclk(sclk),
    .nCS(nCS),
    .mosi(mosi),
    .done(done),
    .cmd_clear_start(cmd_clear_start)
  );
  
  // Clock generation: 100 MHz clock (period = 10 ns)
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end
  
  // Main stimulus process
  initial begin
    // Initialize signals and hold reset
    nreset = 0;
    axi_control = 32'h00000000;
    axi_data    = 32'h000000AA;  // initial data byte (only LSB used)
    
    #20;            // wait a few cycles
    nreset = 1;     // release reset

    // -----------------------------
    // Transaction 1: start the SPI transfer
    // -----------------------------
    // Assert start bit (axi_control[31]) to trigger a transaction.
    axi_control = 32'h80000000; // start bit = 1, rest = 0
    
    // Wait until the DUT signals that it has loaded and wants to clear the start command.
    wait (cmd_clear_start == 1);
    $display("Time %t: cmd_clear_start asserted. Clearing start bit.", $time);
    
    // Simulate the PS ISR clearing the start bit.
    axi_control = axi_control & ~(32'h80000000);
    #20;
    
    // Wait for the SPI controller to complete its transfer.
    wait (done == 1);
    $display("Time %t: done asserted. Reloading axi_data and reasserting start bit.", $time);
    
    // -----------------------------
    // Transaction 2: prepare for the next transfer after done ISR.
    // -----------------------------
    // Under the done ISR, we update the LSB of axi_data and reassert the start bit.
    axi_data[7:0] = axi_data[7:0] + 8'd1;   // update LSB of axi_data
    axi_control   = axi_control | 32'h80000000; // set axi_control[31]
    #20;
    
    // Wait again for the DUT to ask for clearing the start command.
    wait (cmd_clear_start == 1);
    $display("Time %t: cmd_clear_start asserted again. Clearing start bit.", $time);
    axi_control = axi_control & ~(32'h80000000);
    #20;
    
    // Wait for the transfer to finish.
    wait (done == 1);
    $display("Time %t: done asserted again. Test complete.", $time);
     #5000	$finish;
    $stop;  // end simulation
  end
 
  initial begin
		$dumpfile("spi_controller_axi_slv.vcd");
		$dumpvars;
	end

endmodule
