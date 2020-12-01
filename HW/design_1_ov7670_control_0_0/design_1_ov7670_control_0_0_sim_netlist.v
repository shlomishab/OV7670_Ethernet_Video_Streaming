// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sat Nov 21 10:14:55 2020
// Host        : Shlomi-laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/Shlomi.Shab/Desktop/streamer/streamer.srcs/sources_1/bd/design_1/ip/design_1_ov7670_control_0_0/design_1_ov7670_control_0_0_sim_netlist.v
// Design      : design_1_ov7670_control_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_ov7670_control_0_0,ov7670_control,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "ov7670_control,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module design_1_ov7670_control_0_0
   (clk,
    rst_btn,
    config_finished,
    sioc,
    siod,
    reset,
    pwdn,
    xclk);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  input rst_btn;
  output config_finished;
  output sioc;
  inout siod;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output reset;
  output pwdn;
  output xclk;

  wire \<const0> ;
  wire \<const1> ;
  wire clk;
  wire config_finished;
  wire rst_btn;
  wire sioc;
  wire siod;
  wire xclk;

  assign pwdn = \<const0> ;
  assign reset = \<const1> ;
  GND GND
       (.G(\<const0> ));
  design_1_ov7670_control_0_0_ov7670_control U0
       (.clk(clk),
        .config_finished(config_finished),
        .rst_btn(rst_btn),
        .sioc(sioc),
        .siod(siod),
        .xclk(xclk));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "debounce" *) 
module design_1_ov7670_control_0_0_debounce
   (SR,
    clk,
    rst_btn);
  output [0:0]SR;
  input clk;
  input rst_btn;

  wire [0:0]SR;
  wire btn_out_i_1_n_0;
  wire btn_out_i_2_n_0;
  wire btn_out_i_3_n_0;
  wire btn_out_i_4_n_0;
  wire btn_out_i_5_n_0;
  wire clear;
  wire clk;
  wire \count[0]_i_3_n_0 ;
  wire [23:0]count_reg;
  wire \count_reg[0]_i_2_n_0 ;
  wire \count_reg[0]_i_2_n_1 ;
  wire \count_reg[0]_i_2_n_2 ;
  wire \count_reg[0]_i_2_n_3 ;
  wire \count_reg[0]_i_2_n_4 ;
  wire \count_reg[0]_i_2_n_5 ;
  wire \count_reg[0]_i_2_n_6 ;
  wire \count_reg[0]_i_2_n_7 ;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_1 ;
  wire \count_reg[12]_i_1_n_2 ;
  wire \count_reg[12]_i_1_n_3 ;
  wire \count_reg[12]_i_1_n_4 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[16]_i_1_n_0 ;
  wire \count_reg[16]_i_1_n_1 ;
  wire \count_reg[16]_i_1_n_2 ;
  wire \count_reg[16]_i_1_n_3 ;
  wire \count_reg[16]_i_1_n_4 ;
  wire \count_reg[16]_i_1_n_5 ;
  wire \count_reg[16]_i_1_n_6 ;
  wire \count_reg[16]_i_1_n_7 ;
  wire \count_reg[20]_i_1_n_1 ;
  wire \count_reg[20]_i_1_n_2 ;
  wire \count_reg[20]_i_1_n_3 ;
  wire \count_reg[20]_i_1_n_4 ;
  wire \count_reg[20]_i_1_n_5 ;
  wire \count_reg[20]_i_1_n_6 ;
  wire \count_reg[20]_i_1_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_1 ;
  wire \count_reg[4]_i_1_n_2 ;
  wire \count_reg[4]_i_1_n_3 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_1 ;
  wire \count_reg[8]_i_1_n_2 ;
  wire \count_reg[8]_i_1_n_3 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire rst_btn;
  wire [3:3]\NLW_count_reg[20]_i_1_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h80000000)) 
    btn_out_i_1
       (.I0(btn_out_i_2_n_0),
        .I1(btn_out_i_3_n_0),
        .I2(btn_out_i_4_n_0),
        .I3(count_reg[0]),
        .I4(btn_out_i_5_n_0),
        .O(btn_out_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    btn_out_i_2
       (.I0(count_reg[3]),
        .I1(count_reg[4]),
        .I2(count_reg[1]),
        .I3(count_reg[2]),
        .I4(count_reg[6]),
        .I5(count_reg[5]),
        .O(btn_out_i_2_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    btn_out_i_3
       (.I0(count_reg[21]),
        .I1(count_reg[22]),
        .I2(count_reg[19]),
        .I3(count_reg[20]),
        .I4(rst_btn),
        .I5(count_reg[23]),
        .O(btn_out_i_3_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    btn_out_i_4
       (.I0(count_reg[15]),
        .I1(count_reg[16]),
        .I2(count_reg[13]),
        .I3(count_reg[14]),
        .I4(count_reg[18]),
        .I5(count_reg[17]),
        .O(btn_out_i_4_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    btn_out_i_5
       (.I0(count_reg[9]),
        .I1(count_reg[10]),
        .I2(count_reg[7]),
        .I3(count_reg[8]),
        .I4(count_reg[12]),
        .I5(count_reg[11]),
        .O(btn_out_i_5_n_0));
  FDRE btn_out_reg
       (.C(clk),
        .CE(1'b1),
        .D(btn_out_i_1_n_0),
        .Q(SR),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(rst_btn),
        .O(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_3 
       (.I0(count_reg[0]),
        .O(\count[0]_i_3_n_0 ));
  FDRE \count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[0]_i_2_n_7 ),
        .Q(count_reg[0]),
        .R(clear));
  CARRY4 \count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_2_n_0 ,\count_reg[0]_i_2_n_1 ,\count_reg[0]_i_2_n_2 ,\count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_2_n_4 ,\count_reg[0]_i_2_n_5 ,\count_reg[0]_i_2_n_6 ,\count_reg[0]_i_2_n_7 }),
        .S({count_reg[3:1],\count[0]_i_3_n_0 }));
  FDRE \count_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(count_reg[10]),
        .R(clear));
  FDRE \count_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(count_reg[11]),
        .R(clear));
  FDRE \count_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(count_reg[12]),
        .R(clear));
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\count_reg[12]_i_1_n_1 ,\count_reg[12]_i_1_n_2 ,\count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S(count_reg[15:12]));
  FDRE \count_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(count_reg[13]),
        .R(clear));
  FDRE \count_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(count_reg[14]),
        .R(clear));
  FDRE \count_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(count_reg[15]),
        .R(clear));
  FDRE \count_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(count_reg[16]),
        .R(clear));
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO({\count_reg[16]_i_1_n_0 ,\count_reg[16]_i_1_n_1 ,\count_reg[16]_i_1_n_2 ,\count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[16]_i_1_n_4 ,\count_reg[16]_i_1_n_5 ,\count_reg[16]_i_1_n_6 ,\count_reg[16]_i_1_n_7 }),
        .S(count_reg[19:16]));
  FDRE \count_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_6 ),
        .Q(count_reg[17]),
        .R(clear));
  FDRE \count_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_5 ),
        .Q(count_reg[18]),
        .R(clear));
  FDRE \count_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_4 ),
        .Q(count_reg[19]),
        .R(clear));
  FDRE \count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[0]_i_2_n_6 ),
        .Q(count_reg[1]),
        .R(clear));
  FDRE \count_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_7 ),
        .Q(count_reg[20]),
        .R(clear));
  CARRY4 \count_reg[20]_i_1 
       (.CI(\count_reg[16]_i_1_n_0 ),
        .CO({\NLW_count_reg[20]_i_1_CO_UNCONNECTED [3],\count_reg[20]_i_1_n_1 ,\count_reg[20]_i_1_n_2 ,\count_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[20]_i_1_n_4 ,\count_reg[20]_i_1_n_5 ,\count_reg[20]_i_1_n_6 ,\count_reg[20]_i_1_n_7 }),
        .S(count_reg[23:20]));
  FDRE \count_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_6 ),
        .Q(count_reg[21]),
        .R(clear));
  FDRE \count_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_5 ),
        .Q(count_reg[22]),
        .R(clear));
  FDRE \count_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_4 ),
        .Q(count_reg[23]),
        .R(clear));
  FDRE \count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[0]_i_2_n_5 ),
        .Q(count_reg[2]),
        .R(clear));
  FDRE \count_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[0]_i_2_n_4 ),
        .Q(count_reg[3]),
        .R(clear));
  FDRE \count_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(count_reg[4]),
        .R(clear));
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_2_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\count_reg[4]_i_1_n_1 ,\count_reg[4]_i_1_n_2 ,\count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S(count_reg[7:4]));
  FDRE \count_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(count_reg[5]),
        .R(clear));
  FDRE \count_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(count_reg[6]),
        .R(clear));
  FDRE \count_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(count_reg[7]),
        .R(clear));
  FDRE \count_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(count_reg[8]),
        .R(clear));
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\count_reg[8]_i_1_n_1 ,\count_reg[8]_i_1_n_2 ,\count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S(count_reg[11:8]));
  FDRE \count_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(count_reg[9]),
        .R(clear));
