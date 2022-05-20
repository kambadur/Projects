module fsm_moore_snail(
    input clk_in,
    input rst_in,
    input sequence_in,
    output reg smile_out
);

// State Encoding for the three states S0, S1, S2
parameter S0 = 2'b00,
        S1 = 2'b01,
        S2 = 2'b10;

// Declare current and next state variables
reg [1:0] nextState, state;

// Next state logic
always @(*) begin
    case(state)
        S0:     begin
                    if(sequence_in) 
                        nextState = S0; 
                    else            
                        nextState = S1; 
                end
        S1:     begin
                    if(sequence_in)  
                        nextState = S2; 
                    else
                        nextState = S1; 
                end
        S2:     begin
                    if(sequence_in)  
                        nextState = S0;
                    else
                        nextState = S1;
                end
        default:    nextState = S0;
    endcase
end

// State register
always @(posedge clk_in, posedge rst_in) begin
    if (rst_in)
        state <= S0;   // reset the state to s0
    else
        state <= nextState;   // update the current state
end

// Output logic
always @(*) begin
    smile_out = (state == S2) ? 1'b1: 1'b0;
end

endmodule // end of module fsm_moore_snail