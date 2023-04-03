`timescale 1ns / 1ps
`include "module_pmsm_v4.v"

module module_pmsm_v4_tb;
  reg clk;
  reg [2:0] V_phase;
  reg [15:0] position;
  reg [7:0] DC_link_voltage;
  wire [15:0] I_a;
  wire [15:0] I_b;
  wire [15:0] I_c;
  wire [15:0] torque;
  wire [15:0] speed;
  //parameter DC_link_voltage = 48;
  integer pwm_period = 10;
  integer sector = 0;
  integer pwm_counter = 0;

  PMSM_v4 dut(
    .clk(clk),
    .V_phase(V_phase),
    .DC_link_voltage(DC_link_voltage),
    .I_a(I_a),
    .I_b(I_b),
    .I_c(I_c),
    .torque(torque),
    .speed(speed),
    .position(position)
  );

  initial begin
    $dumpfile("module_pmsm_v4_tb.vcd");
    $dumpvars(0, module_pmsm_v4_tb);
    clk = 0;
    V_phase = 3'b000;
    DC_link_voltage = 48;

    // Wait for the motor to settle
    #50000;

    // Run for 5 seconds
    repeat (500) begin
      // Apply SVPWM
      case (sector)
        0: V_phase = {1'b1, 1'b0, 1'b0}; // Sector 1
        1: V_phase = {1'b1, 1'b1, 1'b0}; // Sector 2
        2: V_phase = {1'b0, 1'b1, 1'b0}; // Sector 3
        3: V_phase = {1'b0, 1'b1, 1'b1}; // Sector 4
        4: V_phase = {1'b0, 1'b0, 1'b1}; // Sector 5
        5: V_phase = {1'b1, 1'b0, 1'b1}; // Sector 6
      endcase

      // Increment PWM counter
      pwm_counter = pwm_counter + 1;

      // Check if sector change is needed
      if (pwm_counter >= pwm_period) begin
        pwm_counter = 0;
        sector = sector + 1;
        if (sector >= 6) begin
          sector = 0;
        end
      end

      // Update rotor position with internal computed value
      position = dut.position;

      #1;
    end
    $finish;
  end

endmodule