endmodule

(* ORIG_REF_NAME = "i2c_sender" *) 
module design_1_ov7670_control_0_0_i2c_sender
   (E,
    sioc,
    p_0_in,
    \divider_reg[2]_0 ,
    siod,
    taken_reg_0,
    clk,
    p_1_in,
    DOADO,
    \divider_reg[7]_0 );
  output [0:0]E;
  output sioc;
  output p_0_in;
  output \divider_reg[2]_0 ;
  output siod;
  input taken_reg_0;
  input clk;
  input [0:0]p_1_in;
  input [15:0]DOADO;
  input [0:0]\divider_reg[7]_0 ;

  wire [15:0]DOADO;
  wire [0:0]E;
  wire busy_sr0;
  wire \busy_sr[0]_i_3_n_0 ;
  wire \busy_sr[0]_i_5_n_0 ;
  wire \busy_sr[10]_i_1_n_0 ;
  wire \busy_sr[11]_i_1_n_0 ;
  wire \busy_sr[12]_i_1_n_0 ;
  wire \busy_sr[13]_i_1_n_0 ;
  wire \busy_sr[14]_i_1_n_0 ;
  wire \busy_sr[15]_i_1_n_0 ;
  wire \busy_sr[16]_i_1_n_0 ;
  wire \busy_sr[17]_i_1_n_0 ;
  wire \busy_sr[18]_i_1_n_0 ;
  wire \busy_sr[19]_i_1_n_0 ;
  wire \busy_sr[1]_i_1_n_0 ;
  wire \busy_sr[20]_i_1_n_0 ;
  wire \busy_sr[21]_i_1_n_0 ;
  wire \busy_sr[22]_i_1_n_0 ;
  wire \busy_sr[23]_i_1_n_0 ;
  wire \busy_sr[24]_i_1_n_0 ;
  wire \busy_sr[25]_i_1_n_0 ;
  wire \busy_sr[26]_i_1_n_0 ;
  wire \busy_sr[27]_i_1_n_0 ;
  wire \busy_sr[28]_i_1_n_0 ;
  wire \busy_sr[29]_i_1_n_0 ;
  wire \busy_sr[2]_i_1_n_0 ;
  wire \busy_sr[30]_i_1_n_0 ;
  wire \busy_sr[31]_i_1_n_0 ;
  wire \busy_sr[31]_i_2_n_0 ;
  wire \busy_sr[3]_i_1_n_0 ;
  wire \busy_sr[4]_i_1_n_0 ;
  wire \busy_sr[5]_i_1_n_0 ;
  wire \busy_sr[6]_i_1_n_0 ;
  wire \busy_sr[7]_i_1_n_0 ;
  wire \busy_sr[8]_i_1_n_0 ;
  wire \busy_sr[9]_i_1_n_0 ;
  wire \busy_sr_reg_n_0_[0] ;
  wire \busy_sr_reg_n_0_[10] ;
  wire \busy_sr_reg_n_0_[11] ;
  wire \busy_sr_reg_n_0_[12] ;
  wire \busy_sr_reg_n_0_[13] ;
  wire \busy_sr_reg_n_0_[14] ;
  wire \busy_sr_reg_n_0_[15] ;
  wire \busy_sr_reg_n_0_[16] ;
  wire \busy_sr_reg_n_0_[17] ;
  wire \busy_sr_reg_n_0_[18] ;
  wire \busy_sr_reg_n_0_[1] ;
  wire \busy_sr_reg_n_0_[21] ;
  wire \busy_sr_reg_n_0_[22] ;
  wire \busy_sr_reg_n_0_[23] ;
  wire \busy_sr_reg_n_0_[24] ;
  wire \busy_sr_reg_n_0_[25] ;
  wire \busy_sr_reg_n_0_[26] ;
  wire \busy_sr_reg_n_0_[27] ;
  wire \busy_sr_reg_n_0_[28] ;
  wire \busy_sr_reg_n_0_[29] ;
  wire \busy_sr_reg_n_0_[2] ;
  wire \busy_sr_reg_n_0_[30] ;
  wire \busy_sr_reg_n_0_[3] ;
  wire \busy_sr_reg_n_0_[4] ;
  wire \busy_sr_reg_n_0_[5] ;
  wire \busy_sr_reg_n_0_[6] ;
  wire \busy_sr_reg_n_0_[7] ;
  wire \busy_sr_reg_n_0_[8] ;
  wire \busy_sr_reg_n_0_[9] ;
  wire clk;
  wire \data_sr[10]_i_1_n_0 ;
  wire \data_sr[12]_i_1_n_0 ;
  wire \data_sr[13]_i_1_n_0 ;
  wire \data_sr[14]_i_1_n_0 ;
  wire \data_sr[15]_i_1_n_0 ;
  wire \data_sr[16]_i_1_n_0 ;
  wire \data_sr[17]_i_1_n_0 ;
  wire \data_sr[18]_i_1_n_0 ;
  wire \data_sr[19]_i_1_n_0 ;
  wire \data_sr[22]_i_1_n_0 ;
  wire \data_sr[27]_i_1_n_0 ;
  wire \data_sr[30]_i_1_n_0 ;
  wire \data_sr[31]_i_1_n_0 ;
  wire \data_sr[3]_i_1_n_0 ;
  wire \data_sr[4]_i_1_n_0 ;
  wire \data_sr[5]_i_1_n_0 ;
  wire \data_sr[6]_i_1_n_0 ;
  wire \data_sr[7]_i_1_n_0 ;
  wire \data_sr[8]_i_1_n_0 ;
  wire \data_sr[9]_i_1_n_0 ;
  wire \data_sr_reg_n_0_[10] ;
  wire \data_sr_reg_n_0_[11] ;
  wire \data_sr_reg_n_0_[12] ;
  wire \data_sr_reg_n_0_[13] ;
  wire \data_sr_reg_n_0_[14] ;
  wire \data_sr_reg_n_0_[15] ;
  wire \data_sr_reg_n_0_[16] ;
  wire \data_sr_reg_n_0_[17] ;
  wire \data_sr_reg_n_0_[18] ;
  wire \data_sr_reg_n_0_[19] ;
  wire \data_sr_reg_n_0_[1] ;
  wire \data_sr_reg_n_0_[20] ;
  wire \data_sr_reg_n_0_[21] ;
  wire \data_sr_reg_n_0_[22] ;
  wire \data_sr_reg_n_0_[23] ;
  wire \data_sr_reg_n_0_[24] ;
  wire \data_sr_reg_n_0_[25] ;
  wire \data_sr_reg_n_0_[26] ;
  wire \data_sr_reg_n_0_[27] ;
  wire \data_sr_reg_n_0_[28] ;
  wire \data_sr_reg_n_0_[29] ;
  wire \data_sr_reg_n_0_[2] ;
  wire \data_sr_reg_n_0_[30] ;
  wire \data_sr_reg_n_0_[31] ;
  wire \data_sr_reg_n_0_[3] ;
  wire \data_sr_reg_n_0_[4] ;
  wire \data_sr_reg_n_0_[5] ;
  wire \data_sr_reg_n_0_[6] ;
  wire \data_sr_reg_n_0_[7] ;
  wire \data_sr_reg_n_0_[8] ;
  wire \data_sr_reg_n_0_[9] ;
  wire \divider_reg[2]_0 ;
  wire [0:0]\divider_reg[7]_0 ;
  wire \divider_reg_n_0_[0] ;
  wire \divider_reg_n_0_[1] ;
  wire \divider_reg_n_0_[2] ;
  wire \divider_reg_n_0_[3] ;
  wire \divider_reg_n_0_[4] ;
  wire \divider_reg_n_0_[5] ;
  wire p_0_in;
  wire [1:0]p_0_in__0;
  wire [7:0]p_0_in__0__0;
  wire [0:0]p_1_in;
  wire [1:0]p_1_in_0;
  wire sioc;
  wire sioc_i_1_n_0;
  wire sioc_i_2_n_0;
  wire sioc_i_3_n_0;
  wire siod;
  wire siod_INST_0_i_1_n_0;
  wire taken_reg_0;

  LUT6 #(
    .INIT(64'h4000FFFF40004000)) 
    \busy_sr[0]_i_1 
       (.I0(\busy_sr[0]_i_3_n_0 ),
        .I1(p_0_in__0[0]),
        .I2(p_0_in__0[1]),
        .I3(p_0_in),
        .I4(\divider_reg[2]_0 ),
        .I5(p_1_in),
        .O(busy_sr0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \busy_sr[0]_i_3 
       (.I0(\divider_reg_n_0_[4] ),
        .I1(\divider_reg_n_0_[2] ),
        .I2(\divider_reg_n_0_[0] ),
        .I3(\divider_reg_n_0_[1] ),
        .I4(\divider_reg_n_0_[3] ),
        .I5(\divider_reg_n_0_[5] ),
        .O(\busy_sr[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \busy_sr[0]_i_4 
       (.I0(\divider_reg_n_0_[2] ),
        .I1(\divider_reg_n_0_[3] ),
        .I2(\divider_reg_n_0_[0] ),
        .I3(\divider_reg_n_0_[1] ),
        .I4(\busy_sr[0]_i_5_n_0 ),
        .O(\divider_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \busy_sr[0]_i_5 
       (.I0(\divider_reg_n_0_[5] ),
        .I1(\divider_reg_n_0_[4] ),
        .I2(p_0_in__0[1]),
        .I3(p_0_in__0[0]),
        .O(\busy_sr[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[10]_i_1 
       (.I0(\busy_sr_reg_n_0_[9] ),
        .I1(p_0_in),
        .O(\busy_sr[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[11]_i_1 
       (.I0(\busy_sr_reg_n_0_[10] ),
        .I1(p_0_in),
        .O(\busy_sr[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[12]_i_1 
       (.I0(\busy_sr_reg_n_0_[11] ),
        .I1(p_0_in),
        .O(\busy_sr[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[13]_i_1 
       (.I0(\busy_sr_reg_n_0_[12] ),
        .I1(p_0_in),
        .O(\busy_sr[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[14]_i_1 
       (.I0(\busy_sr_reg_n_0_[13] ),
        .I1(p_0_in),
        .O(\busy_sr[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[15]_i_1 
       (.I0(\busy_sr_reg_n_0_[14] ),
        .I1(p_0_in),
        .O(\busy_sr[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[16]_i_1 
       (.I0(\busy_sr_reg_n_0_[15] ),
        .I1(p_0_in),
        .O(\busy_sr[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[17]_i_1 
       (.I0(\busy_sr_reg_n_0_[16] ),
        .I1(p_0_in),
        .O(\busy_sr[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[18]_i_1 
       (.I0(\busy_sr_reg_n_0_[17] ),
        .I1(p_0_in),
        .O(\busy_sr[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[19]_i_1 
       (.I0(\busy_sr_reg_n_0_[18] ),
        .I1(p_0_in),
        .O(\busy_sr[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[1]_i_1 
       (.I0(\busy_sr_reg_n_0_[0] ),
        .I1(p_0_in),
        .O(\busy_sr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[20]_i_1 
       (.I0(p_1_in_0[0]),
        .I1(p_0_in),
        .O(\busy_sr[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[21]_i_1 
       (.I0(p_1_in_0[1]),
        .I1(p_0_in),
        .O(\busy_sr[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[22]_i_1 
       (.I0(\busy_sr_reg_n_0_[21] ),
        .I1(p_0_in),
        .O(\busy_sr[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[23]_i_1 
       (.I0(\busy_sr_reg_n_0_[22] ),
        .I1(p_0_in),
        .O(\busy_sr[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[24]_i_1 
       (.I0(\busy_sr_reg_n_0_[23] ),
        .I1(p_0_in),
        .O(\busy_sr[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[25]_i_1 
       (.I0(\busy_sr_reg_n_0_[24] ),
        .I1(p_0_in),
        .O(\busy_sr[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[26]_i_1 
       (.I0(\busy_sr_reg_n_0_[25] ),
        .I1(p_0_in),
        .O(\busy_sr[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[27]_i_1 
       (.I0(\busy_sr_reg_n_0_[26] ),
        .I1(p_0_in),
        .O(\busy_sr[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[28]_i_1 
       (.I0(\busy_sr_reg_n_0_[27] ),
        .I1(p_0_in),
        .O(\busy_sr[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[29]_i_1 
       (.I0(\busy_sr_reg_n_0_[28] ),
        .I1(p_0_in),
        .O(\busy_sr[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[2]_i_1 
       (.I0(\busy_sr_reg_n_0_[1] ),
        .I1(p_0_in),
        .O(\busy_sr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[30]_i_1 
       (.I0(\busy_sr_reg_n_0_[29] ),
        .I1(p_0_in),
        .O(\busy_sr[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h22222222A2222222)) 
    \busy_sr[31]_i_1 
       (.I0(p_1_in),
        .I1(\divider_reg[2]_0 ),
        .I2(p_0_in),
        .I3(p_0_in__0[1]),
        .I4(p_0_in__0[0]),
        .I5(\busy_sr[0]_i_3_n_0 ),
        .O(\busy_sr[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[31]_i_2 
       (.I0(\busy_sr_reg_n_0_[30] ),
        .I1(p_0_in),
        .O(\busy_sr[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[3]_i_1 
       (.I0(\busy_sr_reg_n_0_[2] ),
        .I1(p_0_in),
        .O(\busy_sr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[4]_i_1 
       (.I0(\busy_sr_reg_n_0_[3] ),
        .I1(p_0_in),
        .O(\busy_sr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[5]_i_1 
       (.I0(\busy_sr_reg_n_0_[4] ),
        .I1(p_0_in),
        .O(\busy_sr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[6]_i_1 
       (.I0(\busy_sr_reg_n_0_[5] ),
        .I1(p_0_in),
        .O(\busy_sr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[7]_i_1 
       (.I0(\busy_sr_reg_n_0_[6] ),
        .I1(p_0_in),
        .O(\busy_sr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[8]_i_1 
       (.I0(\busy_sr_reg_n_0_[7] ),
        .I1(p_0_in),
        .O(\busy_sr[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \busy_sr[9]_i_1 
       (.I0(\busy_sr_reg_n_0_[8] ),
        .I1(p_0_in),
        .O(\busy_sr[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \busy_sr_reg[0] 
       (.C(clk),
        .CE(busy_sr0),
        .D(p_1_in),
        .Q(\busy_sr_reg_n_0_[0] ),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[10] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\busy_sr[10]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[10] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[11] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\busy_sr[11]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[11] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[12] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\busy_sr[12]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[12] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[13] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\busy_sr[13]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[13] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[14] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\busy_sr[14]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[14] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[15] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\busy_sr[15]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[15] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[16] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\busy_sr[16]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[16] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[17] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\busy_sr[17]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[17] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[18] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\busy_sr[18]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[18] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[19] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\busy_sr[19]_i_1_n_0 ),
        .Q(p_1_in_0[0]),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[1] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\busy_sr[1]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[1] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[20] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\busy_sr[20]_i_1_n_0 ),
        .Q(p_1_in_0[1]),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[21] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\busy_sr[21]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[21] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[22] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\busy_sr[22]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[22] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[23] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\busy_sr[23]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[23] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[24] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\busy_sr[24]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[24] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[25] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\busy_sr[25]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[25] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[26] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\busy_sr[26]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[26] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[27] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\busy_sr[27]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[27] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[28] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\busy_sr[28]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[28] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[29] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\busy_sr[29]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[29] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[2] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\busy_sr[2]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[2] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[30] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\busy_sr[30]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[30] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[31] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\busy_sr[31]_i_2_n_0 ),
        .Q(p_0_in),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[3] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\busy_sr[3]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[3] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[4] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\busy_sr[4]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[4] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[5] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\busy_sr[5]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[5] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[6] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\busy_sr[6]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[6] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[7] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\busy_sr[7]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[7] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[8] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\busy_sr[8]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[8] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \busy_sr_reg[9] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\busy_sr[9]_i_1_n_0 ),
        .Q(\busy_sr_reg_n_0_[9] ),
        .S(\busy_sr[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[10]_i_1 
       (.I0(\data_sr_reg_n_0_[9] ),
        .I1(p_0_in),
        .I2(DOADO[7]),
        .O(\data_sr[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[12]_i_1 
       (.I0(\data_sr_reg_n_0_[11] ),
        .I1(p_0_in),
        .I2(DOADO[8]),
        .O(\data_sr[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[13]_i_1 
       (.I0(\data_sr_reg_n_0_[12] ),
        .I1(p_0_in),
        .I2(DOADO[9]),
        .O(\data_sr[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[14]_i_1 
       (.I0(\data_sr_reg_n_0_[13] ),
        .I1(p_0_in),
        .I2(DOADO[10]),
        .O(\data_sr[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[15]_i_1 
       (.I0(\data_sr_reg_n_0_[14] ),
        .I1(p_0_in),
        .I2(DOADO[11]),
        .O(\data_sr[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[16]_i_1 
       (.I0(\data_sr_reg_n_0_[15] ),
        .I1(p_0_in),
        .I2(DOADO[12]),
        .O(\data_sr[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[17]_i_1 
       (.I0(\data_sr_reg_n_0_[16] ),
        .I1(p_0_in),
        .I2(DOADO[13]),
        .O(\data_sr[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[18]_i_1 
       (.I0(\data_sr_reg_n_0_[17] ),
        .I1(p_0_in),
        .I2(DOADO[14]),
        .O(\data_sr[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[19]_i_1 
       (.I0(\data_sr_reg_n_0_[18] ),
        .I1(p_0_in),
        .I2(DOADO[15]),
        .O(\data_sr[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_sr[22]_i_1 
       (.I0(\data_sr_reg_n_0_[21] ),
        .I1(p_0_in),
        .O(\data_sr[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_sr[27]_i_1 
       (.I0(\data_sr_reg_n_0_[26] ),
        .I1(p_0_in),
        .O(\data_sr[27]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \data_sr[30]_i_1 
       (.I0(p_1_in),
        .I1(\divider_reg[2]_0 ),
        .I2(p_0_in),
        .O(\data_sr[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_sr[31]_i_1 
       (.I0(\data_sr_reg_n_0_[30] ),
        .I1(p_0_in),
        .O(\data_sr[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[3]_i_1 
       (.I0(\data_sr_reg_n_0_[2] ),
        .I1(p_0_in),
        .I2(DOADO[0]),
        .O(\data_sr[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[4]_i_1 
       (.I0(\data_sr_reg_n_0_[3] ),
        .I1(p_0_in),
        .I2(DOADO[1]),
        .O(\data_sr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[5]_i_1 
       (.I0(\data_sr_reg_n_0_[4] ),
        .I1(p_0_in),
        .I2(DOADO[2]),
        .O(\data_sr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[6]_i_1 
       (.I0(\data_sr_reg_n_0_[5] ),
        .I1(p_0_in),
        .I2(DOADO[3]),
        .O(\data_sr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[7]_i_1 
       (.I0(\data_sr_reg_n_0_[6] ),
        .I1(p_0_in),
        .I2(DOADO[4]),
        .O(\data_sr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[8]_i_1 
       (.I0(\data_sr_reg_n_0_[7] ),
        .I1(p_0_in),
        .I2(DOADO[5]),
        .O(\data_sr[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[9]_i_1 
       (.I0(\data_sr_reg_n_0_[8] ),
        .I1(p_0_in),
        .I2(DOADO[6]),
        .O(\data_sr[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[10] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\data_sr[10]_i_1_n_0 ),
        .Q(\data_sr_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[11] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\data_sr_reg_n_0_[10] ),
        .Q(\data_sr_reg_n_0_[11] ),
        .R(\data_sr[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[12] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\data_sr[12]_i_1_n_0 ),
        .Q(\data_sr_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[13] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\data_sr[13]_i_1_n_0 ),
        .Q(\data_sr_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[14] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\data_sr[14]_i_1_n_0 ),
        .Q(\data_sr_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[15] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\data_sr[15]_i_1_n_0 ),
        .Q(\data_sr_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[16] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\data_sr[16]_i_1_n_0 ),
        .Q(\data_sr_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[17] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\data_sr[17]_i_1_n_0 ),
        .Q(\data_sr_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[18] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\data_sr[18]_i_1_n_0 ),
        .Q(\data_sr_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[19] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\data_sr[19]_i_1_n_0 ),
        .Q(\data_sr_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[1] 
       (.C(clk),
        .CE(busy_sr0),
        .D(p_0_in),
        .Q(\data_sr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[20] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\data_sr_reg_n_0_[19] ),
        .Q(\data_sr_reg_n_0_[20] ),
        .R(\data_sr[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[21] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\data_sr_reg_n_0_[20] ),
        .Q(\data_sr_reg_n_0_[21] ),
        .R(\data_sr[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[22] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\data_sr[22]_i_1_n_0 ),
        .Q(\data_sr_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[23] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\data_sr_reg_n_0_[22] ),
        .Q(\data_sr_reg_n_0_[23] ),
        .R(\data_sr[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[24] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\data_sr_reg_n_0_[23] ),
        .Q(\data_sr_reg_n_0_[24] ),
        .R(\data_sr[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[25] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\data_sr_reg_n_0_[24] ),
        .Q(\data_sr_reg_n_0_[25] ),
        .R(\data_sr[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[26] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\data_sr_reg_n_0_[25] ),
        .Q(\data_sr_reg_n_0_[26] ),
        .R(\data_sr[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[27] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\data_sr[27]_i_1_n_0 ),
        .Q(\data_sr_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[28] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\data_sr_reg_n_0_[27] ),
        .Q(\data_sr_reg_n_0_[28] ),
        .R(\data_sr[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[29] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\data_sr_reg_n_0_[28] ),
        .Q(\data_sr_reg_n_0_[29] ),
        .R(\data_sr[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[2] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\data_sr_reg_n_0_[1] ),
        .Q(\data_sr_reg_n_0_[2] ),
        .R(\data_sr[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[30] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\data_sr_reg_n_0_[29] ),
        .Q(\data_sr_reg_n_0_[30] ),
        .R(\data_sr[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[31] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\data_sr[31]_i_1_n_0 ),
        .Q(\data_sr_reg_n_0_[31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[3] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\data_sr[3]_i_1_n_0 ),
        .Q(\data_sr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[4] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\data_sr[4]_i_1_n_0 ),
        .Q(\data_sr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[5] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\data_sr[5]_i_1_n_0 ),
        .Q(\data_sr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[6] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\data_sr[6]_i_1_n_0 ),
        .Q(\data_sr_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[7] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\data_sr[7]_i_1_n_0 ),
        .Q(\data_sr_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[8] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\data_sr[8]_i_1_n_0 ),
        .Q(\data_sr_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \data_sr_reg[9] 
       (.C(clk),
        .CE(busy_sr0),
        .D(\data_sr[9]_i_1_n_0 ),
        .Q(\data_sr_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \divider[0]_i_1 
       (.I0(\divider_reg_n_0_[0] ),
        .O(p_0_in__0__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \divider[1]_i_1 
       (.I0(\divider_reg_n_0_[0] ),
        .I1(\divider_reg_n_0_[1] ),
        .O(p_0_in__0__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \divider[2]_i_1 
       (.I0(\divider_reg_n_0_[1] ),
        .I1(\divider_reg_n_0_[0] ),
        .I2(\divider_reg_n_0_[2] ),
        .O(p_0_in__0__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \divider[3]_i_1 
       (.I0(\divider_reg_n_0_[2] ),
        .I1(\divider_reg_n_0_[0] ),
        .I2(\divider_reg_n_0_[1] ),
        .I3(\divider_reg_n_0_[3] ),
        .O(p_0_in__0__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \divider[4]_i_1 
       (.I0(\divider_reg_n_0_[3] ),
        .I1(\divider_reg_n_0_[1] ),
        .I2(\divider_reg_n_0_[0] ),
        .I3(\divider_reg_n_0_[2] ),
        .I4(\divider_reg_n_0_[4] ),
        .O(p_0_in__0__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \divider[5]_i_1 
       (.I0(\divider_reg_n_0_[4] ),
        .I1(\divider_reg_n_0_[2] ),
        .I2(\divider_reg_n_0_[0] ),
        .I3(\divider_reg_n_0_[1] ),
        .I4(\divider_reg_n_0_[3] ),
        .I5(\divider_reg_n_0_[5] ),
        .O(p_0_in__0__0[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \divider[6]_i_1 
       (.I0(\busy_sr[0]_i_3_n_0 ),
        .I1(p_0_in__0[0]),
        .O(p_0_in__0__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \divider[7]_i_2 
       (.I0(p_0_in__0[0]),
        .I1(\busy_sr[0]_i_3_n_0 ),
        .I2(p_0_in__0[1]),
        .O(p_0_in__0__0[7]));
  FDRE #(
    .INIT(1'b1)) 
    \divider_reg[0] 
       (.C(clk),
        .CE(\divider_reg[7]_0 ),
        .D(p_0_in__0__0[0]),
        .Q(\divider_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \divider_reg[1] 
       (.C(clk),
        .CE(\divider_reg[7]_0 ),
        .D(p_0_in__0__0[1]),
        .Q(\divider_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \divider_reg[2] 
       (.C(clk),
        .CE(\divider_reg[7]_0 ),
        .D(p_0_in__0__0[2]),
        .Q(\divider_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \divider_reg[3] 
       (.C(clk),
        .CE(\divider_reg[7]_0 ),
        .D(p_0_in__0__0[3]),
        .Q(\divider_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \divider_reg[4] 
       (.C(clk),
        .CE(\divider_reg[7]_0 ),
        .D(p_0_in__0__0[4]),
        .Q(\divider_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \divider_reg[5] 
       (.C(clk),
        .CE(\divider_reg[7]_0 ),
        .D(p_0_in__0__0[5]),
        .Q(\divider_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \divider_reg[6] 
       (.C(clk),
        .CE(\divider_reg[7]_0 ),
        .D(p_0_in__0__0[6]),
        .Q(p_0_in__0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \divider_reg[7] 
       (.C(clk),
        .CE(\divider_reg[7]_0 ),
        .D(p_0_in__0__0[7]),
        .Q(p_0_in__0[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFAFFFEFFFEFAFAF)) 
    sioc_i_1
       (.I0(sioc_i_2_n_0),
        .I1(sioc_i_3_n_0),
        .I2(p_0_in),
        .I3(\busy_sr_reg_n_0_[0] ),
        .I4(p_0_in__0[1]),
        .I5(p_0_in__0[0]),
        .O(sioc_i_1_n_0));
  LUT6 #(
    .INIT(64'hCC0000000000000B)) 
    sioc_i_2
       (.I0(p_0_in__0[0]),
        .I1(\busy_sr_reg_n_0_[30] ),
        .I2(\busy_sr_reg_n_0_[0] ),
        .I3(\busy_sr_reg_n_0_[1] ),
        .I4(\busy_sr_reg_n_0_[29] ),
        .I5(\busy_sr_reg_n_0_[2] ),
        .O(sioc_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    sioc_i_3
       (.I0(\busy_sr_reg_n_0_[30] ),
        .I1(\busy_sr_reg_n_0_[29] ),
        .I2(\busy_sr_reg_n_0_[2] ),
        .O(sioc_i_3_n_0));
  FDRE sioc_reg
       (.C(clk),
        .CE(1'b1),
        .D(sioc_i_1_n_0),
        .Q(sioc),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    siod_INST_0
       (.I0(\data_sr_reg_n_0_[31] ),
        .I1(siod_INST_0_i_1_n_0),
        .O(siod));
  LUT6 #(
    .INIT(64'hB0BBB0BB0000B0BB)) 
    siod_INST_0_i_1
       (.I0(\busy_sr_reg_n_0_[28] ),
        .I1(\busy_sr_reg_n_0_[29] ),
        .I2(p_1_in_0[0]),
        .I3(p_1_in_0[1]),
        .I4(\busy_sr_reg_n_0_[11] ),
        .I5(\busy_sr_reg_n_0_[10] ),
        .O(siod_INST_0_i_1_n_0));
  FDRE taken_reg
       (.C(clk),
        .CE(1'b1),
        .D(taken_reg_0),
        .Q(E),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "ov7670_control" *) 
module design_1_ov7670_control_0_0_ov7670_control
   (config_finished,
    siod,
    xclk,
    sioc,
    clk,
    rst_btn);
  output config_finished;
  output siod;
  output xclk;
  output sioc;
  input clk;
  input rst_btn;

  wire Inst_i2c_n_3;
  wire Inst_registers_n_16;
  wire Inst_registers_n_18;
  wire btn_out;
  wire clk;
  wire config_finished;
  wire p_0_in;
  wire [0:0]p_1_in;
  wire rst_btn;
  wire sioc;
  wire siod;
  wire [15:0]sreg_reg;
  wire sys_clk_i_1_n_0;
  wire taken;
  wire xclk;

  design_1_ov7670_control_0_0_debounce Inst_debounce
       (.SR(btn_out),
        .clk(clk),
        .rst_btn(rst_btn));
  design_1_ov7670_control_0_0_i2c_sender Inst_i2c
       (.DOADO(sreg_reg),
        .E(taken),
        .clk(clk),
        .\divider_reg[2]_0 (Inst_i2c_n_3),
        .\divider_reg[7]_0 (Inst_registers_n_16),
        .p_0_in(p_0_in),
        .p_1_in(p_1_in),
        .sioc(sioc),
        .siod(siod),
        .taken_reg_0(Inst_registers_n_18));
  design_1_ov7670_control_0_0_ov7670_registers Inst_registers
       (.DOADO(sreg_reg),
        .E(taken),
        .SR(btn_out),
        .\busy_sr_reg[31] (Inst_registers_n_16),
        .\busy_sr_reg[31]_0 (Inst_registers_n_18),
        .clk(clk),
        .config_finished(config_finished),
        .p_0_in(p_0_in),
        .p_1_in(p_1_in),
        .taken_reg(Inst_i2c_n_3));
  LUT1 #(
    .INIT(2'h1)) 
    sys_clk_i_1
       (.I0(xclk),
        .O(sys_clk_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sys_clk_reg
       (.C(clk),
        .CE(1'b1),
        .D(sys_clk_i_1_n_0),
        .Q(xclk),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "ov7670_registers" *) 
module design_1_ov7670_control_0_0_ov7670_registers
   (DOADO,
    \busy_sr_reg[31] ,
    config_finished,
    \busy_sr_reg[31]_0 ,
    p_1_in,
    clk,
    taken_reg,
    p_0_in,
    SR,
    E);
  output [15:0]DOADO;
  output [0:0]\busy_sr_reg[31] ;
  output config_finished;
  output \busy_sr_reg[31]_0 ;
  output [0:0]p_1_in;
  input clk;
  input taken_reg;
  input p_0_in;
  input [0:0]SR;
  input [0:0]E;

  wire [15:0]DOADO;
  wire [0:0]E;
  wire [0:0]SR;
  wire [7:0]address;
  wire [7:0]address_reg;
  wire \address_rep[0]_i_1_n_0 ;
  wire \address_rep[1]_i_1_n_0 ;
  wire \address_rep[2]_i_1_n_0 ;
  wire \address_rep[3]_i_1_n_0 ;
  wire \address_rep[4]_i_1_n_0 ;
  wire \address_rep[5]_i_1_n_0 ;
  wire \address_rep[6]_i_1_n_0 ;
  wire \address_rep[7]_i_1_n_0 ;
  wire \address_rep[7]_i_2_n_0 ;
  wire [0:0]\busy_sr_reg[31] ;
  wire \busy_sr_reg[31]_0 ;
  wire clk;
  wire config_finished;
  wire config_finished_INST_0_i_1_n_0;
  wire config_finished_INST_0_i_2_n_0;
  wire config_finished_INST_0_i_3_n_0;
  wire config_finished_INST_0_i_4_n_0;
  wire p_0_in;
  wire [0:0]p_1_in;
  wire taken_reg;
  wire [15:0]NLW_sreg_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_sreg_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_sreg_reg_DOPBDOP_UNCONNECTED;

  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[0] 
       (.C(clk),
        .CE(E),
        .D(\address_rep[0]_i_1_n_0 ),
        .Q(address_reg[0]),
        .R(SR));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\address_rep[1]_i_1_n_0 ),
        .Q(address_reg[1]),
        .R(SR));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\address_rep[2]_i_1_n_0 ),
        .Q(address_reg[2]),
        .R(SR));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[3] 
       (.C(clk),
        .CE(E),
        .D(\address_rep[3]_i_1_n_0 ),
        .Q(address_reg[3]),
        .R(SR));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[4] 
       (.C(clk),
        .CE(E),
        .D(\address_rep[4]_i_1_n_0 ),
        .Q(address_reg[4]),
        .R(SR));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[5] 
       (.C(clk),
        .CE(E),
        .D(\address_rep[5]_i_1_n_0 ),
        .Q(address_reg[5]),
        .R(SR));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[6] 
       (.C(clk),
        .CE(E),
        .D(\address_rep[6]_i_1_n_0 ),
        .Q(address_reg[6]),
        .R(SR));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[7] 
       (.C(clk),
        .CE(E),
        .D(\address_rep[7]_i_1_n_0 ),
        .Q(address_reg[7]),
        .R(SR));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_rep[0] 
       (.C(clk),
        .CE(E),
        .D(\address_rep[0]_i_1_n_0 ),
        .Q(address[0]),
        .R(SR));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_rep[1] 
       (.C(clk),
        .CE(E),
        .D(\address_rep[1]_i_1_n_0 ),
        .Q(address[1]),
        .R(SR));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_rep[2] 
       (.C(clk),
        .CE(E),
        .D(\address_rep[2]_i_1_n_0 ),
        .Q(address[2]),
        .R(SR));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_rep[3] 
       (.C(clk),
        .CE(E),
        .D(\address_rep[3]_i_1_n_0 ),
        .Q(address[3]),
        .R(SR));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_rep[4] 
       (.C(clk),
        .CE(E),
        .D(\address_rep[4]_i_1_n_0 ),
        .Q(address[4]),
        .R(SR));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_rep[5] 
       (.C(clk),
        .CE(E),
        .D(\address_rep[5]_i_1_n_0 ),
        .Q(address[5]),
        .R(SR));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_rep[6] 
       (.C(clk),
        .CE(E),
        .D(\address_rep[6]_i_1_n_0 ),
        .Q(address[6]),
        .R(SR));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_reg_rep[7] 
       (.C(clk),
        .CE(E),
        .D(\address_rep[7]_i_1_n_0 ),
        .Q(address[7]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \address_rep[0]_i_1 
       (.I0(address_reg[0]),
        .O(\address_rep[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \address_rep[1]_i_1 
       (.I0(address_reg[0]),
        .I1(address_reg[1]),
        .O(\address_rep[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \address_rep[2]_i_1 
       (.I0(address_reg[1]),
        .I1(address_reg[0]),
        .I2(address_reg[2]),
        .O(\address_rep[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \address_rep[3]_i_1 
       (.I0(address_reg[2]),
        .I1(address_reg[0]),
        .I2(address_reg[1]),
        .I3(address_reg[3]),
        .O(\address_rep[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \address_rep[4]_i_1 
       (.I0(address_reg[3]),
        .I1(address_reg[1]),
        .I2(address_reg[0]),
        .I3(address_reg[2]),
        .I4(address_reg[4]),
        .O(\address_rep[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \address_rep[5]_i_1 
       (.I0(address_reg[4]),
        .I1(address_reg[2]),
        .I2(address_reg[0]),
        .I3(address_reg[1]),
        .I4(address_reg[3]),
        .I5(address_reg[5]),
        .O(\address_rep[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \address_rep[6]_i_1 
       (.I0(\address_rep[7]_i_2_n_0 ),
        .I1(address_reg[6]),
        .O(\address_rep[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \address_rep[7]_i_1 
       (.I0(address_reg[6]),
        .I1(\address_rep[7]_i_2_n_0 ),
        .I2(address_reg[7]),
        .O(\address_rep[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \address_rep[7]_i_2 
       (.I0(address_reg[4]),
        .I1(address_reg[2]),
        .I2(address_reg[0]),
        .I3(address_reg[1]),
        .I4(address_reg[3]),
        .I5(address_reg[5]),
        .O(\address_rep[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \busy_sr[0]_i_2 
       (.I0(config_finished_INST_0_i_4_n_0),
        .I1(config_finished_INST_0_i_3_n_0),
        .I2(config_finished_INST_0_i_2_n_0),
        .I3(config_finished_INST_0_i_1_n_0),
        .I4(p_0_in),
        .O(p_1_in));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    config_finished_INST_0
       (.I0(config_finished_INST_0_i_1_n_0),
        .I1(config_finished_INST_0_i_2_n_0),
        .I2(config_finished_INST_0_i_3_n_0),
        .I3(config_finished_INST_0_i_4_n_0),
        .O(config_finished));
  LUT4 #(
    .INIT(16'h7FFF)) 
    config_finished_INST_0_i_1
       (.I0(DOADO[5]),
        .I1(DOADO[4]),
        .I2(DOADO[7]),
        .I3(DOADO[6]),
        .O(config_finished_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    config_finished_INST_0_i_2
       (.I0(DOADO[1]),
        .I1(DOADO[0]),
        .I2(DOADO[3]),
        .I3(DOADO[2]),
        .O(config_finished_INST_0_i_2_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    config_finished_INST_0_i_3
       (.I0(DOADO[13]),
        .I1(DOADO[12]),
        .I2(DOADO[15]),
        .I3(DOADO[14]),
        .O(config_finished_INST_0_i_3_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    config_finished_INST_0_i_4
       (.I0(DOADO[9]),
        .I1(DOADO[8]),
        .I2(DOADO[11]),
        .I3(DOADO[10]),
        .O(config_finished_INST_0_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFE0000)) 
    \divider[7]_i_1 
       (.I0(config_finished_INST_0_i_1_n_0),
        .I1(config_finished_INST_0_i_2_n_0),
        .I2(config_finished_INST_0_i_3_n_0),
        .I3(config_finished_INST_0_i_4_n_0),
        .I4(taken_reg),
        .I5(p_0_in),
        .O(\busy_sr_reg[31] ));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "U0/Inst_registers/sreg" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "15" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "15" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h535E5222510050804F8014383A04401004008C003E000C001100120412801280),
    .INIT_01(256'h229121021E0716020F4B0E61030A1A7A190232B61801171311003DC0589E5480),
    .INIT_02(256'h90008F008E008D4F74106B4A69004E204D403C78392A3871371D350B330B2907),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFF5640B80AB382B20EB10CB0849A0096009100),
    .INIT_04(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    sreg_reg
       (.ADDRARDADDR({1'b0,1'b0,address,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(DOADO),
        .DOBDO(NLW_sreg_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_sreg_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_sreg_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h2)) 
    taken_i_1
       (.I0(p_1_in),
        .I1(taken_reg),
        .O(\busy_sr_reg[31]_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
