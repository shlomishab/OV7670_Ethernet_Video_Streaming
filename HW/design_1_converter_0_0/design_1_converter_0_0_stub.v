// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sat Nov 21 12:09:44 2020
// Host        : Shlomi-laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/Shlomi.Shab/Desktop/streamer/streamer.srcs/sources_1/bd/design_1/ip/design_1_converter_0_0/design_1_converter_0_0_stub.v
// Design      : design_1_converter_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "converter,Vivado 2019.1" *)
module design_1_converter_0_0(data_in, bram_data)
/* synthesis syn_black_box black_box_pad_pin="data_in[11:0],bram_data[31:0]" */;
  input [11:0]data_in;
  output [31:0]bram_data;
endmodule
