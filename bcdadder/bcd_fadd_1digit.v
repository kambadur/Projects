module bcd_fadd_1digit (
    input [3:0] a,
    input [3:0] b,
    input cin,
    output cout,
    output [3:0] sum
);

wire [3:0] sum_binAdd;
wire cout_binAdd;

assign sum_binAdd = a^b^cin;
assign cout_binAdd = (a&b)|(b&cin)|(a&cin);

always @(*) begin
    if((cout_binAdd == 1) | ((~sum_binAdd[3])&(~sum_binAdd[2]) == 1) | ((~sum_binAdd[3])&(~sum_binAdd[1]) == 1))
        sum <= sum_binAdd + 6;
        cout <= 1;
    else
        sum <= sum_binAdd;
        cout <= cout_binAdd;
end
    
endmodule