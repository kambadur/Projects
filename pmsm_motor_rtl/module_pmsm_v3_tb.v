`timescale 1ns / 1ps
`include "module_pmsm_v3.v"

module module_pmsm_v3_tb;
  reg clk;
  reg [2:0] V_phase;
  reg [15:0] position_in;
  wire [15:0] I_a;
  wire [15:0] I_b;
  wire [15:0] I_c;
  wire [15:0] torque;
  wire [15:0] speed;
  wire [15:0] position;

  integer elapsed_time;
  integer counter;

  // Instantiate the PMSM_v3 module
  PMSM_v3 dut (
    .clk(clk),
    .V_phase(V_phase),
    .I_a(I_a),
    .I_b(I_b),
    .I_c(I_c),
    .torque(torque),
    .speed(speed),
    .position(position)
  );

  // Generate clock
  always #5 clk = ~clk;

  // Apply phase voltages
  initial begin
    $dumpfile("module_pmsm_v3_tb.vcd");
    $dumpvars(0, module_pmsm_v3_tb);
    clk = 0;
    counter = 0;
    elapsed_time = 0;
    V_phase = 3'b000; // Stop
    position_in = 4096;
    
    repeat (500) begin  // Repeat for 200 clock cycles
    // Increment the counter and wrap around to 0 after 6
    counter = counter + 1;
    if (counter == 7) counter = 0;

    // Set the voltage based on the counter value
    case (counter)
      0: begin V_phase = 3'b001; #20; end
      1: begin V_phase = 3'b010; #20; end
      2: begin V_phase = 3'b100; #20; end
      3: begin V_phase = 3'b011; #20; end
      4: begin V_phase = 3'b110; #20; end
      5: begin V_phase = 3'b101; #20; end
      6: begin V_phase = 3'b111; #20; end
      default: begin V_phase = 3'b000; #20; end
    endcase

    //#10;  // Wait for 10 ns; each v_phase is voltage is applied for this duration
    elapsed_time = elapsed_time + 20;  // Increment elapsed time by 10 ns
  end
  $finish;
  end

  /*  
    #100;

    V_phase = 3'b001; // Phase A
    #100;

    V_phase = 3'b010; // Phase B
    #100;

    V_phase = 3'b011; // Phase C
    #100;

    V_phase = 3'b100; // Reverse Phase A
    #100;

    V_phase = 3'b101; // Reverse Phase B
    #100;

    V_phase = 3'b110; // Reverse Phase C
    #100;

    V_phase = 3'b000; // Stop
    #100;

    $finish;
  end
  */
endmodule
