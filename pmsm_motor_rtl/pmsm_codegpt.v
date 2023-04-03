module pmsm (
  input         clk,
  input         rst,
  input  [11:0] phase_voltage,
  output [11:0] rotor_position,
  output [11:0] motor_speed,
  output [20:0] em_torque
);

  // Declare internal registers
  reg [11:0] phase_angle_reg;
  reg [11:0] rotor_position_reg;
  reg [11:0] motor_speed_reg;
  reg [20:0] em_torque_reg;
  reg        rotor_direction_reg;
  reg [5:0]  timing_count_reg;
  
  assign rotor_position = rotor_position_reg;
  assign motor_speed    = motor_speed_reg;
  assign em_torque      = em_torque_reg;
  /*
  // Set initial values for internal registers
  initial begin
    phase_angle_reg    <= 0;
    rotor_position_reg <= 0;
    motor_speed_reg    <= 0;
    em_torque_reg      <= 0;
    rotor_direction_reg <= 1;
    timing_count_reg   <= 0; 
  end
  */
  // Declare constants
  parameter CLOCK_FREQ      = 50000000;  // Clock frequency in Hz
  parameter TICKS_PER_ROT   = 4000;      // Number of clock ticks per rotor revolution
  parameter VREF            = 110;       // Reference voltage in volts
  parameter LPHASE          = 30e-6;     // Phase inductance in henries
  parameter RPHASE          = 0.01;      // Phase resistance in ohms
  parameter MOTOR_CONST_K   = 1.5;       // Motor constant in Newton-meters per root-mean-square volt
  parameter TORQUE_CONSTANT = 0.2;       // Torque constant in Newton-meters per ampere
  parameter B               = 0.02;      // Coefficient of viscous friction
  parameter J               = 0.25;      // Rotor inertia in kg-m^2
  
  // Declare wires
  wire [11:0] phase_angle;
  wire [11:0] rotor_position_next;
  wire [11:0] motor_speed_next;
  wire [20:0] em_torque_next;
  wire        rotor_direction_next;
  wire        rotor_position_overflow;
  
  // Calculate phase angle based on rotor position
  assign phase_angle = (phase_voltage / VREF) * 2 * $pi + phase_angle_reg;
  
  // Calculate next rotor position based on current speed and direction
  assign rotor_position_next = rotor_position_reg + (rotor_direction_reg ? 1 : -1) * (TICKS_PER_ROT / (2 * $pi * motor_speed_reg));
  
  // Calculate next motor speed based on current torque
  assign motor_speed_next = motor_speed_reg + ((em_torque_reg / (J * LPHASE)) - ((B * motor_speed_reg) / J)) * (1 / CLOCK_FREQ);
  
  // Calculate next electromagnetic torque based on phase angle and currents
  assign em_torque_next = TORQUE_CONSTANT * ((3/2) * MOTOR_CONST_K * ((phase_voltage / VREF) * sin(phase_angle) - rotor_direction_reg*(cos(phase_angle) - sqrt(3)*sin(phase_angle)/2)));
  
  // Calculate next rotor direction based on rotor position
  assign rotor_direction_next = (rotor_position_next > TICKS_PER_ROT) ? ~rotor_direction_reg : rotor_direction_reg;
  
  // Calculate rotor position overflow
  assign rotor_position_overflow = (rotor_position_next >= TICKS_PER_ROT);
  
  // Handle reset
  always @(posedge rst) begin
    phase_angle_reg    <= 0;
    rotor_position_reg <= 0;
    motor_speed_reg    <= 0;
    em_torque_reg      <= 0;
    rotor_direction_reg <= 1;
    timing_count_reg   <= 0;
  end
  
  // Handle clock ticks
  always @(posedge clk) begin
    
    // Increment timing count
    timing_count_reg <= timing_count_reg + 1;
    
    // Update internal registers at every 10th clock tick
    if (timing_count_reg >= CLOCK_FREQ / 10) begin
      phase_angle_reg    <= phase_angle;
      rotor_position_reg <= rotor_position_next;
      motor_speed_reg    <= motor_speed_next;
      em_torque_reg      <= em_torque_next;
      rotor_direction_reg <= rotor_direction_next;
      timing_count_reg   <= 0;
    end
    
    // Handle rotor position overflow
    if (rotor_position_overflow) begin
      rotor_position_reg <= rotor_position_next - TICKS_PER_ROT;
    end
    
  end
  
endmodule
