-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sat Nov 21 12:09:44 2020
-- Host        : Shlomi-laptop running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/Shlomi.Shab/Desktop/streamer/streamer.srcs/sources_1/bd/design_1/ip/design_1_converter_0_0/design_1_converter_0_0_sim_netlist.vhdl
-- Design      : design_1_converter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_converter_0_0 is
  port (
    data_in : in STD_LOGIC_VECTOR ( 11 downto 0 );
    bram_data : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_converter_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_converter_0_0 : entity is "design_1_converter_0_0,converter,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_converter_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_converter_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of design_1_converter_0_0 : entity is "converter,Vivado 2019.1";
end design_1_converter_0_0;

architecture STRUCTURE of design_1_converter_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^data_in\ : STD_LOGIC_VECTOR ( 11 downto 0 );
begin
  \^data_in\(11 downto 0) <= data_in(11 downto 0);
  bram_data(31) <= \<const0>\;
  bram_data(30) <= \<const0>\;
  bram_data(29) <= \<const0>\;
  bram_data(28) <= \<const0>\;
  bram_data(27) <= \<const0>\;
  bram_data(26) <= \<const0>\;
  bram_data(25) <= \<const0>\;
  bram_data(24) <= \<const0>\;
  bram_data(23 downto 20) <= \^data_in\(3 downto 0);
  bram_data(19 downto 16) <= \^data_in\(3 downto 0);
  bram_data(15 downto 12) <= \^data_in\(7 downto 4);
  bram_data(11 downto 8) <= \^data_in\(7 downto 4);
  bram_data(7 downto 4) <= \^data_in\(11 downto 8);
  bram_data(3 downto 0) <= \^data_in\(11 downto 8);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
