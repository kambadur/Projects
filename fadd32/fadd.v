module fadd (
    input a,
    input b,
    input cin,
    output sum,
    output cout
);

    assign sum = a^b^cin;
    assign cout = (a&b) | (b&cin) | (a&cin);
    
endmodule