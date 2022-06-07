##### Learnings on Xilinx System Generator
MATLAB uses double-precision floating-point and the Xilinx portion of the design
uses fixed-point precision. Xilinx Gateway blocks handle the type conversions.  
Gateway In / Out blocks acts an interface between your existing Simulink model and your FPGA design.  
In your hardware design they become the top level input output ports. Hence they are very important!  
System Generator uses a 'Fix' notation.  


