// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sat Nov 21 10:14:55 2020
// Host        : Shlomi-laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/Shlomi.Shab/Desktop/streamer/streamer.srcs/sources_1/bd/design_1/ip/design_1_ov7670_control_0_0/design_1_ov7670_control_0_0_stub.v
// Design      : design_1_ov7670_control_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "ov7670_control,Vivado 2019.1" *)
module design_1_ov7670_control_0_0(clk, rst_btn, config_finished, sioc, siod, reset, 
  pwdn, xclk)
/* synthesis syn_black_box black_box_pad_pin="clk,rst_btn,config_finished,sioc,siod,reset,pwdn,xclk" */;
  input clk;
  input rst_btn;
  output config_finished;
  output sioc;
  inout siod;
  output reset;
  output pwdn;
  output xclk;
endmodule
