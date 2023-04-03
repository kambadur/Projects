module PMSM_v3(
  input clk,
  input [2:0] V_phase,
  input [15:0] position_in,
  output reg [15:0] I_a,
  output reg [15:0] I_b,
  output reg [15:0] I_c,
  output reg [15:0] torque,
  output reg [15:0] speed,
  output reg [15:0] position
);

// Parameters
parameter integer N = 60; // Number of poles
parameter integer R = 1;  // Rotor resistance
parameter integer L = 1;  // Rotor inductance
parameter integer J = 1;  // Moment of inertia
parameter integer B = 1;  // Viscous friction

// Variables
reg [15:0] I_alpha;
reg [15:0] I_beta;
reg [15:0] theta;
reg [15:0] omega;
reg [15:0] alpha;
reg [15:0] beta;
reg [15:0] V_alpha;
reg [15:0] V_beta;
reg [15:0] V_d;
reg [15:0] V_q;
reg [15:0] I_d;
reg [15:0] I_q;

// Clarke Transform
always @ (V_phase) begin
  alpha <= V_phase[0];
  beta <= (V_phase[1] - V_phase[2]) / 2;
end

// Park Transform
always @ (theta) begin
  V_alpha <= alpha * $cos(theta) + beta * $sin(theta);
  V_beta <= -alpha * $sin(theta) + beta * $cos(theta);
  I_alpha <= I_a * $cos(theta) + I_b * $sin(theta);
  I_beta <= -I_a * $sin(theta) + I_b * $cos(theta);
end

// Inverse Park Transform
always @ (theta) begin
  I_d <= I_alpha * $cos(theta) - I_beta * $sin(theta);
  I_q <= I_alpha * $sin(theta) + I_beta * $cos(theta);
end

// Inverse Clarke Transform
always @ (V_alpha, V_beta) begin
  V_d <= V_alpha * $cos(theta) + V_beta * $sin(theta);
  V_q <= -V_alpha * $sin(theta) + V_beta * $cos(theta);
end

// Motor Model
always @ (posedge clk) begin
  //theta <= position_in;
  torque <= 3/2 * N * ((L * I_q) * (omega + N * theta) + R * I_q - V_q);
  omega <= omega + (torque - B * omega) / J;
  speed <= omega;
  position <= theta;
end

always @(posedge clk) begin
    theta = position_in ? (theta != position_in) : theta;
end

endmodule
