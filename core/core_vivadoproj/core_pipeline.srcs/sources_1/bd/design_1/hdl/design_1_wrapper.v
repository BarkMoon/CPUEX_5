//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
//Date        : Tue Feb 16 00:11:43 2021
//Host        : LAPTOP-D2IMMG8J running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (USB_UART_RX,
    USB_UART_TX,
    reset,
    sysclk_125_clk_n,
    sysclk_125_clk_p);
  output USB_UART_RX;
  input USB_UART_TX;
  input reset;
  input sysclk_125_clk_n;
  input sysclk_125_clk_p;

  wire USB_UART_RX;
  wire USB_UART_TX;
  wire reset;
  wire sysclk_125_clk_n;
  wire sysclk_125_clk_p;

  design_1 design_1_i
       (.USB_UART_RX(USB_UART_RX),
        .USB_UART_TX(USB_UART_TX),
        .reset(reset),
        .sysclk_125_clk_n(sysclk_125_clk_n),
        .sysclk_125_clk_p(sysclk_125_clk_p));
endmodule
