`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// 
//////////////////////////////////////////////////////////////////////////////////

module spi_controller(
	input clk,					// FPGA clock
	input nreset,				// Active Low Reset line
	input [7:0] control,		// 8-bit control byte
	input [7:0] data,			// 8-bit data byte
	input start,				// start command
	output reg sclk,			// derived SPI clock
	output reg nCS,				// chipselect
	output reg mosi,			// serial MOSI
	output reg done
	);
	
	reg [7:0] counter; 		//counter for clock divider
	reg [15:0] shift_reg;	//our shift register to transmit our 16-bits onto the MOSI line
	reg [1:0] state_reg;	//our next-state register
	reg [3:0] bitcount;		//variable to track the number of bits
	reg spi_clk_en;			//enable signal for SPI clock
	
	//SPI controller parameters
	parameter BITSTOSHIFT = 4'b1111;
	parameter PRESCALER = 8'd49;	//2MHz SCLK


	//Clock divider to derive 2MHz SCLK from 100MHz FPGA clock
	always @(posedge clk, negedge nreset) begin
		if(~nreset) begin
			sclk <= 1'b0;
			counter <= 8'd0;
		end
		else if(counter >= PRESCALER) begin
			sclk <= ~sclk;
			counter <= 8'd0;
		end
		else counter <= counter + 1'b1;
	end

	//SPI clock enable signal block
	/* reg sclk_d;
	always @(posedge clk) begin
  		sclk_d <= sclk;
  		spi_clk_en <= (~sclk_d & sclk);   // 1-cycle pulse on sclk rising edge
	end */

	always @(posedge clk, negedge nreset) begin
	if (~nreset) begin
		spi_clk_en <= 1'b0;
	end else if (counter == 4'd5) begin
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
		end
		else begin
			if (spi_clk_en) begin
				case(state_reg)
					idle_state: begin
						if(start) state_reg <= load_state;
						else state_reg <= idle_state;
					end
					
					load_state: begin
						bitcount <= BITSTOSHIFT;
						shift_reg <= {control, data};
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
				nCS <= 1'b1;
				if(bitcount == 4'd0) done <= 1'b1;
				else done <= 1'b0;
			end
			load_state: begin
				nCS <= 1'b1;
				done <= 1'b0;
			end
			start_state: begin
				nCS <= 1'b0;
				done <= 1'b0;
			end
			shift_state: begin
				nCS <= 1'b0;
			end
			default: begin
				nCS <= 1'b1;
			end
		endcase
	end

endmodule	