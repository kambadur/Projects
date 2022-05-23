module fsm_mealy_twoscomp(
    input clk_in,
    input rst_in,
    input A_in,
    output reg N_out
);

// State encoding
parameter C0 = 1'b0,
        C1 = 1'b1;

// State variables
reg nextState, state;

// State register
always @(posedge clk_in, posedge rst_in) begin
    if(rst_in)
        state <= C1;
    else
        state <= nextState;
end

// Next state logic
always @ (*) begin
case(state)
    C1:     begin
                if(~A_in | 1'b1) 
                    nextState = C0;
                else
                    nextState = C1;    
            end
    C0:     nextState = C0;
    default:    nextState = C1;
endcase
end

// Output logic
always @(*) begin
    N_out = ((~A_in & ~state) | (A_in & state))? 1'b1: 1'b0;
end
endmodule       //end of module fsm_mealy_twoscomp