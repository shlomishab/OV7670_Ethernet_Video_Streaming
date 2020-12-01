-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sat Nov 21 12:09:44 2020
-- Host        : Shlomi-laptop running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/Shlomi.Shab/Desktop/streamer/streamer.srcs/sources_1/bd/design_1/ip/design_1_converter_0_0/design_1_converter_0_0_stub.vhdl
-- Design      : design_1_converter_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_converter_0_0 is
  Port ( 
    data_in : in STD_LOGIC_VECTOR ( 11 downto 0 );
    bram_data : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end design_1_converter_0_0;

architecture stub of design_1_converter_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "data_in[11:0],bram_data[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "converter,Vivado 2019.1";
begin
end;
