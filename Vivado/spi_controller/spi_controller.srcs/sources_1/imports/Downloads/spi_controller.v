module spi_controller(
	input clk,					// FPGA clock
	input nreset,				// Active Low Reset line
	//input [7:0] control,		// 8-bit control byte
	//input [7:0] data,			// 8-bit data byte
	input start,				// start command
	output reg sclk,			// derived SPI clock
	output reg nCS,				// chipselect
	output reg mosi,			// serial MOSI
	output reg done
	);

    parameter IDLE    = 2'b00;
    parameter CS_LOW  = 2'b01;
    parameter SHIFT   = 2'b10;
    parameter CS_HIGH = 2'b11;
	/*input bytes control and data have been commented out and added as parameters just for testing
	User can enable them by uncommenting them and removing the parameters to tie them to their application.
	*/
	parameter control = 8'h00; //8-bit control byte
	parameter data = 8'h7F;   //8-bit data byte

    reg [1:0] state_cur, state_nxt;
    reg [15:0] shift_reg;	//our shift register to transmit our 16-bits onto the MOSI line. We load our data bytes onto here
    reg [4:0] bitcount;		//variable to track the number of bits 15 to 0
    localparam BITSTOSHIFT = 4'b1111; //16 bits to shift out (8 control + 8 data)
    localparam PRESCALER = 8'd49;	//2MHz SCLK, assuming 100MHz clock
    reg [6:0] clk_counter; 		//counter for clock divider

    wire sclk_rise = (clk_counter == PRESCALER);        // “one-shot” when the counter ends
    wire sclk_fall = (clk_counter == (PRESCALER>>1));   // “one-shot” halfway through


    // Lets not do a free-running clock. 
    //We would rather let the FSM generate every SCLK edge itself.
    always @(posedge clk) begin
        if(!nreset) clk_counter <= 7'd0;
        else if(state_cur == IDLE) clk_counter <= 7'd0;
        else if (clk_counter == PRESCALER) clk_counter <= 7'd0;
        else clk_counter <= clk_counter + 1'b1;
    end
    // Generate SCLK based on the clock counter
    always @(posedge clk) begin
        if (!nreset) sclk <= 1'b0;
        else if (state_cur != IDLE && (clk_counter == PRESCALER)) sclk <= ~sclk; //toggle clock at the end of the count and only in the states other than IDLE
        else if (state_cur == IDLE) sclk <= 1'b0; //keep SCLK low in IDLE state
        else sclk <= sclk; //expliciting- hold SCLK state
    end

    //two-block FSM
    // Sequential part: State register
    always @(posedge clk) begin
        if (!nreset) state_cur <= IDLE;
        else state_cur <= state_nxt;
    end

    //Combinatorial part:
    always @(*) begin
        //default section
        state_nxt = state_cur; //default to current state
        nCS = 1'b1; //default to chip select high
        mosi = shift_reg[15]; //default to MOSI low
        done = 1'b0; //default to done low

        case(state_cur)
        IDLE:   begin
            nCS = 1'b1; //keep chip select high
            if (start) begin
                state_nxt = CS_LOW; //go to CS_LOW state on start command
                shift_reg = {control, data}; //load the control and data bytes into the shift register
                bitcount = BITSTOSHIFT; //set bit count to 15 (16 (8+8) bits total)
            end
        end
        CS_LOW: begin
            nCS = 1'b0; //assert chip select
            if (sclk_fall && (sclk != 1'b1)) begin  //we shift only when the SCLK is LOW that the device can sample on the next rising SCLK edge
                mosi = shift_reg[BITSTOSHIFT]; //drive MOSI with MSB of shift register
                //shift_reg = {shift_reg[BITSTOSHIFT-1:0], 1'b0}; //shift left
                state_nxt = SHIFT; //go to SHIFT state when done
            end
        end
        SHIFT: begin
            nCS = 1'b0; //keep chip select asserted
            if (sclk_fall && (sclk != 1'b1)) begin
                mosi = shift_reg[BITSTOSHIFT]; //drive MOSI with MSB of shift register
                shift_reg = {shift_reg[BITSTOSHIFT-1:0], 1'b0}; //shift left
                bitcount = bitcount - 1'b1;
                if (bitcount == 0) state_nxt = CS_HIGH; //go to CS_HIGH state when done
            end
        end
        CS_HIGH: begin
            nCS = 1'b0; //Keep chip select asserted
            if (sclk_fall && (sclk != 1'b1)) begin
                state_nxt = IDLE; //go back to IDLE state on SCLK rising edge
                //nCS = 1'b1; //deassert chip select
                done = 1'b1; //set done high
            end
        end
        default: begin
            state_nxt = IDLE; //default to IDLE state
            nCS = 1'b1; //default to chip select high
            mosi = 1'b0; //default to MOSI low
            done = 1'b0; //default to done low
        end
    endcase

    end
    endmodule
