// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Tue Feb 16 00:21:32 2021
// Host        : LAPTOP-D2IMMG8J running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_core_0_0_stub.v
// Design      : design_1_core_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "core,Vivado 2019.2.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, rst, uart_input, uart_output)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,uart_input,uart_output" */;
  input clk;
  input rst;
  input uart_input;
  output uart_output;
endmodule
