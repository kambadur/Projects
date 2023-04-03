`timescale 1ns / 1ps
`include "module_pmsm_v4.v"

module module_pmsm_v4_tb;

  // Inputs
  reg clk;
  reg [2:0] V_phase;
  reg [15:0] position;
  reg [7:0] DC_link_voltage;

  // Outputs
  wire [15:0] I_a;
  wire [15:0] I_b;
  wire [15:0] I_c;
  wire [15:0] torque;
  wire [15:0] speed;

  // Parameters
  parameter integer CLK_PERIOD = 10; // 10 ns clock period

  // Instantiate the design under test
  PMSM_v4 dut (
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

  // Clock generator
  always #CLK_PERIOD clk = ~clk;

  // SVPWM waveform generator
  reg [15:0] pwm_counter;
  reg [15:0] pwm_period;
  reg [2:0] sector;
  reg [15:0] Va;
  reg [15:0] Vb;
  reg [15:0] Vc;
  
  // Set initial values
  initial begin
    $dumpfile("module_pmsm_v4_tb.vcd");
    $dumpvars(0, module_pmsm_v4_tb);
    clk = 0;
    position = 0;
    pwm_counter = 0;
    pwm_period = 2000;
    DC_link_voltage = 48;
    sector = 0;
    Va = 1000;
    Vb = 0;
    Vc = 0;
    #5000;  //Let the motor phase voltages to settle
    #500000 $finish;
  end
  
  // Generate SVPWM waveform
  always @ (posedge clk) begin
    pwm_counter <= pwm_counter + 1;
    if (pwm_counter >= pwm_period) begin
      pwm_counter <= 0;
      sector <= sector + 1;
      if (sector > 6) begin
        sector <= 1;
      end
      case (sector)
        1: begin
          Va <= pwm_period;
          Vb <= pwm_period / 2;
          Vc <= 0;
        end
        2: begin
          Va <= pwm_period;
          Vb <= 0;
          Vc <= pwm_period / 2;
        end
        3: begin
          Va <= pwm_period / 2;
          Vb <= 0;
          Vc <= pwm_period;
        end
        4: begin
          Va <= 0;
          Vb <= pwm_period / 2;
          Vc <= pwm_period;
        end
        5: begin
          Va <= 0;
          Vb <= pwm_period;
          Vc <= pwm_period / 2;
        end
        6: begin
          Va <= pwm_period / 2;
          Vb <= pwm_period;
          Vc <= 0;
        end
      endcase
    end
    V_phase <= {Va, Vb, Vc};
    /*V_phase[0] <= Va;
    V_phase[1] <= Vb;
    V_phase[2] <= Vc;
    */
  end

  // Testbench process
  always @ (posedge clk) begin
    if (position != dut.position) begin
      position <= dut.position;
      $display("New rotor position: %d",position);
      /*if (rotor_position == 100) begin
      $display("Simulation finished");
      $finish;
      end*/
    end
  end


endmodule
