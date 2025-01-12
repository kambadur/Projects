`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 01/11/2025 01:42:21 PM
// Design Name: I2C Controller for MCP4725 DAC
// Module Name: i2c_controller_mcp4725
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: I2C Controller for MCP4725 DAC. Initial design focuses on Standar Mode (100kHz)
// which is the default mode for the MCP4725.
// The design shall later be extended to fast mode (400kHz).I am using a board from Aliexpress that 
// used 4.7K pullups. They need to be replaced to <1K for in case the design has to be adapted for high-speed mode (3.4MHz).
// We shall use two shift registers, one for address and one for data. The address is 4-bits and the data is 12-bits with MCP4725.
// We shall use 8bit reg for address which also holds 1-bit for always write (0).
// We shall use a 16-bit reg for data.with the LSB bits 0-3 being always 0.    
// We shall use the device in Normal Mode and not Power Down Mode yet.
// We shall also not write to EEPROm yet.
// FSM is placed FPAG clock (aka system clock). The I2C clock is dericed from the FPGA clock. We used sclk to take care of state transitions.
// This was we can overcome issues related to edge senssitivity if FSM had to be placed under sclk.
//////////////////////////////////////////////////////////////////////////////////


module i2c_controller_mcp4725(
    input clk,					// FPGA clock
    input reset,				// Reset line
    //input  [15:0] data,		    // 16-bit data byte
    output reg scl,             // I2C clock line
    inout wire sda,              // I2C data line
    output reg done,             // Done signal to indicate end of transaction
    output reg nACK,             // NACK signal to indicate no ack from the device
    output reg bus_busy                   // signal to report bus busy
    );

    reg [7:0] shift_reg_addr;	    // (7-bit address + 1-bit R/~W) byte
    reg [7:0] shift_reg_msb_data;	// msb byte
    reg [7:0] shift_reg_lsb_data;   // lsb byte (4-bits data + 4-bits don't care)
    reg [7:0] shift_reg_cmd;	    // shift reg for cmd byte
    reg [15:0] clk_div_counter;     // 100MHz FPGA clock to 100KHz I2C clock
    reg [7:0] bus_idle_counter;      // 100KHz I2C scl to 1ms bus idle time
    reg [3:0] bitcount_addr;        // variable to track the number of bits for address shift register
    reg [3:0] bitcount_cmd;         // variable to track the number of bits for cmd shift register  
    reg [3:0] bitcount_msb_data;    // variable to track the number of bits in MSB for data shift register
    reg [3:0] bitcount_lsb_data;    // variable to track the number of bits in LSB for data shift register
    reg [3:0] state_reg;            // next state register for the FMS
    reg sda_out;                    // internal signal to drive sda
    reg sda_dir;                    // internal signal to control sda direction
        
    //System parameters
    //Fixed device address for the MCP4725
    parameter MCP4725 = 7'h60;  //MCP7425 device address
    //Command byte for Standard Mode wihtout EEPROM write
    //||C2|C1|C0|X|X|PD1|PD0|X||D11|D10|D9|D8|D7|D6|D5|D4||D3|D2|D1|D0|X|X|X|X||
    parameter CMDBYTE = 8'h59;  
    //For testing purposes input data is handled as parameter- 0xABC.
    //This shall be replaced with an input port in the final design.
    parameter LSBBYTE = 8'hBC;  //LSB data byte
    parameter MSBBYTE = 8'h0A;  //MSB data byte
    parameter CLKDIV = 16'd500; //100MHz FPGA clock to 100KHz I2C clock
    parameter SCL_SETUP_DLY = 8'd100;   //100 * 100ns = 10us. This is a critical parameter can be adpated as per datatsheet.
    // FSM state transitions happen when scl is low and this setup time has been elapsed.
    //I have chosen 1/5th of the scl pulse, so that by the time scl goes high, the FSM state transitions occur and signals get stabilized.

    //State machine states parameters
    parameter idle_state = 4'd0;
    parameter bus_idle_state = 4'd1;
    parameter start_state = 4'd2; 
    parameter send_addr_state = 4'd3;
    parameter wait_ack_addr_state = 4'd4;
    parameter send_cmd_state = 4'd5;
    parameter wait_cmd_ack_state = 4'd6;
    parameter send_data_msb_state = 4'd7;
    parameter wait_data_msb_ack_state = 4'd8;
    parameter send_data_lsb_state = 4'd9;
    parameter wait_data_lsb_ack_state = 4'd10;
    parameter stop_state = 4'd11;

    //SCLK generation from FPGA clock
    always @(posedge clk, posedge reset) begin
        if(reset) begin
            sda_out <= 1'b1;
            sda_dir <= 1'b0;    //means sda is high impedance
            scl <= 1'b1;        //scl is high on reset
            clk_div_counter <= 16'd0;
        end
        else begin
            if(clk_div_counter >= CLKDIV) begin
                if(state_reg != start_state && state_reg != stop_state) begin
                    scl <= ~scl;
                    clk_div_counter <= 16'd0;
                 end
                else clk_div_counter <= 16'd0;
            end
            else clk_div_counter <= clk_div_counter + 16'd1;
        end
    end
    
    //SDA control is placed under the FPGA clock
    always @(negedge clk, posedge reset) begin
        if(reset) state_reg <= idle_state;
        else begin
            case(state_reg)
                idle_state: begin 
                    sda_dir <= 1'b0;    //sda line is high impedance
                    sda_out <= 1'bz;
                end
                bus_idle_state: begin
                    sda_dir <= 1'b0;    //sda line is high impedance
                    sda_out <= 1'bz;
                end
                start_state: begin
                    if(scl == 1'b1) begin   //start condition
                        sda_dir <= 1'b1;    //sda line is driven by master
                        sda_out <= 1'b0;
                    end
                    else begin
                        sda_dir <= 1'b0;    //sda line is high impedance
                        sda_out <= 1'bz;
                    end
                end
                send_addr_state: begin
                    sda_dir <= 1'b1;    //sda line is driven by master
                    sda_out <= shift_reg_addr[7];
                end
                wait_ack_addr_state: begin
                    sda_dir <= 1'b0;    //sda line is high impedance
                    sda_out <= 1'bz;
                end
                send_cmd_state: begin
                    sda_dir <= 1'b1;    //sda line is driven by master
                    sda_out <= shift_reg_cmd[7];
                end
                wait_cmd_ack_state: begin
                    sda_dir <= 1'b0;    //sda line is high impedance
                    sda_out <= 1'bz;
                end
                send_data_msb_state: begin
                    sda_dir <= 1'b1;    //sda line is driven by master
                    sda_out <= shift_reg_msb_data[7];
                end
                wait_data_msb_ack_state: begin
                    sda_dir <= 1'b0;    //sda line is high impedance
                    sda_out <= 1'bz;
                end
                send_data_lsb_state: begin
                    sda_dir <= 1'b1;    //sda line is driven by master
                    sda_out <= shift_reg_lsb_data[7];
                end
                wait_data_lsb_ack_state: begin
                    sda_dir <= 1'b0;    //sda line is high impedance
                    sda_out <= 1'bz;
                end
                stop_state: begin
                    if(scl == 1'b1) begin   //stop condition
                        sda_dir <= 1'b1;    //sda line is driven by master
                        sda_out <= 1'b1;
                    end
                    else begin
                    sda_dir <= 1'b0;    //sda line is high impedance
                    sda_out <= 1'bz;
                end
                end
                default: begin
                    sda_dir <= 1'b0;    //sda line is high impedance
                    sda_out <= 1'b1;
                end
            endcase
        end
    end

    // FSM I2C Controller for MCP4725 DAC
    always @(posedge clk, posedge reset) begin
        if (reset) begin
            state_reg <= idle_state;
        end
        else if (clk_div_counter == SCL_SETUP_DLY) begin  // Allow state transition only when scl is low and setup times have met
            case (state_reg)
                idle_state: begin
                    bus_idle_counter <= 8'd0;
                    bitcount_addr <= 4'd0;
                    shift_reg_addr <= {MCP4725, 1'b0};          //Initialize shift_reg_add with the device address
                    shift_reg_cmd <= CMDBYTE;                   //Initialize shift_reg_cmd with the command byte
                    shift_reg_lsb_data <= LSBBYTE;              //Initialize shift_reg_lsb_data with the lsb data byte
                    shift_reg_msb_data <= MSBBYTE;              //Initialize shift_reg_msb_data with the msb data byte
                    nACK <= 1'b0;
                    done <= 1'b0;
                    scl <= 1'b1;    //scl is high on reset
                    bus_busy <= 1'b0;
                    state_reg <= bus_idle_state;
                end
                bus_idle_state: begin
                    if (bus_idle_counter == 8'd100) begin
                        bus_idle_counter <= 8'd0;
                        state_reg <= start_state;
                    end
                    else
                        bus_idle_counter <= bus_idle_counter + 8'd1;
                end
                start_state: begin
                    if(scl == 1'b1) begin
                        nACK <= 1'b0;   // Clear NACK
                        done <= 1'b0;   // Clear done
                        bus_busy <= 1'b1;
                        state_reg <= send_addr_state;
                    end
                    else begin
                        state_reg <= start_state;
                    end
                end
                send_addr_state: begin
                    if(bitcount_addr == 4'd8) begin
                        bitcount_addr <= 4'd0;
                        state_reg <= wait_ack_addr_state;
                    end
                    else begin
                        shift_reg_addr <= {shift_reg_addr[6:0], 1'b0};
                        bitcount_addr <= bitcount_addr + 4'd1;
                        state_reg <= send_addr_state;
                    end
                end
                wait_ack_addr_state: begin
                    if(sda == 1'b0) begin
                        state_reg <= send_cmd_state;
                    end
                    else begin
                        nACK <= 1'b1;   //no ack from the device
                        state_reg <= stop_state;    //we transit to stop state when there is not addr ack from the device.
                    end
                end
                send_cmd_state: begin
                    if(bitcount_cmd == 4'd8) begin
                        bitcount_cmd <= 4'd0;
                        state_reg <= wait_cmd_ack_state;
                    end
                    else begin
                        shift_reg_cmd <= {shift_reg_cmd[6:0], 1'b0};
                        bitcount_cmd <= bitcount_cmd + 4'd1;
                        state_reg <= send_cmd_state;
                    end
                end
                wait_cmd_ack_state: begin
                    if(sda == 1'b0) begin
                        state_reg <= send_data_msb_state;
                    end
                    else begin
                        nACK <= 1'b1;   //no ack from the device
                        state_reg <= stop_state;    //we transit to stop state when there is not cmd ack from the device.
                    end
                end
                send_data_msb_state: begin
                    if(bitcount_msb_data == 4'd8) begin
                        bitcount_msb_data <= 4'd0;
                        state_reg <= wait_data_msb_ack_state;
                    end
                    else begin
                        shift_reg_msb_data <= {shift_reg_msb_data[6:0], 1'b0};  //Note that only the lsb niblle shall be written to the device as the device only supports 12-bit DAC register.
                        bitcount_msb_data <= bitcount_msb_data + 4'd1;
                        state_reg <= send_data_msb_state;
                    end
                end
                wait_data_msb_ack_state: begin
                    if(sda == 1'b0) begin
                        state_reg <= send_data_lsb_state;
                    end
                    else begin
                        nACK <= 1'b1;   //no ack from the device
                        state_reg <= stop_state;    //we transit to stop state when there is not msb data ack from the device.
                    end
                end
                send_data_lsb_state: begin
                    if(bitcount_lsb_data == 4'd8) begin
                        bitcount_lsb_data <= 4'd0;
                        state_reg <= wait_data_lsb_ack_state;
                    end
                    else begin
                        shift_reg_lsb_data <= {shift_reg_lsb_data[6:0], 1'b0};
                        bitcount_lsb_data <= bitcount_lsb_data + 4'd1;
                        state_reg <= send_data_lsb_state;
                    end
                end
                wait_data_lsb_ack_state: begin
                    if(sda == 1'b0) begin
                        done <= 1'b1;   //transaction is done
                        state_reg <= stop_state;
                    end
                    else begin
                        nACK <= 1'b1;   //no ack from the device
                        state_reg <= stop_state;    //we transit to stop state when there is not lsb data ack from the device.
                    end
                end
                stop_state: begin
                    if(scl == 1'b1) begin
                        sda_dir <= 1'b1;    //sda line is driven by master
                        sda_out <= 1'b1;
                        bus_busy <= 1'b0;
                        state_reg <= idle_state;
                    end
                    else begin
                        state_reg <= stop_state;
                    end
                end
                default: state_reg <= idle_state;
            endcase
        end
    end

assign sda = sda_dir ? sda_out : 1'bz;  //sda is high impedance when sda_dir is 0

endmodule
