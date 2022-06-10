`default_nettype none
`include "../fadd/fadd.v"

module bcd_fadd_1digit (
    input [3:0] a,
    input [3:0] b,
    input cin,
    output reg cout,
    output reg [3:0] sum
);

wire [3:0] sum_binAdd;
wire [3:0] cout_binAdd;

//Instantiate 1-bit full adder for 4 times
genvar i;
generate    //3 instances
    for(i=1; i<4; i=i+1) begin: fa
        fadd fadd_inst1(.a(a[i]), .b(b[i]), .cin(cout_binAdd[i-1]), .cout(cout_binAdd[i]), .sum(sum_binAdd[i]));
    end
endgenerate
fadd fadd_inst0(.a(a[0]), .b(b[0]), .cin(cin), .cout(cout_binAdd[0]), .sum(sum_binAdd[0])); //1 instance for lsb

always @(*) begin
    if((cout_binAdd[3] == 1) | ((sum_binAdd[3])&(sum_binAdd[2]) == 1) | ((sum_binAdd[3])&(sum_binAdd[1]) == 1)) begin
        sum = sum_binAdd + 6;
        cout = 1;
    end
    else begin
        sum = sum_binAdd;
        cout = cout_binAdd[3];
    end
end
    
endmodule