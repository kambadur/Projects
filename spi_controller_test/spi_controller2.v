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

localparam IDLE    = 2'd0,
           LOAD    = 2'd1,
           TRANSFER= 2'd2,
           DONE    = 2'd3;

reg [4:0] prescaler_cnt;
reg       sclk_reg, sclk_d, spi_edge;
reg [15:0] shift_reg;
reg [3:0]  bitcount;
reg [1:0]  state_reg, state_nxt;
reg        start_req;

always @(posedge clk) begin
  if (!nreset) begin
    prescaler_cnt <= 0;
    sclk_reg      <= 0;
  end else if (prescaler_cnt == 24) begin  // for 2MHz
    prescaler_cnt <= 0;
    sclk_reg      <= ~sclk_reg;
  end else
    prescaler_cnt <= prescaler_cnt + 1;

  // edge detect
  sclk_d   <= sclk_reg;
  spi_edge <=  sclk_reg & ~sclk_d;
end

// latch start asynchronously
always @(posedge clk or negedge nreset) begin
  if (!nreset)      start_req <= 1'b0;
  else if (state_reg == IDLE && start)
                     start_req <= 1;
  else if (state_reg == DONE)
                     start_req <= 0;
end

// state machine
always @(posedge clk or negedge nreset) begin
  if (!nreset)
    state_reg <= IDLE;
  else
    state_reg <= state_nxt;
end

always @(*) begin
  state_nxt = state_reg;
  case (state_reg)
    IDLE:    if (start_req) state_nxt = LOAD;
    LOAD:    state_nxt = TRANSFER;
    TRANSFER: if (spi_edge && bitcount == 0) state_nxt = DONE;
    DONE:    state_nxt = IDLE;
  endcase
end

// datapath
always @(posedge clk or negedge nreset) begin
  if (!nreset) begin
    bitcount  <= 0;
    shift_reg <= 0;
    mosi      <= 0;
    nCS       <= 1;
    done      <= 0;
  end else begin
    done <= (state_reg == DONE);
    nCS  <= (state_reg == TRANSFER || state_reg == LOAD) ? 0 : 1;
    case (state_reg)
      LOAD: begin
        shift_reg <= {control, data};
        bitcount  <= 4'd15;
      end
      TRANSFER: if (spi_edge) begin
        mosi      <= shift_reg[15];
        shift_reg <= {shift_reg[14:0], 1'b0};
        bitcount  <= bitcount - 1;
      end
      default: ;
    endcase
  end
end
endmodule