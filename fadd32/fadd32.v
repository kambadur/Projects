`include "fadd.v"
module fadd32 (
    input [31:0] a, b,
    input cin,
    output cout,
    output [31:0] sum
);

wire [31:0] c_prop;
genvar i;
generate
    for(i=1; i<32; i=i+1) begin: fa
        fadd fadd_x(
            .a(a[i]),
            .b(b[i]),
            .cin(c_prop[i-1]),
            .cout(c_prop[i]),
            .sum(sum[i])
        );
    end
endgenerate

fadd fadd_0(
            .a(a[0]),
            .b(b[0]),
            .cin(cin),
            .cout(c_prop[0]),
            .sum(sum[0])
        );

assign cout = c_prop[31];    
endmodule