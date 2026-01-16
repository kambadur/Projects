module CountNumOfPatters #(
    parameter DATA_WIDTH = 32,
    parameter PATTERN_WIDTH = 3,
    parameter DATA_OUT_WIDTH = $clog(DATA_WIDTH)
) (
    input [DATA_WIDTH-1 : 0] In,
    input [PATTERN_WIDTH-1 : 0] Pattern,
    output [DATA_OUT_WIDTH-1 : 0] CountOut
);

integer i_count;

// Count the number of times the pattern appears in the input data
always @(*) begin
    i_count = 0;
    for (int i_count = (DATA_WIDTH-1); i_count > (PATTERN_WIDTH-2); i_count = i_count - 1) begin
        if (In[i_count -: PATTERN_WIDTH] == Pattern) begin
            CountOut = CountOut + 1;
        end
    end
end

endmodule