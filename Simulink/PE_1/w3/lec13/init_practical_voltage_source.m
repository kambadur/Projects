% init file for the model practical_voltage_source.slx

%RLC parameters
Lf = 1e-6;         %inductor in H (increased from 0.02uH to 1uH for analysis)
Cf = 100e-6;     %capacitor in F
RCf = 2e-3;      %capacitor esr
RLf = 2e-3;      %inductor resistance in Ohm
i_L_init=0;     %initial iL
v_C_init=0;     %initial vC

Ts = 10e-9;     % Model fixed-step size




