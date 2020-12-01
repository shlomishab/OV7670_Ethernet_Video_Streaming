-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Tue Nov 10 13:14:05 2020
-- Host        : Shlomi-laptop running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/Shlomi.Shab/Desktop/streamer/streamer.srcs/sources_1/bd/design_1/ip/design_1_ov7670_camera_0_0/design_1_ov7670_camera_0_0_stub.vhdl
-- Design      : design_1_ov7670_camera_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_ov7670_camera_0_0 is
  Port ( 
    OV7670_D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    OV7670_PCLK : in STD_LOGIC;
    OV7670_VSYNC : in STD_LOGIC;
    OV7670_HREF : in STD_LOGIC;
    data_a : out STD_LOGIC_VECTOR ( 11 downto 0 );
    address_a : out STD_LOGIC_VECTOR ( 16 downto 0 );
    we_a : out STD_LOGIC;
    clk50 : in STD_LOGIC;
    clk25 : in STD_LOGIC;
    vga_red : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_green : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_blue : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_hsync : out STD_LOGIC;
    vga_vsync : out STD_LOGIC
  );

end design_1_ov7670_camera_0_0;

architecture stub of design_1_ov7670_camera_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "OV7670_D[7:0],OV7670_PCLK,OV7670_VSYNC,OV7670_HREF,data_a[11:0],address_a[16:0],we_a,clk50,clk25,vga_red[3:0],vga_green[3:0],vga_blue[3:0],vga_hsync,vga_vsync";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "top_project2,Vivado 2019.1";
begin
end;
