% init file for the model synch_buck.slx

%RLC parameters
L=2e-6;         %inductor in H
C = 500e-6;     %capacitor in F
R=0.5;          %Load resistance in Ohm
r_L=10e-3;      %inductor resistance in Ohm
r_C=5e-3;       %capacitor esr
i_L_init=1;     %initial iL
v_C_init=3.4;     %initial vC

%Switch parameter
rds_on_sw1 = 5e-3;  % high side mosfet rds on
rds_on_sw2 = 5e-3;  % low side mosfet rds on

%Diode parameters
v_D = 0.7;  %forward voltage drop diode

%Supply and gate driver
Vin = 5;   %Input voltage
Tsw = 1e-6;   % pwm switching time period
V_up = 10;  % ramp peak voltage
V_b = 0;    % ramp base voltage
Vref = 3;    %ref output voltage
Vmax=10;

Ts = 10e-9;     % Model fixed-step size



