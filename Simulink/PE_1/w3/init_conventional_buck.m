% init file for the model synch_buck.slx

%RLC parameters
L = 1e-6;         %inductor in H
C = 100e-6;     %capacitor in F
R = 0.5;          %Load resistance in Ohm
r_L = 10e-3;      %inductor resistance in Ohm
r_C = 5e-3;       %capacitor esr
i_L_init=1;     %initial iL
v_C_init=3.6;     %initial vC

%Switch parameter
rds_on_sw1 = 5e-3;  % high side mosfet rds on
rds_on_sw2 = 5e-3;  % low side mosfet rds on

%Diode parameters
vd = 0.7;  %forward voltage drop diode
r_d = 10e-3; % diode on-state resistance

%Supply and gate driver
Vin = 12;   %Input voltage
Vref = 3.3;    %ref output voltage

V_up = 10;  % ramp peak voltage
V_b = 0;    % ramp base voltage
Vmax=10;    % V_up and Vmax are redundant

Tsw = 1e-6;   % pwm switching time period
Ts = 10e-9;     % Model fixed-step size
T_on = (Vref/Vin)*Tsw;
T_off_min = T_on/10;




