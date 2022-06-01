module button_counter(
    input                rst_in,
    input                clk_in,
    output reg [2:0]     led
);

wire rst, clk; 
reg clk_div;
reg [61:0] div_counter;


initial begin
    clk_div = 1'b0;
    div_counter = 62'b0;
end


//Reset is the inverse of the first button
assign rst = ~rst_in;

//Clock is the inverse of the second button
assign clk = ~clk_in;

//clock divider to drive the counter
always @(posedge clk) begin
    if(div_counter == 62'b0) begin
        clk_div <= ~clk_div;
    end
    else  div_counter <= div_counter + 1'b1;
end

//Count up on risign clock edge or reset on button 0 press
always @(posedge clk_div or posedge rst) begin
    if(rst == 1'b1) begin
        led <= 3'b111;
    end
    else begin
        led = led + 1'b1;
    end
end
endmodule
