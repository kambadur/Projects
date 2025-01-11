//SPI Controller for AD7303 PMOD DA1
//This module uses the FPGA clock directly as SPI Clock
//SPI Clock shall be directly tied to the FPGA clock on-board Cmod-S7 (12Mhz)
//To be tested on the hardware
module spi_controller(
	input clk,					// FPGA clock
	input reset,				// Reset line
	//input [7:0] control,	// 8-bit control byte
	//input [7:0] data,		// 8-bit daty byte
	input start,				// start command
	output reg nCS,				// chipselect
	output reg mosi,			// serial MOSI
	output reg done,
	output reg sclk
	);
	
	reg [15:0] shift_reg;	//our shift register to transmit our 16-bits onto the MOSI line
	reg [1:0] state_reg;	//our next-state register
	reg [3:0] bitcount;		//variable to track the number of bits
	reg [1:0] counter;		//variable to divide the clock by 6 (12Mhz to 2Mhz)
	
	//Clock divider by 2: sclk
	always @(negedge clk) begin
		if(reset) begin
			sclk <= 1'b0;
			counter <= 2'd0;
		end
		else if(counter == 2'd2) begin
			sclk <= ~sclk;
			counter <= 2'd0;
		end
		else counter <= counter + 2'd1;
	end

	//Parameters
	parameter BITSTOSHIFT = 4'b1111;
	parameter control = 8'h00;
	parameter data = 8'h7F;

	//State machine parameters
	parameter idle_state = 2'b00;
	parameter load_state = 2'b01;
	parameter start_state = 2'b10;
	parameter shift_state = 2'b11;	
	
	//State machine for SPI controller targeting AD7303 peripheral
	always @(negedge sclk) begin
		if(reset) state_reg <= idle_state;
		else begin
			case(state_reg)
				idle_state: begin
					nCS = 1'b1;		// keep chip select high
					state_reg <= load_state;
				end
				
				load_state: begin
					done = 1'b0;	// reset done to 0
					bitcount <= BITSTOSHIFT;
					shift_reg <= {control, data};
					state_reg <= start_state;
				end
				
				start_state: begin
					nCS <= 1'b0; //chipselect AD7303
					mosi <= shift_reg[BITSTOSHIFT]; //shift MSB out onto the MOSI line
					shift_reg <= {shift_reg[BITSTOSHIFT-1:0], 1'b0}; //prepare shift reg for the next shift operation
					bitcount = bitcount - 1'd1; //track bitcount
					state_reg <= shift_state;	// transit to shift state
				end
				
				shift_state: begin
				    mosi <= shift_reg[BITSTOSHIFT];		//shift MSB out onto the MOSI line					
					shift_reg <= {shift_reg[BITSTOSHIFT-1:0], 1'b0}; //prepare shift reg for the next shift operation
					if(bitcount == 3'd0) begin
						done = 1'b1;
						//nCS = 1'b1;		// ?? check if we can already pull nCS high?
						state_reg <= idle_state;
					end
					else begin
						bitcount = bitcount - 1'd1;	 //track bitcount
						state_reg <= shift_state;	// stay here
					end
				end
				default: state_reg <= idle_state;
			endcase
		end
	end
endmodule	