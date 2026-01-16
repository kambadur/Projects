// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module design_1 (
  sysclk,
  reset,
  led0,
  uart_rx,
  uart_tx
);

  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYSCLK CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.SYSCLK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYSCLK, FREQ_HZ 12000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_in1_0, INSERT_VIP 0" *)
  input sysclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *)
  (* X_INTERFACE_MODE = "slave RST.RESET" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
  input reset;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]led0;
  (* X_INTERFACE_IGNORE = "true" *)
  input uart_rx;
  (* X_INTERFACE_IGNORE = "true" *)
  output uart_tx;

  // stub module has no contents

endmodule
