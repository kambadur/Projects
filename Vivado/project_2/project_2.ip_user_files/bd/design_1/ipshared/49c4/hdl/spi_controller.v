//`include "spi_controller_axi_slv.v"
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Adapted for AXI4 Lite interface
// 
//////////////////////////////////////////////////////////////////////////////////

module spi_controller(
	input clk,					// FPGA clock
	input nreset,				// Active Low Reset line
	input [31:0] axi_control,		// 8-bit control byte
	input [31:0] axi_data,			// 8-bit data byte
	//input start,				// start command
	output reg sclk,			// derived SPI clock
	output reg nCS,				// chipselect
	output reg mosi,			// serial MOSI
	output reg done,			// done signal- PS Interrupt signal
	output reg cmd_clear_start				// clear start command - PS Interrupt signal
	);
	
	reg [3:0] counter; 		//counter for clock divider
	reg [15:0] shift_reg;	//our shift register to transmit our 16-bits onto the MOSI line
	reg [1:0] state_reg;	//our next-state register
	reg [3:0] bitcount;		//variable to track the number of bits
	reg spi_clk_en;			//enable signal for SPI clock
	//Slicing needed for AXI adaptation
	wire [7:0] sliced_control_byte;		// 8-bit control byte
	wire [7:0] sliced_data_byte;			// 8-bit data byte
	wire rstart;				// start command

	//AXI interfacing to the local IP
	assign sliced_control_byte = axi_control[7:0];	//slice control byte
	assign sliced_data_byte = axi_data[7:0];		//slice data byte
	assign rstart = axi_control[31];	//slice start command from the control byte. This shall be take care from the PS side.
	
	//SPI controller parameters
	parameter BITSTOSHIFT = 4'b1111;
	parameter CLKDIV = 4'd5;	//10MHz SCLK
	
	
	//Clock divider to derive 10MHz SCLK from 100MHz FPGA clock
	always @(posedge clk, negedge nreset) begin
		if(~nreset) begin
			sclk <= 1'b0;
			counter <= 4'd0;
		end
		else if(counter >= CLKDIV) begin
			sclk <= ~sclk;
			counter <= 4'd0;
		end
		else counter <= counter + 1'b1;
	end

	//SPI clock enable signal block
	always @(posedge clk, negedge nreset) begin
		if (~nreset) begin
			spi_clk_en <= 1'b0;
		end else if (counter == 4'd1) begin
			spi_clk_en <= (sclk == 1'b1);
		end else begin
			spi_clk_en <= 1'b0;
		end
	end

	//State machine parameters
	parameter idle_state = 2'b00;
	parameter load_state = 2'b01;
	parameter start_state = 2'b10;
	parameter shift_state = 2'b11;
	
	
	//State machine for SPI controller targeting AD7303 peripheral
	always @(posedge clk, negedge nreset) begin
		if(~nreset) begin
			state_reg <= idle_state;
			bitcount <= 4'd0;
    		shift_reg <= 16'd0;
		end
		else begin
			if (spi_clk_en) begin
				case(state_reg)
					idle_state: begin
						bitcount <= BITSTOSHIFT;
						if(rstart) state_reg <= load_state;
						else state_reg <= idle_state;
					end
					
					load_state: begin
						shift_reg <= {sliced_control_byte, sliced_data_byte};
						state_reg <= start_state;
					end
					
					start_state: begin
						mosi <= shift_reg[BITSTOSHIFT]; //shift MSB out onto the MOSI line
						shift_reg <= {shift_reg[BITSTOSHIFT-1:0], 1'b0}; //prepare shift reg for the next shift operation
						bitcount <= bitcount - 1'd1; //track bitcount
						state_reg <= shift_state;	// transit to shift state
					end
					
					shift_state: begin
						mosi <= shift_reg[BITSTOSHIFT];		//shift MSB out onto the MOSI line					
						shift_reg <= {shift_reg[BITSTOSHIFT-1:0], 1'b0}; //prepare shift reg for the next shift operation
						if(bitcount == 4'd0) begin
							state_reg <= idle_state;
						end
						else begin
							bitcount <= bitcount - 1'd1;	 //track bitcount
							state_reg <= shift_state;	// stay here
						end
					end
				endcase
			end
		end
	end

	//Output logic for the SPI controller. Purely combinatorial
	always @(*) begin
		case (state_reg)
			idle_state: begin
				nCS = 1'b1;
				done = 1'b0;
				cmd_clear_start = 1'b0;
			end
			load_state: begin
				cmd_clear_start = 1'b1;
				nCS = 1'b0;
				done = 1'b0;
			end
			start_state: begin
				nCS = 1'b0;
				done = 1'b0;
				cmd_clear_start = 1'b0;
			end
			shift_state: begin
				nCS = 1'b0;
				cmd_clear_start = 1'b0;
				if(bitcount == 4'd0) done = 1'b1;
				else done = 1'b0;
			end
			default: begin
				nCS = 1'b1;
				done = 1'b0;
				cmd_clear_start = 1'b0;
			end
		endcase
	end

endmodule	