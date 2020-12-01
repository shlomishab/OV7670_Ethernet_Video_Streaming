-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sat Nov 21 10:14:55 2020
-- Host        : Shlomi-laptop running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/Shlomi.Shab/Desktop/streamer/streamer.srcs/sources_1/bd/design_1/ip/design_1_ov7670_control_0_0/design_1_ov7670_control_0_0_stub.vhdl
-- Design      : design_1_ov7670_control_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_ov7670_control_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst_btn : in STD_LOGIC;
    config_finished : out STD_LOGIC;
    sioc : out STD_LOGIC;
    siod : inout STD_LOGIC;
    reset : out STD_LOGIC;
    pwdn : out STD_LOGIC;
    xclk : out STD_LOGIC
  );

end design_1_ov7670_control_0_0;

architecture stub of design_1_ov7670_control_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst_btn,config_finished,sioc,siod,reset,pwdn,xclk";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "ov7670_control,Vivado 2019.1";
begin
end;
