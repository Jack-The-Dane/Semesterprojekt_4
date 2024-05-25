// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Fri May 24 10:50:10 2024
// Host        : Cornelia running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/Corne/Documents/MEGA/4.
//               Semester/Semesterprojekt/Semesterprojekt_4/FPGA_projekt/FPGA_projekt.gen/sources_1/bd/buildup/ip/buildup_clock_divider_0_0/buildup_clock_divider_0_0_sim_netlist.v}
// Design      : buildup_clock_divider_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "buildup_clock_divider_0_0,clock_divider,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "clock_divider,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module buildup_clock_divider_0_0
   (rst,
    clk,
    clk_div);
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN buildup_clk, INSERT_VIP 0" *) input clk;
  output clk_div;

  wire clk;
  wire clk_div;
  wire rst;

  buildup_clock_divider_0_0_clock_divider U0
       (.clk(clk),
        .clk_div(clk_div),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "clock_divider" *) 
module buildup_clock_divider_0_0_clock_divider
   (clk_div,
    clk,
    rst);
  output clk_div;
  input clk;
  input rst;

  wire clk;
  wire clk_div;
  wire clk_div_i_1_n_0;
  wire clk_div_i_2_n_0;
  wire clk_div_i_3_n_0;
  wire clk_div_i_4_n_0;
  wire clk_div_i_6_n_0;
  wire clk_div_i_7_n_0;
  wire clk_div_i_8_n_0;
  wire clk_div_i_9_n_0;
  wire cnt1;
  wire \cnt[0]_i_2_n_0 ;
  wire \cnt[0]_i_3_n_0 ;
  wire \cnt[0]_i_4_n_0 ;
  wire \cnt[0]_i_5_n_0 ;
  wire \cnt[0]_i_6_n_0 ;
  wire \cnt[0]_i_7_n_0 ;
  wire \cnt[12]_i_2_n_0 ;
  wire \cnt[12]_i_3_n_0 ;
  wire \cnt[12]_i_4_n_0 ;
  wire \cnt[12]_i_5_n_0 ;
  wire \cnt[16]_i_2_n_0 ;
  wire \cnt[16]_i_3_n_0 ;
  wire \cnt[16]_i_4_n_0 ;
  wire \cnt[16]_i_5_n_0 ;
  wire \cnt[4]_i_2_n_0 ;
  wire \cnt[4]_i_3_n_0 ;
  wire \cnt[4]_i_4_n_0 ;
  wire \cnt[4]_i_5_n_0 ;
  wire \cnt[8]_i_2_n_0 ;
  wire \cnt[8]_i_3_n_0 ;
  wire \cnt[8]_i_4_n_0 ;
  wire \cnt[8]_i_5_n_0 ;
  wire [19:0]cnt_reg;
  wire \cnt_reg[0]_i_1_n_0 ;
  wire \cnt_reg[0]_i_1_n_1 ;
  wire \cnt_reg[0]_i_1_n_2 ;
  wire \cnt_reg[0]_i_1_n_3 ;
  wire \cnt_reg[0]_i_1_n_4 ;
  wire \cnt_reg[0]_i_1_n_5 ;
  wire \cnt_reg[0]_i_1_n_6 ;
  wire \cnt_reg[0]_i_1_n_7 ;
  wire \cnt_reg[12]_i_1_n_0 ;
  wire \cnt_reg[12]_i_1_n_1 ;
  wire \cnt_reg[12]_i_1_n_2 ;
  wire \cnt_reg[12]_i_1_n_3 ;
  wire \cnt_reg[12]_i_1_n_4 ;
  wire \cnt_reg[12]_i_1_n_5 ;
  wire \cnt_reg[12]_i_1_n_6 ;
  wire \cnt_reg[12]_i_1_n_7 ;
  wire \cnt_reg[16]_i_1_n_1 ;
  wire \cnt_reg[16]_i_1_n_2 ;
  wire \cnt_reg[16]_i_1_n_3 ;
  wire \cnt_reg[16]_i_1_n_4 ;
  wire \cnt_reg[16]_i_1_n_5 ;
  wire \cnt_reg[16]_i_1_n_6 ;
  wire \cnt_reg[16]_i_1_n_7 ;
  wire \cnt_reg[4]_i_1_n_0 ;
  wire \cnt_reg[4]_i_1_n_1 ;
  wire \cnt_reg[4]_i_1_n_2 ;
  wire \cnt_reg[4]_i_1_n_3 ;
  wire \cnt_reg[4]_i_1_n_4 ;
  wire \cnt_reg[4]_i_1_n_5 ;
  wire \cnt_reg[4]_i_1_n_6 ;
  wire \cnt_reg[4]_i_1_n_7 ;
  wire \cnt_reg[8]_i_1_n_0 ;
  wire \cnt_reg[8]_i_1_n_1 ;
  wire \cnt_reg[8]_i_1_n_2 ;
  wire \cnt_reg[8]_i_1_n_3 ;
  wire \cnt_reg[8]_i_1_n_4 ;
  wire \cnt_reg[8]_i_1_n_5 ;
  wire \cnt_reg[8]_i_1_n_6 ;
  wire \cnt_reg[8]_i_1_n_7 ;
  wire [19:1]plusOp;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__2_n_0;
  wire plusOp_carry__2_n_1;
  wire plusOp_carry__2_n_2;
  wire plusOp_carry__2_n_3;
  wire plusOp_carry__3_n_2;
  wire plusOp_carry__3_n_3;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire rst;
  wire [3:3]\NLW_cnt_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:2]NLW_plusOp_carry__3_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__3_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hAAAB0000AAABAAAB)) 
    clk_div_i_1
       (.I0(clk_div),
        .I1(clk_div_i_2_n_0),
        .I2(clk_div_i_3_n_0),
        .I3(clk_div_i_4_n_0),
        .I4(rst),
        .I5(cnt1),
        .O(clk_div_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    clk_div_i_2
       (.I0(cnt_reg[14]),
        .I1(cnt_reg[15]),
        .I2(cnt_reg[12]),
        .I3(cnt_reg[13]),
        .I4(clk_div_i_6_n_0),
        .O(clk_div_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEFFFFF)) 
    clk_div_i_3
       (.I0(cnt_reg[3]),
        .I1(rst),
        .I2(cnt_reg[4]),
        .I3(cnt_reg[5]),
        .I4(cnt_reg[2]),
        .I5(clk_div_i_7_n_0),
        .O(clk_div_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    clk_div_i_4
       (.I0(cnt_reg[11]),
        .I1(cnt_reg[10]),
        .I2(cnt_reg[6]),
        .I3(cnt_reg[7]),
        .I4(cnt_reg[8]),
        .I5(cnt_reg[9]),
        .O(clk_div_i_4_n_0));
  LUT4 #(
    .INIT(16'h0100)) 
    clk_div_i_5
       (.I0(clk_div_i_4_n_0),
        .I1(clk_div_i_8_n_0),
        .I2(clk_div_i_9_n_0),
        .I3(clk_div_i_6_n_0),
        .O(cnt1));
  LUT4 #(
    .INIT(16'h0001)) 
    clk_div_i_6
       (.I0(cnt_reg[19]),
        .I1(cnt_reg[18]),
        .I2(cnt_reg[17]),
        .I3(cnt_reg[16]),
        .O(clk_div_i_6_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    clk_div_i_7
       (.I0(cnt_reg[0]),
        .I1(cnt_reg[1]),
        .O(clk_div_i_7_n_0));
  LUT4 #(
    .INIT(16'hFEAA)) 
    clk_div_i_8
       (.I0(cnt_reg[5]),
        .I1(cnt_reg[2]),
        .I2(cnt_reg[3]),
        .I3(cnt_reg[4]),
        .O(clk_div_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    clk_div_i_9
       (.I0(cnt_reg[13]),
        .I1(cnt_reg[12]),
        .I2(cnt_reg[15]),
        .I3(cnt_reg[14]),
        .O(clk_div_i_9_n_0));
  FDRE clk_div_reg
       (.C(clk),
        .CE(1'b1),
        .D(clk_div_i_1_n_0),
        .Q(clk_div),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB888BB88)) 
    \cnt[0]_i_2 
       (.I0(cnt_reg[3]),
        .I1(cnt1),
        .I2(\cnt[0]_i_6_n_0 ),
        .I3(plusOp[3]),
        .I4(\cnt[0]_i_7_n_0 ),
        .O(\cnt[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB888BB88)) 
    \cnt[0]_i_3 
       (.I0(cnt_reg[2]),
        .I1(cnt1),
        .I2(\cnt[0]_i_6_n_0 ),
        .I3(plusOp[2]),
        .I4(\cnt[0]_i_7_n_0 ),
        .O(\cnt[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB888BB88)) 
    \cnt[0]_i_4 
       (.I0(cnt_reg[1]),
        .I1(cnt1),
        .I2(\cnt[0]_i_6_n_0 ),
        .I3(plusOp[1]),
        .I4(\cnt[0]_i_7_n_0 ),
        .O(\cnt[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h3331)) 
    \cnt[0]_i_5 
       (.I0(\cnt[0]_i_7_n_0 ),
        .I1(cnt_reg[0]),
        .I2(\cnt[0]_i_6_n_0 ),
        .I3(cnt1),
        .O(\cnt[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \cnt[0]_i_6 
       (.I0(clk_div_i_6_n_0),
        .I1(cnt_reg[13]),
        .I2(cnt_reg[12]),
        .I3(cnt_reg[15]),
        .I4(cnt_reg[14]),
        .I5(clk_div_i_4_n_0),
        .O(\cnt[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \cnt[0]_i_7 
       (.I0(cnt_reg[1]),
        .I1(cnt_reg[0]),
        .I2(cnt_reg[2]),
        .I3(cnt_reg[4]),
        .I4(cnt_reg[3]),
        .I5(cnt_reg[5]),
        .O(\cnt[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFDF00000000)) 
    \cnt[12]_i_2 
       (.I0(clk_div_i_6_n_0),
        .I1(clk_div_i_9_n_0),
        .I2(\cnt[0]_i_7_n_0 ),
        .I3(clk_div_i_4_n_0),
        .I4(cnt1),
        .I5(plusOp[15]),
        .O(\cnt[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFDF00000000)) 
    \cnt[12]_i_3 
       (.I0(clk_div_i_6_n_0),
        .I1(clk_div_i_9_n_0),
        .I2(\cnt[0]_i_7_n_0 ),
        .I3(clk_div_i_4_n_0),
        .I4(cnt1),
        .I5(plusOp[14]),
        .O(\cnt[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFDF00000000)) 
    \cnt[12]_i_4 
       (.I0(clk_div_i_6_n_0),
        .I1(clk_div_i_9_n_0),
        .I2(\cnt[0]_i_7_n_0 ),
        .I3(clk_div_i_4_n_0),
        .I4(cnt1),
        .I5(plusOp[13]),
        .O(\cnt[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFDF00000000)) 
    \cnt[12]_i_5 
       (.I0(clk_div_i_6_n_0),
        .I1(clk_div_i_9_n_0),
        .I2(\cnt[0]_i_7_n_0 ),
        .I3(clk_div_i_4_n_0),
        .I4(cnt1),
        .I5(plusOp[12]),
        .O(\cnt[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFDF00000000)) 
    \cnt[16]_i_2 
       (.I0(clk_div_i_6_n_0),
        .I1(clk_div_i_9_n_0),
        .I2(\cnt[0]_i_7_n_0 ),
        .I3(clk_div_i_4_n_0),
        .I4(cnt1),
        .I5(plusOp[19]),
        .O(\cnt[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFDF00000000)) 
    \cnt[16]_i_3 
       (.I0(clk_div_i_6_n_0),
        .I1(clk_div_i_9_n_0),
        .I2(\cnt[0]_i_7_n_0 ),
        .I3(clk_div_i_4_n_0),
        .I4(cnt1),
        .I5(plusOp[18]),
        .O(\cnt[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFDF00000000)) 
    \cnt[16]_i_4 
       (.I0(clk_div_i_6_n_0),
        .I1(clk_div_i_9_n_0),
        .I2(\cnt[0]_i_7_n_0 ),
        .I3(clk_div_i_4_n_0),
        .I4(cnt1),
        .I5(plusOp[17]),
        .O(\cnt[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFDF00000000)) 
    \cnt[16]_i_5 
       (.I0(clk_div_i_6_n_0),
        .I1(clk_div_i_9_n_0),
        .I2(\cnt[0]_i_7_n_0 ),
        .I3(clk_div_i_4_n_0),
        .I4(cnt1),
        .I5(plusOp[16]),
        .O(\cnt[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFDF00000000)) 
    \cnt[4]_i_2 
       (.I0(clk_div_i_6_n_0),
        .I1(clk_div_i_9_n_0),
        .I2(\cnt[0]_i_7_n_0 ),
        .I3(clk_div_i_4_n_0),
        .I4(cnt1),
        .I5(plusOp[7]),
        .O(\cnt[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFDF00000000)) 
    \cnt[4]_i_3 
       (.I0(clk_div_i_6_n_0),
        .I1(clk_div_i_9_n_0),
        .I2(\cnt[0]_i_7_n_0 ),
        .I3(clk_div_i_4_n_0),
        .I4(cnt1),
        .I5(plusOp[6]),
        .O(\cnt[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFDF00000000)) 
    \cnt[4]_i_4 
       (.I0(clk_div_i_6_n_0),
        .I1(clk_div_i_9_n_0),
        .I2(\cnt[0]_i_7_n_0 ),
        .I3(clk_div_i_4_n_0),
        .I4(cnt1),
        .I5(plusOp[5]),
        .O(\cnt[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB888BB88)) 
    \cnt[4]_i_5 
       (.I0(cnt_reg[4]),
        .I1(cnt1),
        .I2(\cnt[0]_i_6_n_0 ),
        .I3(plusOp[4]),
        .I4(\cnt[0]_i_7_n_0 ),
        .O(\cnt[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFDF00000000)) 
    \cnt[8]_i_2 
       (.I0(clk_div_i_6_n_0),
        .I1(clk_div_i_9_n_0),
        .I2(\cnt[0]_i_7_n_0 ),
        .I3(clk_div_i_4_n_0),
        .I4(cnt1),
        .I5(plusOp[11]),
        .O(\cnt[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFDF00000000)) 
    \cnt[8]_i_3 
       (.I0(clk_div_i_6_n_0),
        .I1(clk_div_i_9_n_0),
        .I2(\cnt[0]_i_7_n_0 ),
        .I3(clk_div_i_4_n_0),
        .I4(cnt1),
        .I5(plusOp[10]),
        .O(\cnt[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFDF00000000)) 
    \cnt[8]_i_4 
       (.I0(clk_div_i_6_n_0),
        .I1(clk_div_i_9_n_0),
        .I2(\cnt[0]_i_7_n_0 ),
        .I3(clk_div_i_4_n_0),
        .I4(cnt1),
        .I5(plusOp[9]),
        .O(\cnt[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFDF00000000)) 
    \cnt[8]_i_5 
       (.I0(clk_div_i_6_n_0),
        .I1(clk_div_i_9_n_0),
        .I2(\cnt[0]_i_7_n_0 ),
        .I3(clk_div_i_4_n_0),
        .I4(cnt1),
        .I5(plusOp[8]),
        .O(\cnt[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\cnt_reg[0]_i_1_n_7 ),
        .Q(cnt_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\cnt_reg[0]_i_1_n_0 ,\cnt_reg[0]_i_1_n_1 ,\cnt_reg[0]_i_1_n_2 ,\cnt_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,cnt1}),
        .O({\cnt_reg[0]_i_1_n_4 ,\cnt_reg[0]_i_1_n_5 ,\cnt_reg[0]_i_1_n_6 ,\cnt_reg[0]_i_1_n_7 }),
        .S({\cnt[0]_i_2_n_0 ,\cnt[0]_i_3_n_0 ,\cnt[0]_i_4_n_0 ,\cnt[0]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\cnt_reg[8]_i_1_n_5 ),
        .Q(cnt_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\cnt_reg[8]_i_1_n_4 ),
        .Q(cnt_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\cnt_reg[12]_i_1_n_7 ),
        .Q(cnt_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[12]_i_1 
       (.CI(\cnt_reg[8]_i_1_n_0 ),
        .CO({\cnt_reg[12]_i_1_n_0 ,\cnt_reg[12]_i_1_n_1 ,\cnt_reg[12]_i_1_n_2 ,\cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[12]_i_1_n_4 ,\cnt_reg[12]_i_1_n_5 ,\cnt_reg[12]_i_1_n_6 ,\cnt_reg[12]_i_1_n_7 }),
        .S({\cnt[12]_i_2_n_0 ,\cnt[12]_i_3_n_0 ,\cnt[12]_i_4_n_0 ,\cnt[12]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\cnt_reg[12]_i_1_n_6 ),
        .Q(cnt_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\cnt_reg[12]_i_1_n_5 ),
        .Q(cnt_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\cnt_reg[12]_i_1_n_4 ),
        .Q(cnt_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\cnt_reg[16]_i_1_n_7 ),
        .Q(cnt_reg[16]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[16]_i_1 
       (.CI(\cnt_reg[12]_i_1_n_0 ),
        .CO({\NLW_cnt_reg[16]_i_1_CO_UNCONNECTED [3],\cnt_reg[16]_i_1_n_1 ,\cnt_reg[16]_i_1_n_2 ,\cnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[16]_i_1_n_4 ,\cnt_reg[16]_i_1_n_5 ,\cnt_reg[16]_i_1_n_6 ,\cnt_reg[16]_i_1_n_7 }),
        .S({\cnt[16]_i_2_n_0 ,\cnt[16]_i_3_n_0 ,\cnt[16]_i_4_n_0 ,\cnt[16]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\cnt_reg[16]_i_1_n_6 ),
        .Q(cnt_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\cnt_reg[16]_i_1_n_5 ),
        .Q(cnt_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\cnt_reg[16]_i_1_n_4 ),
        .Q(cnt_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\cnt_reg[0]_i_1_n_6 ),
        .Q(cnt_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\cnt_reg[0]_i_1_n_5 ),
        .Q(cnt_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\cnt_reg[0]_i_1_n_4 ),
        .Q(cnt_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\cnt_reg[4]_i_1_n_7 ),
        .Q(cnt_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[4]_i_1 
       (.CI(\cnt_reg[0]_i_1_n_0 ),
        .CO({\cnt_reg[4]_i_1_n_0 ,\cnt_reg[4]_i_1_n_1 ,\cnt_reg[4]_i_1_n_2 ,\cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[4]_i_1_n_4 ,\cnt_reg[4]_i_1_n_5 ,\cnt_reg[4]_i_1_n_6 ,\cnt_reg[4]_i_1_n_7 }),
        .S({\cnt[4]_i_2_n_0 ,\cnt[4]_i_3_n_0 ,\cnt[4]_i_4_n_0 ,\cnt[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\cnt_reg[4]_i_1_n_6 ),
        .Q(cnt_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\cnt_reg[4]_i_1_n_5 ),
        .Q(cnt_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\cnt_reg[4]_i_1_n_4 ),
        .Q(cnt_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\cnt_reg[8]_i_1_n_7 ),
        .Q(cnt_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[8]_i_1 
       (.CI(\cnt_reg[4]_i_1_n_0 ),
        .CO({\cnt_reg[8]_i_1_n_0 ,\cnt_reg[8]_i_1_n_1 ,\cnt_reg[8]_i_1_n_2 ,\cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[8]_i_1_n_4 ,\cnt_reg[8]_i_1_n_5 ,\cnt_reg[8]_i_1_n_6 ,\cnt_reg[8]_i_1_n_7 }),
        .S({\cnt[8]_i_2_n_0 ,\cnt[8]_i_3_n_0 ,\cnt[8]_i_4_n_0 ,\cnt[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\cnt_reg[8]_i_1_n_6 ),
        .Q(cnt_reg[9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(cnt_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[4:1]),
        .S(cnt_reg[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[8:5]),
        .S(cnt_reg[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[12:9]),
        .S(cnt_reg[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({plusOp_carry__2_n_0,plusOp_carry__2_n_1,plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[16:13]),
        .S(cnt_reg[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__3
       (.CI(plusOp_carry__2_n_0),
        .CO({NLW_plusOp_carry__3_CO_UNCONNECTED[3:2],plusOp_carry__3_n_2,plusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__3_O_UNCONNECTED[3],plusOp[19:17]}),
        .S({1'b0,cnt_reg[19:17]}));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
