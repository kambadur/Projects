% init parameter file

%RLC parameters
L = 0.5e-6;         %inductor in H
C = 200e-6;     %capacitor in F
R = 1;          %Load resistance in Ohm
r_L = 5e-3;      %inductor resistance in Ohm
r_C = 3e-3;       %capacitor esr
i_L_init=0;     %initial iL
v_C_init=0;     %initial vC

%Switch parameter
rds_on_sw1 = 5e-3;  % high side mosfet rds on
rds_on_sw2 = 5e-3;  % low side mosfet rds on

%Diode parameters
Vd = 0.55;  %forward voltage drop diode
r_d = 5e-3; % diode on-state resistance

%Supply and gate driver
Vin = 12;   %Input voltage
Vref = 1;    %ref output voltage

IO_max = 20;   %maximum load current
V_up = 10;  % ramp peak voltage
V_b = 0;    % ramp base voltage
Vmax=10;    % V_up and Vmax are redundant

Tsw = 1e-6;   % pwm switching time period
Ts = 10e-9;     % Model fixed-step size
Ton = (Vref/Vin)*Tsw;
Toff_min = Ton/10;

Vref_switch = 0;    % switch to turn on Vref transient change
IL_transient_en = 0; % load current transient enable
DCM_en = 1;         % discontinuous conduction mode enable
ideal_en = 0;       % selection between ideal and practical voltage sources
