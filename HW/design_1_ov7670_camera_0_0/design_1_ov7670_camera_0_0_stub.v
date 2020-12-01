// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Nov 10 13:14:05 2020
// Host        : Shlomi-laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/Shlomi.Shab/Desktop/streamer/streamer.srcs/sources_1/bd/design_1/ip/design_1_ov7670_camera_0_0/design_1_ov7670_camera_0_0_stub.v
// Design      : design_1_ov7670_camera_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "top_project2,Vivado 2019.1" *)
module design_1_ov7670_camera_0_0(OV7670_D, OV7670_PCLK, OV7670_VSYNC, 
  OV7670_HREF, data_a, address_a, we_a, clk50, clk25, vga_red, vga_green, vga_blue, vga_hsync, 
  vga_vsync)
/* synthesis syn_black_box black_box_pad_pin="OV7670_D[7:0],OV7670_PCLK,OV7670_VSYNC,OV7670_HREF,data_a[11:0],address_a[16:0],we_a,clk50,clk25,vga_red[3:0],vga_green[3:0],vga_blue[3:0],vga_hsync,vga_vsync" */;
  input [7:0]OV7670_D;
  input OV7670_PCLK;
  input OV7670_VSYNC;
  input OV7670_HREF;
  output [11:0]data_a;
  output [16:0]address_a;
  output we_a;
  input clk50;
  input clk25;
  output [3:0]vga_red;
  output [3:0]vga_green;
  output [3:0]vga_blue;
  output vga_hsync;
  output vga_vsync;
endmodule
