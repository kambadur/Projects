% init parameter file

%RLC parameters
L = 0.5e-6;         %inductor in H
C = 200e-6;     %capacitor in F
R = 1;          %Load resistance in Ohm
r_L = 5e-3;      %inductor resistance in Ohm
r_C = 3e-3;       %capacitor esr
i_L_init=1;     %initial iL
v_C_init=1.1;     %initial vC

%Switch parameter
rds_on_sw1 = 5e-3;  % high side mosfet rds on
rds_on_sw2 = 5e-3;  % low side mosfet rds on

%Diode parameters
Vd = 0.55;  %forward voltage drop diode
r_d = rds_on_sw2; % diode on-state resistance

%Supply and gate driver
Vin = 12;   %Input voltage
Vref = 3.3;    %ref output voltage

IO_max = 20;   %maximum load current
V_up = 10;  % ramp peak voltage
V_b = 0;    % ramp base voltage

%Modulator gain
Vmax=10;    % V_up and Vmax are redundant
Fm = 1/Vmax;

Tsw = 2e-6;   % pwm switching time period
Ts = 10e-9;     % Model fixed-step size
Ton = (Vref/Vin)*Tsw;
Toff_min = Tsw/50;

Vff = 1/Vin;    % feed-forward voltage gain

Vref_switch = 1;    % switch to turn on Vref transient change
I0_transient_en = 1; % load current transient enable
DCM_en = 0;         % discontinuous conduction mode enable
ideal_psu_en = 1;       % selection between ideal and practical voltage sources
input_volt_trans_en = 0;    % input voltage disturbance enable (after 1.7ms input voltage dropped by 4V)
Vff_en = 1;         % input voltage feed forward switch for duty cycle adaptation

% PID parameters
Kp = 30;
Ki = 20000;
Kd = 0.5*C;
N = 1000;
tau_d = Tsw/5;
num_con = [Kd+(Kp*tau_d) Kp+(Ki*tau_d) Ki];
den_con = [tau_d 1 0];
%Gc=tf(num_con, den_con);   