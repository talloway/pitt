// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Mar  4 16:10:01 2021
// Host        : DESKTOP-9AE4DJD running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/ece1195/labs/lab3/lab_3/ip/lab_3_top_level_0_0/lab_3_top_level_0_0_sim_netlist.v
// Design      : lab_3_top_level_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "lab_3_top_level_0_0,top_level,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "top_level,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module lab_3_top_level_0_0
   (A,
    B,
    clk,
    rst,
    R,
    done);
  input [31:0]A;
  input [31:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN lab_3_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  output [63:0]R;
  output done;

  wire [31:0]A;
  wire [31:0]B;
  wire [63:0]R;
  wire clk;
  wire done;
  wire rst;

  lab_3_top_level_0_0_top_level U0
       (.A(A),
        .B(B),
        .clk(clk),
        .done(done),
        .product(R),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "control" *) 
module lab_3_top_level_0_0_control
   (Q,
    E,
    D,
    \A[31] ,
    rst,
    multiplier_d,
    multiplicand_d,
    B,
    A,
    clk);
  output [2:0]Q;
  output [0:0]E;
  output [32:0]D;
  output [0:0]\A[31] ;
  input rst;
  input [0:0]multiplier_d;
  input [31:0]multiplicand_d;
  input [0:0]B;
  input [0:0]A;
  input clk;

  wire [0:0]A;
  wire [0:0]\A[31] ;
  wire [0:0]B;
  wire [32:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[0]_i_2_n_0 ;
  wire \FSM_onehot_state[0]_i_3_n_0 ;
  wire \FSM_onehot_state[0]_i_4_n_0 ;
  wire \FSM_onehot_state[0]_i_5_n_0 ;
  wire \FSM_onehot_state[0]_i_6_n_0 ;
  wire \FSM_onehot_state[0]_i_7_n_0 ;
  wire \FSM_onehot_state[0]_i_8_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state[2]_i_3_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [2:0]Q;
  wire clk;
  wire count0;
  wire \count[0]_i_1_n_0 ;
  wire \count[31]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_1 ;
  wire \count_reg[12]_i_1_n_2 ;
  wire \count_reg[12]_i_1_n_3 ;
  wire \count_reg[16]_i_1_n_0 ;
  wire \count_reg[16]_i_1_n_1 ;
  wire \count_reg[16]_i_1_n_2 ;
  wire \count_reg[16]_i_1_n_3 ;
  wire \count_reg[20]_i_1_n_0 ;
  wire \count_reg[20]_i_1_n_1 ;
  wire \count_reg[20]_i_1_n_2 ;
  wire \count_reg[20]_i_1_n_3 ;
  wire \count_reg[24]_i_1_n_0 ;
  wire \count_reg[24]_i_1_n_1 ;
  wire \count_reg[24]_i_1_n_2 ;
  wire \count_reg[24]_i_1_n_3 ;
  wire \count_reg[28]_i_1_n_0 ;
  wire \count_reg[28]_i_1_n_1 ;
  wire \count_reg[28]_i_1_n_2 ;
  wire \count_reg[28]_i_1_n_3 ;
  wire \count_reg[31]_i_3_n_2 ;
  wire \count_reg[31]_i_3_n_3 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_1 ;
  wire \count_reg[4]_i_1_n_2 ;
  wire \count_reg[4]_i_1_n_3 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_1 ;
  wire \count_reg[8]_i_1_n_2 ;
  wire \count_reg[8]_i_1_n_3 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[10] ;
  wire \count_reg_n_0_[11] ;
  wire \count_reg_n_0_[12] ;
  wire \count_reg_n_0_[13] ;
  wire \count_reg_n_0_[14] ;
  wire \count_reg_n_0_[15] ;
  wire \count_reg_n_0_[16] ;
  wire \count_reg_n_0_[17] ;
  wire \count_reg_n_0_[18] ;
  wire \count_reg_n_0_[19] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[20] ;
  wire \count_reg_n_0_[21] ;
  wire \count_reg_n_0_[22] ;
  wire \count_reg_n_0_[23] ;
  wire \count_reg_n_0_[24] ;
  wire \count_reg_n_0_[25] ;
  wire \count_reg_n_0_[26] ;
  wire \count_reg_n_0_[27] ;
  wire \count_reg_n_0_[28] ;
  wire \count_reg_n_0_[29] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[30] ;
  wire \count_reg_n_0_[31] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire \count_reg_n_0_[7] ;
  wire \count_reg_n_0_[8] ;
  wire \count_reg_n_0_[9] ;
  wire [31:1]in6;
  wire load;
  wire [31:0]multiplicand_d;
  wire [0:0]multiplier_d;
  wire rst;
  wire [3:2]\NLW_count_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_count_reg[31]_i_3_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \D_reg[0]_i_1 
       (.I0(B),
        .I1(Q[2]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \D_reg[31]_i_1__0 
       (.I0(A),
        .I1(Q[2]),
        .O(\A[31] ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \D_reg[32]_i_1 
       (.I0(Q[2]),
        .I1(multiplicand_d[0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \D_reg[33]_i_1 
       (.I0(Q[2]),
        .I1(multiplicand_d[1]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \D_reg[34]_i_1 
       (.I0(Q[2]),
        .I1(multiplicand_d[2]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \D_reg[35]_i_1 
       (.I0(Q[2]),
        .I1(multiplicand_d[3]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \D_reg[36]_i_1 
       (.I0(Q[2]),
        .I1(multiplicand_d[4]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \D_reg[37]_i_1 
       (.I0(Q[2]),
        .I1(multiplicand_d[5]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \D_reg[38]_i_1 
       (.I0(Q[2]),
        .I1(multiplicand_d[6]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \D_reg[39]_i_1 
       (.I0(Q[2]),
        .I1(multiplicand_d[7]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \D_reg[40]_i_1 
       (.I0(Q[2]),
        .I1(multiplicand_d[8]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \D_reg[41]_i_1 
       (.I0(Q[2]),
        .I1(multiplicand_d[9]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \D_reg[42]_i_1 
       (.I0(Q[2]),
        .I1(multiplicand_d[10]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \D_reg[43]_i_1 
       (.I0(Q[2]),
        .I1(multiplicand_d[11]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \D_reg[44]_i_1 
       (.I0(Q[2]),
        .I1(multiplicand_d[12]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \D_reg[45]_i_1 
       (.I0(Q[2]),
        .I1(multiplicand_d[13]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \D_reg[46]_i_1 
       (.I0(Q[2]),
        .I1(multiplicand_d[14]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \D_reg[47]_i_1 
       (.I0(Q[2]),
        .I1(multiplicand_d[15]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \D_reg[48]_i_1 
       (.I0(Q[2]),
        .I1(multiplicand_d[16]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \D_reg[49]_i_1 
       (.I0(Q[2]),
        .I1(multiplicand_d[17]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \D_reg[50]_i_1 
       (.I0(Q[2]),
        .I1(multiplicand_d[18]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \D_reg[51]_i_1 
       (.I0(Q[2]),
        .I1(multiplicand_d[19]),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \D_reg[52]_i_1 
       (.I0(Q[2]),
        .I1(multiplicand_d[20]),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \D_reg[53]_i_1 
       (.I0(Q[2]),
        .I1(multiplicand_d[21]),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \D_reg[54]_i_1 
       (.I0(Q[2]),
        .I1(multiplicand_d[22]),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \D_reg[55]_i_1 
       (.I0(Q[2]),
        .I1(multiplicand_d[23]),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \D_reg[56]_i_1 
       (.I0(Q[2]),
        .I1(multiplicand_d[24]),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \D_reg[57]_i_1 
       (.I0(Q[2]),
        .I1(multiplicand_d[25]),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \D_reg[58]_i_1 
       (.I0(Q[2]),
        .I1(multiplicand_d[26]),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \D_reg[59]_i_1 
       (.I0(Q[2]),
        .I1(multiplicand_d[27]),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \D_reg[60]_i_1 
       (.I0(Q[2]),
        .I1(multiplicand_d[28]),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \D_reg[61]_i_1 
       (.I0(Q[2]),
        .I1(multiplicand_d[29]),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \D_reg[62]_i_1 
       (.I0(Q[2]),
        .I1(multiplicand_d[30]),
        .O(D[31]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \D_reg[63]_i_1 
       (.I0(Q[2]),
        .I1(multiplicand_d[31]),
        .O(D[32]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \D_reg[63]_i_2 
       (.I0(Q[2]),
        .I1(load),
        .I2(Q[0]),
        .O(E));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state[0]_i_2_n_0 ),
        .I1(\FSM_onehot_state[0]_i_3_n_0 ),
        .I2(Q[2]),
        .I3(\count_reg_n_0_[5] ),
        .I4(\count_reg_n_0_[6] ),
        .I5(\FSM_onehot_state[0]_i_4_n_0 ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[0]_i_2 
       (.I0(\count_reg_n_0_[11] ),
        .I1(\count_reg_n_0_[10] ),
        .I2(\count_reg_n_0_[9] ),
        .I3(\count_reg_n_0_[8] ),
        .I4(\FSM_onehot_state[0]_i_5_n_0 ),
        .O(\FSM_onehot_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_onehot_state[0]_i_3 
       (.I0(\count_reg_n_0_[7] ),
        .I1(\count_reg_n_0_[26] ),
        .I2(\count_reg_n_0_[27] ),
        .I3(\count_reg_n_0_[28] ),
        .I4(\count_reg_n_0_[31] ),
        .I5(\count_reg_n_0_[29] ),
        .O(\FSM_onehot_state[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \FSM_onehot_state[0]_i_4 
       (.I0(\FSM_onehot_state[0]_i_6_n_0 ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[4] ),
        .I3(\count_reg_n_0_[2] ),
        .I4(\count_reg_n_0_[1] ),
        .O(\FSM_onehot_state[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[0]_i_5 
       (.I0(\count_reg_n_0_[12] ),
        .I1(\count_reg_n_0_[13] ),
        .I2(\count_reg_n_0_[14] ),
        .I3(\count_reg_n_0_[15] ),
        .O(\FSM_onehot_state[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \FSM_onehot_state[0]_i_6 
       (.I0(\count_reg_n_0_[25] ),
        .I1(\count_reg_n_0_[24] ),
        .I2(\FSM_onehot_state[0]_i_7_n_0 ),
        .I3(\FSM_onehot_state[0]_i_8_n_0 ),
        .I4(\count_reg_n_0_[3] ),
        .I5(\count_reg_n_0_[30] ),
        .O(\FSM_onehot_state[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[0]_i_7 
       (.I0(\count_reg_n_0_[16] ),
        .I1(\count_reg_n_0_[17] ),
        .I2(\count_reg_n_0_[18] ),
        .I3(\count_reg_n_0_[19] ),
        .O(\FSM_onehot_state[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[0]_i_8 
       (.I0(\count_reg_n_0_[20] ),
        .I1(\count_reg_n_0_[21] ),
        .I2(\count_reg_n_0_[22] ),
        .I3(\count_reg_n_0_[23] ),
        .O(\FSM_onehot_state[0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(load),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(\FSM_onehot_state[0]_i_4_n_0 ),
        .I1(\count_reg_n_0_[6] ),
        .I2(\count_reg_n_0_[7] ),
        .I3(\FSM_onehot_state[0]_i_2_n_0 ),
        .I4(\FSM_onehot_state[2]_i_3_n_0 ),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_state[2]_i_3 
       (.I0(\count_reg_n_0_[27] ),
        .I1(\count_reg_n_0_[28] ),
        .I2(\count_reg_n_0_[5] ),
        .I3(\count_reg_n_0_[26] ),
        .I4(\count_reg_n_0_[31] ),
        .I5(\count_reg_n_0_[29] ),
        .O(\FSM_onehot_state[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(multiplier_d),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(multiplier_d),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(Q[1]),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s1:00010,s3:01000,s4:10000,s2:00100,s0:00001" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .PRE(rst),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "s1:00010,s3:01000,s4:10000,s2:00100,s0:00001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(Q[0]),
        .Q(load));
  (* FSM_ENCODED_STATES = "s1:00010,s3:01000,s4:10000,s2:00100,s0:00001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "s1:00010,s3:01000,s4:10000,s2:00100,s0:00001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(Q[1]));
  (* FSM_ENCODED_STATES = "s1:00010,s3:01000,s4:10000,s2:00100,s0:00001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(Q[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(\count_reg_n_0_[0] ),
        .O(\count[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \count[31]_i_1 
       (.I0(Q[2]),
        .I1(rst),
        .I2(Q[0]),
        .O(\count[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0F08)) 
    \count[31]_i_2 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(rst),
        .I3(Q[0]),
        .O(count0));
  FDRE \count_reg[0] 
       (.C(clk),
        .CE(count0),
        .D(\count[0]_i_1_n_0 ),
        .Q(\count_reg_n_0_[0] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[10] 
       (.C(clk),
        .CE(count0),
        .D(in6[10]),
        .Q(\count_reg_n_0_[10] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[11] 
       (.C(clk),
        .CE(count0),
        .D(in6[11]),
        .Q(\count_reg_n_0_[11] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[12] 
       (.C(clk),
        .CE(count0),
        .D(in6[12]),
        .Q(\count_reg_n_0_[12] ),
        .R(\count[31]_i_1_n_0 ));
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\count_reg[12]_i_1_n_1 ,\count_reg[12]_i_1_n_2 ,\count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in6[12:9]),
        .S({\count_reg_n_0_[12] ,\count_reg_n_0_[11] ,\count_reg_n_0_[10] ,\count_reg_n_0_[9] }));
  FDRE \count_reg[13] 
       (.C(clk),
        .CE(count0),
        .D(in6[13]),
        .Q(\count_reg_n_0_[13] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[14] 
       (.C(clk),
        .CE(count0),
        .D(in6[14]),
        .Q(\count_reg_n_0_[14] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[15] 
       (.C(clk),
        .CE(count0),
        .D(in6[15]),
        .Q(\count_reg_n_0_[15] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[16] 
       (.C(clk),
        .CE(count0),
        .D(in6[16]),
        .Q(\count_reg_n_0_[16] ),
        .R(\count[31]_i_1_n_0 ));
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO({\count_reg[16]_i_1_n_0 ,\count_reg[16]_i_1_n_1 ,\count_reg[16]_i_1_n_2 ,\count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in6[16:13]),
        .S({\count_reg_n_0_[16] ,\count_reg_n_0_[15] ,\count_reg_n_0_[14] ,\count_reg_n_0_[13] }));
  FDRE \count_reg[17] 
       (.C(clk),
        .CE(count0),
        .D(in6[17]),
        .Q(\count_reg_n_0_[17] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[18] 
       (.C(clk),
        .CE(count0),
        .D(in6[18]),
        .Q(\count_reg_n_0_[18] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[19] 
       (.C(clk),
        .CE(count0),
        .D(in6[19]),
        .Q(\count_reg_n_0_[19] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[1] 
       (.C(clk),
        .CE(count0),
        .D(in6[1]),
        .Q(\count_reg_n_0_[1] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[20] 
       (.C(clk),
        .CE(count0),
        .D(in6[20]),
        .Q(\count_reg_n_0_[20] ),
        .R(\count[31]_i_1_n_0 ));
  CARRY4 \count_reg[20]_i_1 
       (.CI(\count_reg[16]_i_1_n_0 ),
        .CO({\count_reg[20]_i_1_n_0 ,\count_reg[20]_i_1_n_1 ,\count_reg[20]_i_1_n_2 ,\count_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in6[20:17]),
        .S({\count_reg_n_0_[20] ,\count_reg_n_0_[19] ,\count_reg_n_0_[18] ,\count_reg_n_0_[17] }));
  FDRE \count_reg[21] 
       (.C(clk),
        .CE(count0),
        .D(in6[21]),
        .Q(\count_reg_n_0_[21] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[22] 
       (.C(clk),
        .CE(count0),
        .D(in6[22]),
        .Q(\count_reg_n_0_[22] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[23] 
       (.C(clk),
        .CE(count0),
        .D(in6[23]),
        .Q(\count_reg_n_0_[23] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[24] 
       (.C(clk),
        .CE(count0),
        .D(in6[24]),
        .Q(\count_reg_n_0_[24] ),
        .R(\count[31]_i_1_n_0 ));
  CARRY4 \count_reg[24]_i_1 
       (.CI(\count_reg[20]_i_1_n_0 ),
        .CO({\count_reg[24]_i_1_n_0 ,\count_reg[24]_i_1_n_1 ,\count_reg[24]_i_1_n_2 ,\count_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in6[24:21]),
        .S({\count_reg_n_0_[24] ,\count_reg_n_0_[23] ,\count_reg_n_0_[22] ,\count_reg_n_0_[21] }));
  FDRE \count_reg[25] 
       (.C(clk),
        .CE(count0),
        .D(in6[25]),
        .Q(\count_reg_n_0_[25] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[26] 
       (.C(clk),
        .CE(count0),
        .D(in6[26]),
        .Q(\count_reg_n_0_[26] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[27] 
       (.C(clk),
        .CE(count0),
        .D(in6[27]),
        .Q(\count_reg_n_0_[27] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[28] 
       (.C(clk),
        .CE(count0),
        .D(in6[28]),
        .Q(\count_reg_n_0_[28] ),
        .R(\count[31]_i_1_n_0 ));
  CARRY4 \count_reg[28]_i_1 
       (.CI(\count_reg[24]_i_1_n_0 ),
        .CO({\count_reg[28]_i_1_n_0 ,\count_reg[28]_i_1_n_1 ,\count_reg[28]_i_1_n_2 ,\count_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in6[28:25]),
        .S({\count_reg_n_0_[28] ,\count_reg_n_0_[27] ,\count_reg_n_0_[26] ,\count_reg_n_0_[25] }));
  FDRE \count_reg[29] 
       (.C(clk),
        .CE(count0),
        .D(in6[29]),
        .Q(\count_reg_n_0_[29] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[2] 
       (.C(clk),
        .CE(count0),
        .D(in6[2]),
        .Q(\count_reg_n_0_[2] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[30] 
       (.C(clk),
        .CE(count0),
        .D(in6[30]),
        .Q(\count_reg_n_0_[30] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[31] 
       (.C(clk),
        .CE(count0),
        .D(in6[31]),
        .Q(\count_reg_n_0_[31] ),
        .R(\count[31]_i_1_n_0 ));
  CARRY4 \count_reg[31]_i_3 
       (.CI(\count_reg[28]_i_1_n_0 ),
        .CO({\NLW_count_reg[31]_i_3_CO_UNCONNECTED [3:2],\count_reg[31]_i_3_n_2 ,\count_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[31]_i_3_O_UNCONNECTED [3],in6[31:29]}),
        .S({1'b0,\count_reg_n_0_[31] ,\count_reg_n_0_[30] ,\count_reg_n_0_[29] }));
  FDRE \count_reg[3] 
       (.C(clk),
        .CE(count0),
        .D(in6[3]),
        .Q(\count_reg_n_0_[3] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[4] 
       (.C(clk),
        .CE(count0),
        .D(in6[4]),
        .Q(\count_reg_n_0_[4] ),
        .R(\count[31]_i_1_n_0 ));
  CARRY4 \count_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\count_reg[4]_i_1_n_0 ,\count_reg[4]_i_1_n_1 ,\count_reg[4]_i_1_n_2 ,\count_reg[4]_i_1_n_3 }),
        .CYINIT(\count_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in6[4:1]),
        .S({\count_reg_n_0_[4] ,\count_reg_n_0_[3] ,\count_reg_n_0_[2] ,\count_reg_n_0_[1] }));
  FDRE \count_reg[5] 
       (.C(clk),
        .CE(count0),
        .D(in6[5]),
        .Q(\count_reg_n_0_[5] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[6] 
       (.C(clk),
        .CE(count0),
        .D(in6[6]),
        .Q(\count_reg_n_0_[6] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[7] 
       (.C(clk),
        .CE(count0),
        .D(in6[7]),
        .Q(\count_reg_n_0_[7] ),
        .R(\count[31]_i_1_n_0 ));
  FDRE \count_reg[8] 
       (.C(clk),
        .CE(count0),
        .D(in6[8]),
        .Q(\count_reg_n_0_[8] ),
        .R(\count[31]_i_1_n_0 ));
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\count_reg[8]_i_1_n_1 ,\count_reg[8]_i_1_n_2 ,\count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in6[8:5]),
        .S({\count_reg_n_0_[8] ,\count_reg_n_0_[7] ,\count_reg_n_0_[6] ,\count_reg_n_0_[5] }));
  FDRE \count_reg[9] 
       (.C(clk),
        .CE(count0),
        .D(in6[9]),
        .Q(\count_reg_n_0_[9] ),
        .R(\count[31]_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "mult" *) 
module lab_3_top_level_0_0_mult
   (Q,
    product,
    rst,
    clk,
    B,
    A);
  output [0:0]Q;
  output [63:0]product;
  input rst;
  input clk;
  input [31:0]B;
  input [31:0]A;

  wire [31:0]A;
  wire [31:0]B;
  wire EN;
  wire [0:0]Q;
  wire c_n_10;
  wire c_n_11;
  wire c_n_12;
  wire c_n_13;
  wire c_n_14;
  wire c_n_15;
  wire c_n_16;
  wire c_n_17;
  wire c_n_18;
  wire c_n_19;
  wire c_n_20;
  wire c_n_21;
  wire c_n_22;
  wire c_n_23;
  wire c_n_24;
  wire c_n_25;
  wire c_n_26;
  wire c_n_27;
  wire c_n_28;
  wire c_n_29;
  wire c_n_30;
  wire c_n_31;
  wire c_n_32;
  wire c_n_33;
  wire c_n_34;
  wire c_n_35;
  wire c_n_36;
  wire c_n_37;
  wire c_n_4;
  wire c_n_5;
  wire c_n_6;
  wire c_n_7;
  wire c_n_8;
  wire c_n_9;
  wire clk;
  wire [62:31]multiplicand_d;
  wire [0:0]multiplier_d;
  wire [63:0]product;
  wire rst;
  wire shift;
  wire [63:0]sum;
  wire write;

  lab_3_top_level_0_0_control c
       (.A(A[31]),
        .\A[31] (c_n_37),
        .B(B[0]),
        .D({c_n_4,c_n_5,c_n_6,c_n_7,c_n_8,c_n_9,c_n_10,c_n_11,c_n_12,c_n_13,c_n_14,c_n_15,c_n_16,c_n_17,c_n_18,c_n_19,c_n_20,c_n_21,c_n_22,c_n_23,c_n_24,c_n_25,c_n_26,c_n_27,c_n_28,c_n_29,c_n_30,c_n_31,c_n_32,c_n_33,c_n_34,c_n_35,c_n_36}),
        .E(EN),
        .Q({shift,write,Q}),
        .clk(clk),
        .multiplicand_d(multiplicand_d),
        .multiplier_d(multiplier_d),
        .rst(rst));
  lab_3_top_level_0_0_shift_multiplicand multiplicand_reg
       (.B(B[31:1]),
        .D({c_n_4,c_n_5,c_n_6,c_n_7,c_n_8,c_n_9,c_n_10,c_n_11,c_n_12,c_n_13,c_n_14,c_n_15,c_n_16,c_n_17,c_n_18,c_n_19,c_n_20,c_n_21,c_n_22,c_n_23,c_n_24,c_n_25,c_n_26,c_n_27,c_n_28,c_n_29,c_n_30,c_n_31,c_n_32,c_n_33,c_n_34,c_n_35,c_n_36}),
        .E(EN),
        .Q(shift),
        .Q_reg(multiplicand_d),
        .Q_reg_0(product[1]),
        .Q_reg_1(product[0]),
        .clk(clk),
        .product(product[63:2]),
        .rst(rst),
        .sum(sum));
  lab_3_top_level_0_0_shift_multiplier multiplier_reg
       (.A(A[30:0]),
        .D(c_n_37),
        .E(EN),
        .Q(shift),
        .clk(clk),
        .multiplier_d(multiplier_d),
        .rst(rst));
  lab_3_top_level_0_0_reg_64 \reg 
       (.Q(write),
        .clk(clk),
        .product(product),
        .rst(rst),
        .sum(sum));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_0
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_1
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_10
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_100
   (multiplicand_d,
    D,
    sum,
    E,
    Q,
    clk,
    rst,
    Q_reg_0,
    B,
    product,
    temp_c_out_13);
  output [0:0]multiplicand_d;
  output [0:0]D;
  output [0:0]sum;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_0;
  input [0:0]B;
  input [0:0]product;
  input temp_c_out_13;

  wire [0:0]B;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire clk;
  wire [0:0]multiplicand_d;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_13;

  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[14]_i_1 
       (.I0(multiplicand_d),
        .I1(Q_reg_0),
        .I2(B),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Q_i_1__11
       (.I0(multiplicand_d),
        .I1(product),
        .I2(temp_c_out_13),
        .O(sum));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(multiplicand_d));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_101
   (D,
    sum,
    temp_c_out_15,
    Q_reg_0,
    E,
    Q,
    clk,
    rst,
    Q_reg_1,
    B,
    product,
    temp_c_out_13);
  output [0:0]D;
  output [0:0]sum;
  output temp_c_out_15;
  input [0:0]Q_reg_0;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_1;
  input [0:0]B;
  input [1:0]product;
  input temp_c_out_13;

  wire [0:0]B;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire [0:0]Q_reg_1;
  wire clk;
  wire [14:14]multiplicand_d;
  wire [1:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_13;
  wire temp_c_out_15;

  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[15]_i_1 
       (.I0(multiplicand_d),
        .I1(Q_reg_1),
        .I2(B),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    Q_i_1__12
       (.I0(multiplicand_d),
        .I1(product[1]),
        .I2(Q_reg_0),
        .I3(product[0]),
        .I4(temp_c_out_13),
        .O(sum));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    Q_i_2__23
       (.I0(multiplicand_d),
        .I1(product[1]),
        .I2(Q_reg_0),
        .I3(product[0]),
        .I4(temp_c_out_13),
        .O(temp_c_out_15));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(multiplicand_d));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_102
   (multiplicand_d,
    D,
    sum,
    E,
    Q,
    clk,
    rst,
    Q_reg_0,
    B,
    product,
    temp_c_out_15);
  output [0:0]multiplicand_d;
  output [0:0]D;
  output [0:0]sum;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_0;
  input [0:0]B;
  input [0:0]product;
  input temp_c_out_15;

  wire [0:0]B;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire clk;
  wire [0:0]multiplicand_d;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_15;

  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[16]_i_1 
       (.I0(multiplicand_d),
        .I1(Q_reg_0),
        .I2(B),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Q_i_1__13
       (.I0(multiplicand_d),
        .I1(product),
        .I2(temp_c_out_15),
        .O(sum));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(multiplicand_d));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_103
   (D,
    sum,
    temp_c_out_17,
    Q_reg_0,
    E,
    Q,
    clk,
    rst,
    Q_reg_1,
    B,
    product,
    temp_c_out_15);
  output [0:0]D;
  output [0:0]sum;
  output temp_c_out_17;
  input [0:0]Q_reg_0;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_1;
  input [0:0]B;
  input [1:0]product;
  input temp_c_out_15;

  wire [0:0]B;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire [0:0]Q_reg_1;
  wire clk;
  wire [16:16]multiplicand_d;
  wire [1:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_15;
  wire temp_c_out_17;

  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[17]_i_1 
       (.I0(multiplicand_d),
        .I1(Q_reg_1),
        .I2(B),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    Q_i_1__14
       (.I0(multiplicand_d),
        .I1(product[1]),
        .I2(Q_reg_0),
        .I3(product[0]),
        .I4(temp_c_out_15),
        .O(sum));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    Q_i_2__22
       (.I0(multiplicand_d),
        .I1(product[1]),
        .I2(Q_reg_0),
        .I3(product[0]),
        .I4(temp_c_out_15),
        .O(temp_c_out_17));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(multiplicand_d));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_104
   (multiplicand_d,
    D,
    sum,
    E,
    Q,
    clk,
    rst,
    Q_reg_0,
    B,
    product,
    temp_c_out_17);
  output [0:0]multiplicand_d;
  output [0:0]D;
  output [0:0]sum;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_0;
  input [0:0]B;
  input [0:0]product;
  input temp_c_out_17;

  wire [0:0]B;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire clk;
  wire [0:0]multiplicand_d;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_17;

  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[18]_i_1 
       (.I0(multiplicand_d),
        .I1(Q_reg_0),
        .I2(B),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Q_i_1__15
       (.I0(multiplicand_d),
        .I1(product),
        .I2(temp_c_out_17),
        .O(sum));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(multiplicand_d));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_105
   (D,
    sum,
    temp_c_out_19,
    Q_reg_0,
    E,
    Q,
    clk,
    rst,
    Q_reg_1,
    B,
    product,
    temp_c_out_17);
  output [0:0]D;
  output [0:0]sum;
  output temp_c_out_19;
  input [0:0]Q_reg_0;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_1;
  input [0:0]B;
  input [1:0]product;
  input temp_c_out_17;

  wire [0:0]B;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire [0:0]Q_reg_1;
  wire clk;
  wire [18:18]multiplicand_d;
  wire [1:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_17;
  wire temp_c_out_19;

  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[19]_i_1 
       (.I0(multiplicand_d),
        .I1(Q_reg_1),
        .I2(B),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    Q_i_1__16
       (.I0(multiplicand_d),
        .I1(product[1]),
        .I2(Q_reg_0),
        .I3(product[0]),
        .I4(temp_c_out_17),
        .O(sum));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    Q_i_2__21
       (.I0(multiplicand_d),
        .I1(product[1]),
        .I2(Q_reg_0),
        .I3(product[0]),
        .I4(temp_c_out_17),
        .O(temp_c_out_19));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(multiplicand_d));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_106
   (multiplicand_d,
    D,
    sum,
    E,
    Q,
    clk,
    rst,
    Q_reg_0,
    B,
    product,
    temp_c_out_19);
  output [0:0]multiplicand_d;
  output [0:0]D;
  output [0:0]sum;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_0;
  input [0:0]B;
  input [0:0]product;
  input temp_c_out_19;

  wire [0:0]B;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire clk;
  wire [0:0]multiplicand_d;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_19;

  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[20]_i_1 
       (.I0(multiplicand_d),
        .I1(Q_reg_0),
        .I2(B),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Q_i_1__17
       (.I0(multiplicand_d),
        .I1(product),
        .I2(temp_c_out_19),
        .O(sum));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(multiplicand_d));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_107
   (multiplicand_d,
    D,
    sum,
    E,
    Q,
    clk,
    rst,
    Q_reg_0,
    B,
    Q_reg_1,
    Q_reg_2,
    Q_reg_3);
  output [0:0]multiplicand_d;
  output [0:0]D;
  output [0:0]sum;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_0;
  input [0:0]B;
  input Q_reg_1;
  input Q_reg_2;
  input [0:0]Q_reg_3;

  wire [0:0]B;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire Q_reg_1;
  wire Q_reg_2;
  wire [0:0]Q_reg_3;
  wire clk;
  wire [0:0]multiplicand_d;
  wire rst;
  wire [0:0]sum;

  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[2]_i_1 
       (.I0(multiplicand_d),
        .I1(Q_reg_0),
        .I2(B),
        .O(D));
  LUT4 #(
    .INIT(16'h9666)) 
    Q_i_1
       (.I0(multiplicand_d),
        .I1(Q_reg_1),
        .I2(Q_reg_2),
        .I3(Q_reg_3),
        .O(sum));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(multiplicand_d));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_108
   (D,
    sum,
    temp_c_out_21,
    Q_reg_0,
    E,
    Q,
    clk,
    rst,
    Q_reg_1,
    B,
    product,
    temp_c_out_19);
  output [0:0]D;
  output [0:0]sum;
  output temp_c_out_21;
  input [0:0]Q_reg_0;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_1;
  input [0:0]B;
  input [1:0]product;
  input temp_c_out_19;

  wire [0:0]B;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire [0:0]Q_reg_1;
  wire clk;
  wire [20:20]multiplicand_d;
  wire [1:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_19;
  wire temp_c_out_21;

  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[21]_i_1 
       (.I0(multiplicand_d),
        .I1(Q_reg_1),
        .I2(B),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    Q_i_1__18
       (.I0(multiplicand_d),
        .I1(product[1]),
        .I2(Q_reg_0),
        .I3(product[0]),
        .I4(temp_c_out_19),
        .O(sum));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    Q_i_2__20
       (.I0(multiplicand_d),
        .I1(product[1]),
        .I2(Q_reg_0),
        .I3(product[0]),
        .I4(temp_c_out_19),
        .O(temp_c_out_21));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(multiplicand_d));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_109
   (multiplicand_d,
    D,
    sum,
    E,
    Q,
    clk,
    rst,
    Q_reg_0,
    B,
    product,
    temp_c_out_21);
  output [0:0]multiplicand_d;
  output [0:0]D;
  output [0:0]sum;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_0;
  input [0:0]B;
  input [0:0]product;
  input temp_c_out_21;

  wire [0:0]B;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire clk;
  wire [0:0]multiplicand_d;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_21;

  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[22]_i_1 
       (.I0(multiplicand_d),
        .I1(Q_reg_0),
        .I2(B),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Q_i_1__19
       (.I0(multiplicand_d),
        .I1(product),
        .I2(temp_c_out_21),
        .O(sum));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(multiplicand_d));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_11
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_110
   (D,
    sum,
    temp_c_out_23,
    Q_reg_0,
    E,
    Q,
    clk,
    rst,
    Q_reg_1,
    B,
    product,
    temp_c_out_21);
  output [0:0]D;
  output [0:0]sum;
  output temp_c_out_23;
  input [0:0]Q_reg_0;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_1;
  input [0:0]B;
  input [1:0]product;
  input temp_c_out_21;

  wire [0:0]B;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire [0:0]Q_reg_1;
  wire clk;
  wire [22:22]multiplicand_d;
  wire [1:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_21;
  wire temp_c_out_23;

  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[23]_i_1 
       (.I0(multiplicand_d),
        .I1(Q_reg_1),
        .I2(B),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    Q_i_1__20
       (.I0(multiplicand_d),
        .I1(product[1]),
        .I2(Q_reg_0),
        .I3(product[0]),
        .I4(temp_c_out_21),
        .O(sum));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    Q_i_2__19
       (.I0(multiplicand_d),
        .I1(product[1]),
        .I2(Q_reg_0),
        .I3(product[0]),
        .I4(temp_c_out_21),
        .O(temp_c_out_23));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(multiplicand_d));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_111
   (multiplicand_d,
    D,
    sum,
    E,
    Q,
    clk,
    rst,
    Q_reg_0,
    B,
    product,
    temp_c_out_23);
  output [0:0]multiplicand_d;
  output [0:0]D;
  output [0:0]sum;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_0;
  input [0:0]B;
  input [0:0]product;
  input temp_c_out_23;

  wire [0:0]B;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire clk;
  wire [0:0]multiplicand_d;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_23;

  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[24]_i_1 
       (.I0(multiplicand_d),
        .I1(Q_reg_0),
        .I2(B),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Q_i_1__21
       (.I0(multiplicand_d),
        .I1(product),
        .I2(temp_c_out_23),
        .O(sum));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(multiplicand_d));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_112
   (D,
    sum,
    temp_c_out_25,
    Q_reg_0,
    E,
    Q,
    clk,
    rst,
    Q_reg_1,
    B,
    product,
    temp_c_out_23);
  output [0:0]D;
  output [0:0]sum;
  output temp_c_out_25;
  input [0:0]Q_reg_0;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_1;
  input [0:0]B;
  input [1:0]product;
  input temp_c_out_23;

  wire [0:0]B;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire [0:0]Q_reg_1;
  wire clk;
  wire [24:24]multiplicand_d;
  wire [1:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_23;
  wire temp_c_out_25;

  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[25]_i_1 
       (.I0(multiplicand_d),
        .I1(Q_reg_1),
        .I2(B),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    Q_i_1__22
       (.I0(multiplicand_d),
        .I1(product[1]),
        .I2(Q_reg_0),
        .I3(product[0]),
        .I4(temp_c_out_23),
        .O(sum));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    Q_i_2__18
       (.I0(multiplicand_d),
        .I1(product[1]),
        .I2(Q_reg_0),
        .I3(product[0]),
        .I4(temp_c_out_23),
        .O(temp_c_out_25));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(multiplicand_d));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_113
   (multiplicand_d,
    D,
    sum,
    E,
    Q,
    clk,
    rst,
    Q_reg_0,
    B,
    product,
    temp_c_out_25);
  output [0:0]multiplicand_d;
  output [0:0]D;
  output [0:0]sum;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_0;
  input [0:0]B;
  input [0:0]product;
  input temp_c_out_25;

  wire [0:0]B;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire clk;
  wire [0:0]multiplicand_d;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_25;

  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[26]_i_1 
       (.I0(multiplicand_d),
        .I1(Q_reg_0),
        .I2(B),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Q_i_1__23
       (.I0(multiplicand_d),
        .I1(product),
        .I2(temp_c_out_25),
        .O(sum));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(multiplicand_d));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_114
   (D,
    sum,
    temp_c_out_27,
    Q_reg_0,
    E,
    Q,
    clk,
    rst,
    Q_reg_1,
    B,
    product,
    temp_c_out_25);
  output [0:0]D;
  output [0:0]sum;
  output temp_c_out_27;
  input [0:0]Q_reg_0;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_1;
  input [0:0]B;
  input [1:0]product;
  input temp_c_out_25;

  wire [0:0]B;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire [0:0]Q_reg_1;
  wire clk;
  wire [26:26]multiplicand_d;
  wire [1:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_25;
  wire temp_c_out_27;

  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[27]_i_1 
       (.I0(multiplicand_d),
        .I1(Q_reg_1),
        .I2(B),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    Q_i_1__24
       (.I0(multiplicand_d),
        .I1(product[1]),
        .I2(Q_reg_0),
        .I3(product[0]),
        .I4(temp_c_out_25),
        .O(sum));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    Q_i_2__17
       (.I0(multiplicand_d),
        .I1(product[1]),
        .I2(Q_reg_0),
        .I3(product[0]),
        .I4(temp_c_out_25),
        .O(temp_c_out_27));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(multiplicand_d));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_115
   (multiplicand_d,
    D,
    sum,
    E,
    Q,
    clk,
    rst,
    Q_reg_0,
    B,
    product,
    temp_c_out_27);
  output [0:0]multiplicand_d;
  output [0:0]D;
  output [0:0]sum;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_0;
  input [0:0]B;
  input [0:0]product;
  input temp_c_out_27;

  wire [0:0]B;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire clk;
  wire [0:0]multiplicand_d;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_27;

  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[28]_i_1 
       (.I0(multiplicand_d),
        .I1(Q_reg_0),
        .I2(B),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Q_i_1__25
       (.I0(multiplicand_d),
        .I1(product),
        .I2(temp_c_out_27),
        .O(sum));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(multiplicand_d));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_116
   (D,
    sum,
    temp_c_out_29,
    Q_reg_0,
    E,
    Q,
    clk,
    rst,
    Q_reg_1,
    B,
    product,
    temp_c_out_27);
  output [0:0]D;
  output [0:0]sum;
  output temp_c_out_29;
  input [0:0]Q_reg_0;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_1;
  input [0:0]B;
  input [1:0]product;
  input temp_c_out_27;

  wire [0:0]B;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire [0:0]Q_reg_1;
  wire clk;
  wire [28:28]multiplicand_d;
  wire [1:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_27;
  wire temp_c_out_29;

  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[29]_i_1 
       (.I0(multiplicand_d),
        .I1(Q_reg_1),
        .I2(B),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    Q_i_1__26
       (.I0(multiplicand_d),
        .I1(product[1]),
        .I2(Q_reg_0),
        .I3(product[0]),
        .I4(temp_c_out_27),
        .O(sum));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    Q_i_2__16
       (.I0(multiplicand_d),
        .I1(product[1]),
        .I2(Q_reg_0),
        .I3(product[0]),
        .I4(temp_c_out_27),
        .O(temp_c_out_29));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(multiplicand_d));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_117
   (multiplicand_d,
    D,
    sum,
    E,
    Q,
    clk,
    rst,
    Q_reg_0,
    B,
    product,
    temp_c_out_29);
  output [0:0]multiplicand_d;
  output [0:0]D;
  output [0:0]sum;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_0;
  input [0:0]B;
  input [0:0]product;
  input temp_c_out_29;

  wire [0:0]B;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire clk;
  wire [0:0]multiplicand_d;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_29;

  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[30]_i_1 
       (.I0(multiplicand_d),
        .I1(Q_reg_0),
        .I2(B),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Q_i_1__27
       (.I0(multiplicand_d),
        .I1(product),
        .I2(temp_c_out_29),
        .O(sum));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(multiplicand_d));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_118
   (D,
    sum,
    temp_c_out_3,
    Q_reg_0,
    E,
    Q,
    clk,
    rst,
    Q_reg_1,
    B,
    product,
    Q_reg_2,
    Q_reg_3);
  output [0:0]D;
  output [0:0]sum;
  output temp_c_out_3;
  input [1:0]Q_reg_0;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_1;
  input [0:0]B;
  input [0:0]product;
  input Q_reg_2;
  input Q_reg_3;

  wire [0:0]B;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [1:0]Q_reg_0;
  wire [0:0]Q_reg_1;
  wire Q_reg_2;
  wire Q_reg_3;
  wire clk;
  wire [2:2]multiplicand_d;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_3;

  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[3]_i_1 
       (.I0(multiplicand_d),
        .I1(Q_reg_1),
        .I2(B),
        .O(D));
  LUT6 #(
    .INIT(64'h9996966696669666)) 
    Q_i_1__0
       (.I0(multiplicand_d),
        .I1(product),
        .I2(Q_reg_0[1]),
        .I3(Q_reg_2),
        .I4(Q_reg_3),
        .I5(Q_reg_0[0]),
        .O(sum));
  LUT6 #(
    .INIT(64'hEEE8E888E888E888)) 
    Q_i_2__29
       (.I0(multiplicand_d),
        .I1(product),
        .I2(Q_reg_0[1]),
        .I3(Q_reg_2),
        .I4(Q_reg_3),
        .I5(Q_reg_0[0]),
        .O(temp_c_out_3));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(multiplicand_d));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_119
   (D,
    sum,
    temp_c_out_31,
    Q_reg_0,
    E,
    Q,
    clk,
    rst,
    Q_reg_1,
    B,
    product,
    temp_c_out_29);
  output [0:0]D;
  output [0:0]sum;
  output temp_c_out_31;
  input [0:0]Q_reg_0;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_1;
  input [0:0]B;
  input [1:0]product;
  input temp_c_out_29;

  wire [0:0]B;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire [0:0]Q_reg_1;
  wire clk;
  wire [30:30]multiplicand_d;
  wire [1:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_29;
  wire temp_c_out_31;

  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[31]_i_1 
       (.I0(multiplicand_d),
        .I1(Q_reg_1),
        .I2(B),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    Q_i_1__28
       (.I0(multiplicand_d),
        .I1(product[1]),
        .I2(Q_reg_0),
        .I3(product[0]),
        .I4(temp_c_out_29),
        .O(sum));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    Q_i_2__15
       (.I0(multiplicand_d),
        .I1(product[1]),
        .I2(Q_reg_0),
        .I3(product[0]),
        .I4(temp_c_out_29),
        .O(temp_c_out_31));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(multiplicand_d));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_12
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_120
   (Q_reg_0,
    sum,
    E,
    Q,
    clk,
    rst,
    product,
    temp_c_out_31);
  output Q_reg_0;
  output [0:0]sum;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]product;
  input temp_c_out_31;

  wire [0:0]E;
  wire [0:0]Q;
  wire Q_reg_0;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_31;

  LUT3 #(
    .INIT(8'h96)) 
    Q_i_1__29
       (.I0(Q_reg_0),
        .I1(product),
        .I2(temp_c_out_31),
        .O(sum));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_121
   (Q_reg_0,
    sum,
    temp_c_out_33,
    E,
    Q,
    clk,
    rst,
    product,
    Q_reg_1,
    temp_c_out_31);
  output [0:0]Q_reg_0;
  output [0:0]sum;
  output temp_c_out_33;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [1:0]product;
  input Q_reg_1;
  input temp_c_out_31;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire Q_reg_1;
  wire clk;
  wire [1:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_31;
  wire temp_c_out_33;

  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    Q_i_1__30
       (.I0(Q_reg_0),
        .I1(product[1]),
        .I2(Q_reg_1),
        .I3(product[0]),
        .I4(temp_c_out_31),
        .O(sum));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    Q_i_2__14
       (.I0(Q_reg_0),
        .I1(product[1]),
        .I2(Q_reg_1),
        .I3(product[0]),
        .I4(temp_c_out_31),
        .O(temp_c_out_33));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_122
   (Q_reg_0,
    sum,
    E,
    Q,
    clk,
    rst,
    product,
    temp_c_out_33);
  output Q_reg_0;
  output [0:0]sum;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]product;
  input temp_c_out_33;

  wire [0:0]E;
  wire [0:0]Q;
  wire Q_reg_0;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_33;

  LUT3 #(
    .INIT(8'h96)) 
    Q_i_1__31
       (.I0(Q_reg_0),
        .I1(product),
        .I2(temp_c_out_33),
        .O(sum));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_123
   (Q_reg_0,
    sum,
    temp_c_out_35,
    E,
    Q,
    clk,
    rst,
    product,
    Q_reg_1,
    temp_c_out_33);
  output [0:0]Q_reg_0;
  output [0:0]sum;
  output temp_c_out_35;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [1:0]product;
  input [0:0]Q_reg_1;
  input temp_c_out_33;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire [0:0]Q_reg_1;
  wire clk;
  wire [1:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_33;
  wire temp_c_out_35;

  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    Q_i_1__32
       (.I0(Q_reg_0),
        .I1(product[1]),
        .I2(Q_reg_1),
        .I3(product[0]),
        .I4(temp_c_out_33),
        .O(sum));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    Q_i_2__13
       (.I0(Q_reg_0),
        .I1(product[1]),
        .I2(Q_reg_1),
        .I3(product[0]),
        .I4(temp_c_out_33),
        .O(temp_c_out_35));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_124
   (Q_reg_0,
    sum,
    E,
    Q,
    clk,
    rst,
    product,
    temp_c_out_35);
  output Q_reg_0;
  output [0:0]sum;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]product;
  input temp_c_out_35;

  wire [0:0]E;
  wire [0:0]Q;
  wire Q_reg_0;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_35;

  LUT3 #(
    .INIT(8'h96)) 
    Q_i_1__33
       (.I0(Q_reg_0),
        .I1(product),
        .I2(temp_c_out_35),
        .O(sum));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_125
   (Q_reg_0,
    sum,
    temp_c_out_37,
    E,
    Q,
    clk,
    rst,
    product,
    Q_reg_1,
    temp_c_out_35);
  output [0:0]Q_reg_0;
  output [0:0]sum;
  output temp_c_out_37;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [1:0]product;
  input [0:0]Q_reg_1;
  input temp_c_out_35;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire [0:0]Q_reg_1;
  wire clk;
  wire [1:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_35;
  wire temp_c_out_37;

  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    Q_i_1__34
       (.I0(Q_reg_0),
        .I1(product[1]),
        .I2(Q_reg_1),
        .I3(product[0]),
        .I4(temp_c_out_35),
        .O(sum));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    Q_i_2__12
       (.I0(Q_reg_0),
        .I1(product[1]),
        .I2(Q_reg_1),
        .I3(product[0]),
        .I4(temp_c_out_35),
        .O(temp_c_out_37));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_126
   (Q_reg_0,
    sum,
    E,
    Q,
    clk,
    rst,
    product,
    temp_c_out_37);
  output Q_reg_0;
  output [0:0]sum;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]product;
  input temp_c_out_37;

  wire [0:0]E;
  wire [0:0]Q;
  wire Q_reg_0;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_37;

  LUT3 #(
    .INIT(8'h96)) 
    Q_i_1__35
       (.I0(Q_reg_0),
        .I1(product),
        .I2(temp_c_out_37),
        .O(sum));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_127
   (Q_reg_0,
    sum,
    temp_c_out_39,
    E,
    Q,
    clk,
    rst,
    product,
    Q_reg_1,
    temp_c_out_37);
  output [0:0]Q_reg_0;
  output [0:0]sum;
  output temp_c_out_39;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [1:0]product;
  input [0:0]Q_reg_1;
  input temp_c_out_37;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire [0:0]Q_reg_1;
  wire clk;
  wire [1:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_37;
  wire temp_c_out_39;

  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    Q_i_1__36
       (.I0(Q_reg_0),
        .I1(product[1]),
        .I2(Q_reg_1),
        .I3(product[0]),
        .I4(temp_c_out_37),
        .O(sum));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    Q_i_2__11
       (.I0(Q_reg_0),
        .I1(product[1]),
        .I2(Q_reg_1),
        .I3(product[0]),
        .I4(temp_c_out_37),
        .O(temp_c_out_39));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_128
   (Q_reg_0,
    sum,
    E,
    Q,
    clk,
    rst,
    product,
    temp_c_out_39);
  output Q_reg_0;
  output [0:0]sum;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]product;
  input temp_c_out_39;

  wire [0:0]E;
  wire [0:0]Q;
  wire Q_reg_0;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_39;

  LUT3 #(
    .INIT(8'h96)) 
    Q_i_1__37
       (.I0(Q_reg_0),
        .I1(product),
        .I2(temp_c_out_39),
        .O(sum));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_129
   (multiplicand_d,
    D,
    sum,
    E,
    Q,
    clk,
    rst,
    Q_reg_0,
    B,
    product,
    temp_c_out_3);
  output [0:0]multiplicand_d;
  output [0:0]D;
  output [0:0]sum;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_0;
  input [0:0]B;
  input [0:0]product;
  input temp_c_out_3;

  wire [0:0]B;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire clk;
  wire [0:0]multiplicand_d;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_3;

  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[4]_i_1 
       (.I0(multiplicand_d),
        .I1(Q_reg_0),
        .I2(B),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Q_i_1__1
       (.I0(multiplicand_d),
        .I1(product),
        .I2(temp_c_out_3),
        .O(sum));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(multiplicand_d));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_13
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_130
   (Q_reg_0,
    sum,
    temp_c_out_41,
    E,
    Q,
    clk,
    rst,
    product,
    Q_reg_1,
    temp_c_out_39);
  output [0:0]Q_reg_0;
  output [0:0]sum;
  output temp_c_out_41;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [1:0]product;
  input [0:0]Q_reg_1;
  input temp_c_out_39;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire [0:0]Q_reg_1;
  wire clk;
  wire [1:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_39;
  wire temp_c_out_41;

  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    Q_i_1__38
       (.I0(Q_reg_0),
        .I1(product[1]),
        .I2(Q_reg_1),
        .I3(product[0]),
        .I4(temp_c_out_39),
        .O(sum));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    Q_i_2__10
       (.I0(Q_reg_0),
        .I1(product[1]),
        .I2(Q_reg_1),
        .I3(product[0]),
        .I4(temp_c_out_39),
        .O(temp_c_out_41));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_131
   (Q_reg_0,
    sum,
    E,
    Q,
    clk,
    rst,
    product,
    temp_c_out_41);
  output Q_reg_0;
  output [0:0]sum;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]product;
  input temp_c_out_41;

  wire [0:0]E;
  wire [0:0]Q;
  wire Q_reg_0;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_41;

  LUT3 #(
    .INIT(8'h96)) 
    Q_i_1__39
       (.I0(Q_reg_0),
        .I1(product),
        .I2(temp_c_out_41),
        .O(sum));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_132
   (Q_reg_0,
    sum,
    temp_c_out_43,
    E,
    Q,
    clk,
    rst,
    product,
    Q_reg_1,
    temp_c_out_41);
  output [0:0]Q_reg_0;
  output [0:0]sum;
  output temp_c_out_43;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [1:0]product;
  input [0:0]Q_reg_1;
  input temp_c_out_41;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire [0:0]Q_reg_1;
  wire clk;
  wire [1:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_41;
  wire temp_c_out_43;

  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    Q_i_1__40
       (.I0(Q_reg_0),
        .I1(product[1]),
        .I2(Q_reg_1),
        .I3(product[0]),
        .I4(temp_c_out_41),
        .O(sum));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    Q_i_2__9
       (.I0(Q_reg_0),
        .I1(product[1]),
        .I2(Q_reg_1),
        .I3(product[0]),
        .I4(temp_c_out_41),
        .O(temp_c_out_43));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_133
   (Q_reg_0,
    sum,
    E,
    Q,
    clk,
    rst,
    product,
    temp_c_out_43);
  output Q_reg_0;
  output [0:0]sum;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]product;
  input temp_c_out_43;

  wire [0:0]E;
  wire [0:0]Q;
  wire Q_reg_0;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_43;

  LUT3 #(
    .INIT(8'h96)) 
    Q_i_1__41
       (.I0(Q_reg_0),
        .I1(product),
        .I2(temp_c_out_43),
        .O(sum));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_134
   (Q_reg_0,
    sum,
    temp_c_out_45,
    E,
    Q,
    clk,
    rst,
    product,
    Q_reg_1,
    temp_c_out_43);
  output [0:0]Q_reg_0;
  output [0:0]sum;
  output temp_c_out_45;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [1:0]product;
  input [0:0]Q_reg_1;
  input temp_c_out_43;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire [0:0]Q_reg_1;
  wire clk;
  wire [1:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_43;
  wire temp_c_out_45;

  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    Q_i_1__42
       (.I0(Q_reg_0),
        .I1(product[1]),
        .I2(Q_reg_1),
        .I3(product[0]),
        .I4(temp_c_out_43),
        .O(sum));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    Q_i_2__8
       (.I0(Q_reg_0),
        .I1(product[1]),
        .I2(Q_reg_1),
        .I3(product[0]),
        .I4(temp_c_out_43),
        .O(temp_c_out_45));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_135
   (Q_reg_0,
    sum,
    E,
    Q,
    clk,
    rst,
    product,
    temp_c_out_45);
  output Q_reg_0;
  output [0:0]sum;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]product;
  input temp_c_out_45;

  wire [0:0]E;
  wire [0:0]Q;
  wire Q_reg_0;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_45;

  LUT3 #(
    .INIT(8'h96)) 
    Q_i_1__43
       (.I0(Q_reg_0),
        .I1(product),
        .I2(temp_c_out_45),
        .O(sum));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_136
   (Q_reg_0,
    sum,
    temp_c_out_47,
    E,
    Q,
    clk,
    rst,
    product,
    Q_reg_1,
    temp_c_out_45);
  output [0:0]Q_reg_0;
  output [0:0]sum;
  output temp_c_out_47;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [1:0]product;
  input [0:0]Q_reg_1;
  input temp_c_out_45;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire [0:0]Q_reg_1;
  wire clk;
  wire [1:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_45;
  wire temp_c_out_47;

  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    Q_i_1__44
       (.I0(Q_reg_0),
        .I1(product[1]),
        .I2(Q_reg_1),
        .I3(product[0]),
        .I4(temp_c_out_45),
        .O(sum));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    Q_i_2__7
       (.I0(Q_reg_0),
        .I1(product[1]),
        .I2(Q_reg_1),
        .I3(product[0]),
        .I4(temp_c_out_45),
        .O(temp_c_out_47));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_137
   (Q_reg_0,
    sum,
    E,
    Q,
    clk,
    rst,
    product,
    temp_c_out_47);
  output Q_reg_0;
  output [0:0]sum;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]product;
  input temp_c_out_47;

  wire [0:0]E;
  wire [0:0]Q;
  wire Q_reg_0;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_47;

  LUT3 #(
    .INIT(8'h96)) 
    Q_i_1__45
       (.I0(Q_reg_0),
        .I1(product),
        .I2(temp_c_out_47),
        .O(sum));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_138
   (Q_reg_0,
    sum,
    temp_c_out_49,
    E,
    Q,
    clk,
    rst,
    product,
    Q_reg_1,
    temp_c_out_47);
  output [0:0]Q_reg_0;
  output [0:0]sum;
  output temp_c_out_49;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [1:0]product;
  input [0:0]Q_reg_1;
  input temp_c_out_47;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire [0:0]Q_reg_1;
  wire clk;
  wire [1:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_47;
  wire temp_c_out_49;

  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    Q_i_1__46
       (.I0(Q_reg_0),
        .I1(product[1]),
        .I2(Q_reg_1),
        .I3(product[0]),
        .I4(temp_c_out_47),
        .O(sum));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    Q_i_2__6
       (.I0(Q_reg_0),
        .I1(product[1]),
        .I2(Q_reg_1),
        .I3(product[0]),
        .I4(temp_c_out_47),
        .O(temp_c_out_49));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_139
   (Q_reg_0,
    sum,
    E,
    Q,
    clk,
    rst,
    product,
    temp_c_out_49);
  output Q_reg_0;
  output [0:0]sum;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]product;
  input temp_c_out_49;

  wire [0:0]E;
  wire [0:0]Q;
  wire Q_reg_0;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_49;

  LUT3 #(
    .INIT(8'h96)) 
    Q_i_1__47
       (.I0(Q_reg_0),
        .I1(product),
        .I2(temp_c_out_49),
        .O(sum));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_14
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_140
   (D,
    sum,
    temp_c_out_5,
    Q_reg_0,
    E,
    Q,
    clk,
    rst,
    Q_reg_1,
    B,
    product,
    temp_c_out_3);
  output [0:0]D;
  output [0:0]sum;
  output temp_c_out_5;
  input [0:0]Q_reg_0;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_1;
  input [0:0]B;
  input [1:0]product;
  input temp_c_out_3;

  wire [0:0]B;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire [0:0]Q_reg_1;
  wire clk;
  wire [4:4]multiplicand_d;
  wire [1:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_3;
  wire temp_c_out_5;

  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[5]_i_1 
       (.I0(multiplicand_d),
        .I1(Q_reg_1),
        .I2(B),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    Q_i_1__2
       (.I0(multiplicand_d),
        .I1(product[1]),
        .I2(Q_reg_0),
        .I3(product[0]),
        .I4(temp_c_out_3),
        .O(sum));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    Q_i_2__28
       (.I0(multiplicand_d),
        .I1(product[1]),
        .I2(Q_reg_0),
        .I3(product[0]),
        .I4(temp_c_out_3),
        .O(temp_c_out_5));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(multiplicand_d));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_141
   (Q_reg_0,
    sum,
    temp_c_out_51,
    E,
    Q,
    clk,
    rst,
    product,
    Q_reg_1,
    temp_c_out_49);
  output [0:0]Q_reg_0;
  output [0:0]sum;
  output temp_c_out_51;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [1:0]product;
  input [0:0]Q_reg_1;
  input temp_c_out_49;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire [0:0]Q_reg_1;
  wire clk;
  wire [1:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_49;
  wire temp_c_out_51;

  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    Q_i_1__48
       (.I0(Q_reg_0),
        .I1(product[1]),
        .I2(Q_reg_1),
        .I3(product[0]),
        .I4(temp_c_out_49),
        .O(sum));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    Q_i_2__5
       (.I0(Q_reg_0),
        .I1(product[1]),
        .I2(Q_reg_1),
        .I3(product[0]),
        .I4(temp_c_out_49),
        .O(temp_c_out_51));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_142
   (Q_reg_0,
    sum,
    E,
    Q,
    clk,
    rst,
    product,
    temp_c_out_51);
  output Q_reg_0;
  output [0:0]sum;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]product;
  input temp_c_out_51;

  wire [0:0]E;
  wire [0:0]Q;
  wire Q_reg_0;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_51;

  LUT3 #(
    .INIT(8'h96)) 
    Q_i_1__49
       (.I0(Q_reg_0),
        .I1(product),
        .I2(temp_c_out_51),
        .O(sum));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_143
   (Q_reg_0,
    sum,
    temp_c_out_53,
    E,
    Q,
    clk,
    rst,
    product,
    Q_reg_1,
    temp_c_out_51);
  output [0:0]Q_reg_0;
  output [0:0]sum;
  output temp_c_out_53;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [1:0]product;
  input [0:0]Q_reg_1;
  input temp_c_out_51;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire [0:0]Q_reg_1;
  wire clk;
  wire [1:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_51;
  wire temp_c_out_53;

  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    Q_i_1__50
       (.I0(Q_reg_0),
        .I1(product[1]),
        .I2(Q_reg_1),
        .I3(product[0]),
        .I4(temp_c_out_51),
        .O(sum));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    Q_i_2__4
       (.I0(Q_reg_0),
        .I1(product[1]),
        .I2(Q_reg_1),
        .I3(product[0]),
        .I4(temp_c_out_51),
        .O(temp_c_out_53));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_144
   (Q_reg_0,
    sum,
    E,
    Q,
    clk,
    rst,
    product,
    temp_c_out_53);
  output Q_reg_0;
  output [0:0]sum;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]product;
  input temp_c_out_53;

  wire [0:0]E;
  wire [0:0]Q;
  wire Q_reg_0;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_53;

  LUT3 #(
    .INIT(8'h96)) 
    Q_i_1__51
       (.I0(Q_reg_0),
        .I1(product),
        .I2(temp_c_out_53),
        .O(sum));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_145
   (Q_reg_0,
    sum,
    temp_c_out_55,
    E,
    Q,
    clk,
    rst,
    product,
    Q_reg_1,
    temp_c_out_53);
  output [0:0]Q_reg_0;
  output [0:0]sum;
  output temp_c_out_55;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [1:0]product;
  input [0:0]Q_reg_1;
  input temp_c_out_53;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire [0:0]Q_reg_1;
  wire clk;
  wire [1:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_53;
  wire temp_c_out_55;

  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    Q_i_1__52
       (.I0(Q_reg_0),
        .I1(product[1]),
        .I2(Q_reg_1),
        .I3(product[0]),
        .I4(temp_c_out_53),
        .O(sum));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    Q_i_2__3
       (.I0(Q_reg_0),
        .I1(product[1]),
        .I2(Q_reg_1),
        .I3(product[0]),
        .I4(temp_c_out_53),
        .O(temp_c_out_55));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_146
   (Q_reg_0,
    sum,
    E,
    Q,
    clk,
    rst,
    product,
    temp_c_out_55);
  output Q_reg_0;
  output [0:0]sum;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]product;
  input temp_c_out_55;

  wire [0:0]E;
  wire [0:0]Q;
  wire Q_reg_0;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_55;

  LUT3 #(
    .INIT(8'h96)) 
    Q_i_1__53
       (.I0(Q_reg_0),
        .I1(product),
        .I2(temp_c_out_55),
        .O(sum));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_147
   (Q_reg_0,
    sum,
    temp_c_out_57,
    E,
    Q,
    clk,
    rst,
    product,
    Q_reg_1,
    temp_c_out_55);
  output [0:0]Q_reg_0;
  output [0:0]sum;
  output temp_c_out_57;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [1:0]product;
  input [0:0]Q_reg_1;
  input temp_c_out_55;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire [0:0]Q_reg_1;
  wire clk;
  wire [1:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_55;
  wire temp_c_out_57;

  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    Q_i_1__54
       (.I0(Q_reg_0),
        .I1(product[1]),
        .I2(Q_reg_1),
        .I3(product[0]),
        .I4(temp_c_out_55),
        .O(sum));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    Q_i_2__2
       (.I0(Q_reg_0),
        .I1(product[1]),
        .I2(Q_reg_1),
        .I3(product[0]),
        .I4(temp_c_out_55),
        .O(temp_c_out_57));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_148
   (Q_reg_0,
    sum,
    E,
    Q,
    clk,
    rst,
    product,
    temp_c_out_57);
  output Q_reg_0;
  output [0:0]sum;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]product;
  input temp_c_out_57;

  wire [0:0]E;
  wire [0:0]Q;
  wire Q_reg_0;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_57;

  LUT3 #(
    .INIT(8'h96)) 
    Q_i_1__55
       (.I0(Q_reg_0),
        .I1(product),
        .I2(temp_c_out_57),
        .O(sum));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_149
   (Q_reg_0,
    sum,
    temp_c_out_59,
    E,
    Q,
    clk,
    rst,
    product,
    Q_reg_1,
    temp_c_out_57);
  output [0:0]Q_reg_0;
  output [0:0]sum;
  output temp_c_out_59;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [1:0]product;
  input [0:0]Q_reg_1;
  input temp_c_out_57;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire [0:0]Q_reg_1;
  wire clk;
  wire [1:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_57;
  wire temp_c_out_59;

  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    Q_i_1__56
       (.I0(Q_reg_0),
        .I1(product[1]),
        .I2(Q_reg_1),
        .I3(product[0]),
        .I4(temp_c_out_57),
        .O(sum));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    Q_i_2__1
       (.I0(Q_reg_0),
        .I1(product[1]),
        .I2(Q_reg_1),
        .I3(product[0]),
        .I4(temp_c_out_57),
        .O(temp_c_out_59));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_15
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_150
   (Q_reg_0,
    sum,
    E,
    Q,
    clk,
    rst,
    product,
    temp_c_out_59);
  output Q_reg_0;
  output [0:0]sum;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]product;
  input temp_c_out_59;

  wire [0:0]E;
  wire [0:0]Q;
  wire Q_reg_0;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_59;

  LUT3 #(
    .INIT(8'h96)) 
    Q_i_1__57
       (.I0(Q_reg_0),
        .I1(product),
        .I2(temp_c_out_59),
        .O(sum));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_151
   (multiplicand_d,
    D,
    sum,
    E,
    Q,
    clk,
    rst,
    Q_reg_0,
    B,
    product,
    temp_c_out_5);
  output [0:0]multiplicand_d;
  output [0:0]D;
  output [0:0]sum;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_0;
  input [0:0]B;
  input [0:0]product;
  input temp_c_out_5;

  wire [0:0]B;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire clk;
  wire [0:0]multiplicand_d;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_5;

  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[6]_i_1 
       (.I0(multiplicand_d),
        .I1(Q_reg_0),
        .I2(B),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Q_i_1__3
       (.I0(multiplicand_d),
        .I1(product),
        .I2(temp_c_out_5),
        .O(sum));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(multiplicand_d));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_152
   (Q_reg_0,
    sum,
    temp_c_out_61,
    E,
    Q,
    clk,
    rst,
    product,
    Q_reg_1,
    temp_c_out_59);
  output [0:0]Q_reg_0;
  output [0:0]sum;
  output temp_c_out_61;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [1:0]product;
  input [0:0]Q_reg_1;
  input temp_c_out_59;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire [0:0]Q_reg_1;
  wire clk;
  wire [1:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_59;
  wire temp_c_out_61;

  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    Q_i_1__58
       (.I0(Q_reg_0),
        .I1(product[1]),
        .I2(Q_reg_1),
        .I3(product[0]),
        .I4(temp_c_out_59),
        .O(sum));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    Q_i_2__0
       (.I0(Q_reg_0),
        .I1(product[1]),
        .I2(Q_reg_1),
        .I3(product[0]),
        .I4(temp_c_out_59),
        .O(temp_c_out_61));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_153
   (Q_reg_0,
    sum,
    temp_c_out_62,
    E,
    Q,
    clk,
    rst,
    product,
    temp_c_out_61);
  output Q_reg_0;
  output [0:0]sum;
  output temp_c_out_62;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]product;
  input temp_c_out_61;

  wire [0:0]E;
  wire [0:0]Q;
  wire Q_reg_0;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_61;
  wire temp_c_out_62;

  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Q_i_1__59
       (.I0(Q_reg_0),
        .I1(product),
        .I2(temp_c_out_61),
        .O(sum));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Q_i_2
       (.I0(Q_reg_0),
        .I1(product),
        .I2(temp_c_out_61),
        .O(temp_c_out_62));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_154
   (Q_reg_0,
    sum,
    E,
    Q,
    clk,
    rst,
    product,
    Q_reg_1,
    temp_c_out_61);
  output [0:0]Q_reg_0;
  output [0:0]sum;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [1:0]product;
  input [0:0]Q_reg_1;
  input temp_c_out_61;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire [0:0]Q_reg_1;
  wire clk;
  wire [1:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_61;

  LUT5 #(
    .INIT(32'h99969666)) 
    Q_i_1__60
       (.I0(Q_reg_0),
        .I1(product[1]),
        .I2(Q_reg_1),
        .I3(product[0]),
        .I4(temp_c_out_61),
        .O(sum));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_155
   (sum,
    E,
    Q,
    clk,
    rst,
    product,
    Q_reg_0,
    temp_c_out_62);
  output [0:0]sum;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [1:0]product;
  input [0:0]Q_reg_0;
  input temp_c_out_62;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire clk;
  wire [63:63]multiplicand_d;
  wire [1:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_62;

  LUT5 #(
    .INIT(32'h99969666)) 
    Q_i_1__61
       (.I0(multiplicand_d),
        .I1(product[1]),
        .I2(Q_reg_0),
        .I3(product[0]),
        .I4(temp_c_out_62),
        .O(sum));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(multiplicand_d));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_156
   (D,
    sum,
    temp_c_out_7,
    Q_reg_0,
    E,
    Q,
    clk,
    rst,
    Q_reg_1,
    B,
    product,
    temp_c_out_5);
  output [0:0]D;
  output [0:0]sum;
  output temp_c_out_7;
  input [0:0]Q_reg_0;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_1;
  input [0:0]B;
  input [1:0]product;
  input temp_c_out_5;

  wire [0:0]B;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire [0:0]Q_reg_1;
  wire clk;
  wire [6:6]multiplicand_d;
  wire [1:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_5;
  wire temp_c_out_7;

  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[7]_i_1 
       (.I0(multiplicand_d),
        .I1(Q_reg_1),
        .I2(B),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    Q_i_1__4
       (.I0(multiplicand_d),
        .I1(product[1]),
        .I2(Q_reg_0),
        .I3(product[0]),
        .I4(temp_c_out_5),
        .O(sum));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    Q_i_2__27
       (.I0(multiplicand_d),
        .I1(product[1]),
        .I2(Q_reg_0),
        .I3(product[0]),
        .I4(temp_c_out_5),
        .O(temp_c_out_7));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(multiplicand_d));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_157
   (multiplicand_d,
    D,
    sum,
    E,
    Q,
    clk,
    rst,
    Q_reg_0,
    B,
    product,
    temp_c_out_7);
  output [0:0]multiplicand_d;
  output [0:0]D;
  output [0:0]sum;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_0;
  input [0:0]B;
  input [0:0]product;
  input temp_c_out_7;

  wire [0:0]B;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire clk;
  wire [0:0]multiplicand_d;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_7;

  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[8]_i_1 
       (.I0(multiplicand_d),
        .I1(Q_reg_0),
        .I2(B),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Q_i_1__5
       (.I0(multiplicand_d),
        .I1(product),
        .I2(temp_c_out_7),
        .O(sum));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(multiplicand_d));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_158
   (D,
    sum,
    temp_c_out_9,
    Q_reg_0,
    E,
    Q,
    clk,
    rst,
    Q_reg_1,
    B,
    product,
    temp_c_out_7);
  output [0:0]D;
  output [0:0]sum;
  output temp_c_out_9;
  input [0:0]Q_reg_0;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_1;
  input [0:0]B;
  input [1:0]product;
  input temp_c_out_7;

  wire [0:0]B;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire [0:0]Q_reg_1;
  wire clk;
  wire [8:8]multiplicand_d;
  wire [1:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_7;
  wire temp_c_out_9;

  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[9]_i_1 
       (.I0(multiplicand_d),
        .I1(Q_reg_1),
        .I2(B),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    Q_i_1__6
       (.I0(multiplicand_d),
        .I1(product[1]),
        .I2(Q_reg_0),
        .I3(product[0]),
        .I4(temp_c_out_7),
        .O(sum));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    Q_i_2__26
       (.I0(multiplicand_d),
        .I1(product[1]),
        .I2(Q_reg_0),
        .I3(product[0]),
        .I4(temp_c_out_7),
        .O(temp_c_out_9));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(multiplicand_d));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_159
   (Q_reg_0,
    D,
    sum,
    E,
    Q,
    clk,
    rst,
    Q_reg_1,
    B,
    product,
    temp_c_out_9);
  output [0:0]Q_reg_0;
  output [0:0]D;
  output [0:0]sum;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_1;
  input [0:0]B;
  input [0:0]product;
  input temp_c_out_9;

  wire [0:0]B;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire [0:0]Q_reg_1;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_9;

  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[10]_i_1 
       (.I0(Q_reg_0),
        .I1(Q_reg_1),
        .I2(B),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Q_i_1__7
       (.I0(Q_reg_0),
        .I1(product),
        .I2(temp_c_out_9),
        .O(sum));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_16
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_17
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_18
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_19
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_2
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_20
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_21
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_22
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_23
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_24
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_25
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_26
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_27
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_28
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_29
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_3
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_30
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_31
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_32
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_33
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_34
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_35
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_36
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_37
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_38
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_39
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_4
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_40
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_41
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_42
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_43
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_44
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_45
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_46
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_47
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_48
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_49
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_5
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_50
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_51
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_52
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_53
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_54
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_55
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_56
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_57
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_58
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_59
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_6
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_60
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_61
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_62
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_63
   (multiplier_d,
    E,
    Q,
    clk,
    rst);
  output [0:0]multiplier_d;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;

  wire [0:0]E;
  wire [0:0]Q;
  wire clk;
  wire [0:0]multiplier_d;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(multiplier_d));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_64
   (D,
    E,
    Q,
    clk,
    rst,
    Q_reg_0,
    A);
  output [0:0]D;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_0;
  input [0:0]A;

  wire [0:0]A;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire Q_reg_n_0;
  wire clk;
  wire rst;

  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[9]_i_1__0 
       (.I0(Q_reg_n_0),
        .I1(Q_reg_0),
        .I2(A),
        .O(D));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_n_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_65
   (D,
    E,
    Q,
    clk,
    rst,
    Q_reg_0,
    A);
  output [0:0]D;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_0;
  input [0:0]A;

  wire [0:0]A;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire Q_reg_n_0;
  wire clk;
  wire rst;

  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[10]_i_1__0 
       (.I0(Q_reg_n_0),
        .I1(Q_reg_0),
        .I2(A),
        .O(D));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_n_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_66
   (D,
    E,
    Q,
    clk,
    rst,
    Q_reg_0,
    A);
  output [0:0]D;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_0;
  input [0:0]A;

  wire [0:0]A;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire Q_reg_n_0;
  wire clk;
  wire rst;

  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[11]_i_1__0 
       (.I0(Q_reg_n_0),
        .I1(Q_reg_0),
        .I2(A),
        .O(D));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_n_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_67
   (D,
    E,
    Q,
    clk,
    rst,
    Q_reg_0,
    A);
  output [0:0]D;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_0;
  input [0:0]A;

  wire [0:0]A;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire Q_reg_n_0;
  wire clk;
  wire rst;

  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[12]_i_1__0 
       (.I0(Q_reg_n_0),
        .I1(Q_reg_0),
        .I2(A),
        .O(D));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_n_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_68
   (D,
    E,
    Q,
    clk,
    rst,
    Q_reg_0,
    A);
  output [0:0]D;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_0;
  input [0:0]A;

  wire [0:0]A;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire Q_reg_n_0;
  wire clk;
  wire rst;

  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[13]_i_1__0 
       (.I0(Q_reg_n_0),
        .I1(Q_reg_0),
        .I2(A),
        .O(D));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_n_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_69
   (D,
    E,
    Q,
    clk,
    rst,
    Q_reg_0,
    A);
  output [0:0]D;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_0;
  input [0:0]A;

  wire [0:0]A;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire Q_reg_n_0;
  wire clk;
  wire rst;

  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[14]_i_1__0 
       (.I0(Q_reg_n_0),
        .I1(Q_reg_0),
        .I2(A),
        .O(D));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_n_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_7
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_70
   (D,
    E,
    Q,
    clk,
    rst,
    Q_reg_0,
    A);
  output [0:0]D;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_0;
  input [0:0]A;

  wire [0:0]A;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire Q_reg_n_0;
  wire clk;
  wire rst;

  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[15]_i_1__0 
       (.I0(Q_reg_n_0),
        .I1(Q_reg_0),
        .I2(A),
        .O(D));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_n_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_71
   (D,
    E,
    Q,
    clk,
    rst,
    Q_reg_0,
    A);
  output [0:0]D;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_0;
  input [0:0]A;

  wire [0:0]A;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire Q_reg_n_0;
  wire clk;
  wire rst;

  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[16]_i_1__0 
       (.I0(Q_reg_n_0),
        .I1(Q_reg_0),
        .I2(A),
        .O(D));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_n_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_72
   (D,
    E,
    Q,
    clk,
    rst,
    Q_reg_0,
    A);
  output [0:0]D;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_0;
  input [0:0]A;

  wire [0:0]A;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire Q_reg_n_0;
  wire clk;
  wire rst;

  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[17]_i_1__0 
       (.I0(Q_reg_n_0),
        .I1(Q_reg_0),
        .I2(A),
        .O(D));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_n_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_73
   (D,
    E,
    Q,
    clk,
    rst,
    Q_reg_0,
    A);
  output [0:0]D;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_0;
  input [0:0]A;

  wire [0:0]A;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire Q_reg_n_0;
  wire clk;
  wire rst;

  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[18]_i_1__0 
       (.I0(Q_reg_n_0),
        .I1(Q_reg_0),
        .I2(A),
        .O(D));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_n_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_74
   (D,
    E,
    Q,
    clk,
    rst,
    Q_reg_0,
    A);
  output [0:0]D;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_0;
  input [0:0]A;

  wire [0:0]A;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire Q_reg_n_0;
  wire clk;
  wire rst;

  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[0]_i_1__0 
       (.I0(Q_reg_n_0),
        .I1(Q_reg_0),
        .I2(A),
        .O(D));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_n_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_75
   (D,
    E,
    Q,
    clk,
    rst,
    Q_reg_0,
    A);
  output [0:0]D;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_0;
  input [0:0]A;

  wire [0:0]A;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire Q_reg_n_0;
  wire clk;
  wire rst;

  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[19]_i_1__0 
       (.I0(Q_reg_n_0),
        .I1(Q_reg_0),
        .I2(A),
        .O(D));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_n_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_76
   (D,
    E,
    Q,
    clk,
    rst,
    Q_reg_0,
    A);
  output [0:0]D;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_0;
  input [0:0]A;

  wire [0:0]A;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire Q_reg_n_0;
  wire clk;
  wire rst;

  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[20]_i_1__0 
       (.I0(Q_reg_n_0),
        .I1(Q_reg_0),
        .I2(A),
        .O(D));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_n_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_77
   (D,
    E,
    Q,
    clk,
    rst,
    Q_reg_0,
    A);
  output [0:0]D;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_0;
  input [0:0]A;

  wire [0:0]A;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire Q_reg_n_0;
  wire clk;
  wire rst;

  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[21]_i_1__0 
       (.I0(Q_reg_n_0),
        .I1(Q_reg_0),
        .I2(A),
        .O(D));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_n_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_78
   (D,
    E,
    Q,
    clk,
    rst,
    Q_reg_0,
    A);
  output [0:0]D;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_0;
  input [0:0]A;

  wire [0:0]A;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire Q_reg_n_0;
  wire clk;
  wire rst;

  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[22]_i_1__0 
       (.I0(Q_reg_n_0),
        .I1(Q_reg_0),
        .I2(A),
        .O(D));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_n_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_79
   (D,
    E,
    Q,
    clk,
    rst,
    Q_reg_0,
    A);
  output [0:0]D;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_0;
  input [0:0]A;

  wire [0:0]A;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire Q_reg_n_0;
  wire clk;
  wire rst;

  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[23]_i_1__0 
       (.I0(Q_reg_n_0),
        .I1(Q_reg_0),
        .I2(A),
        .O(D));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_n_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_8
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_80
   (D,
    E,
    Q,
    clk,
    rst,
    Q_reg_0,
    A);
  output [0:0]D;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_0;
  input [0:0]A;

  wire [0:0]A;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire Q_reg_n_0;
  wire clk;
  wire rst;

  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[24]_i_1__0 
       (.I0(Q_reg_n_0),
        .I1(Q_reg_0),
        .I2(A),
        .O(D));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_n_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_81
   (D,
    E,
    Q,
    clk,
    rst,
    Q_reg_0,
    A);
  output [0:0]D;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_0;
  input [0:0]A;

  wire [0:0]A;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire Q_reg_n_0;
  wire clk;
  wire rst;

  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[25]_i_1__0 
       (.I0(Q_reg_n_0),
        .I1(Q_reg_0),
        .I2(A),
        .O(D));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_n_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_82
   (D,
    E,
    Q,
    clk,
    rst,
    Q_reg_0,
    A);
  output [0:0]D;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_0;
  input [0:0]A;

  wire [0:0]A;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire Q_reg_n_0;
  wire clk;
  wire rst;

  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[26]_i_1__0 
       (.I0(Q_reg_n_0),
        .I1(Q_reg_0),
        .I2(A),
        .O(D));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_n_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_83
   (D,
    E,
    Q,
    clk,
    rst,
    Q_reg_0,
    A);
  output [0:0]D;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_0;
  input [0:0]A;

  wire [0:0]A;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire Q_reg_n_0;
  wire clk;
  wire rst;

  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[27]_i_1__0 
       (.I0(Q_reg_n_0),
        .I1(Q_reg_0),
        .I2(A),
        .O(D));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_n_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_84
   (D,
    E,
    Q,
    clk,
    rst,
    Q_reg_0,
    A);
  output [0:0]D;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_0;
  input [0:0]A;

  wire [0:0]A;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire Q_reg_n_0;
  wire clk;
  wire rst;

  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[28]_i_1__0 
       (.I0(Q_reg_n_0),
        .I1(Q_reg_0),
        .I2(A),
        .O(D));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_n_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_85
   (D,
    E,
    Q,
    clk,
    rst,
    Q_reg_0,
    A);
  output [0:0]D;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_0;
  input [0:0]A;

  wire [0:0]A;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire Q_reg_n_0;
  wire clk;
  wire rst;

  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[1]_i_1__0 
       (.I0(Q_reg_n_0),
        .I1(Q_reg_0),
        .I2(A),
        .O(D));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_n_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_86
   (D,
    E,
    Q,
    clk,
    rst,
    Q_reg_0,
    A);
  output [0:0]D;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_0;
  input [0:0]A;

  wire [0:0]A;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire Q_reg_n_0;
  wire clk;
  wire rst;

  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[29]_i_1__0 
       (.I0(Q_reg_n_0),
        .I1(Q_reg_0),
        .I2(A),
        .O(D));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_n_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_87
   (D,
    E,
    Q,
    clk,
    rst,
    Q_reg_0,
    A);
  output [0:0]D;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_0;
  input [0:0]A;

  wire [0:0]A;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire Q_reg_n_0;
  wire clk;
  wire rst;

  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[30]_i_1__0 
       (.I0(Q_reg_n_0),
        .I1(Q_reg_0),
        .I2(A),
        .O(D));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_n_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_88
   (D,
    E,
    Q,
    clk,
    rst,
    Q_reg_0,
    A);
  output [0:0]D;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_0;
  input [0:0]A;

  wire [0:0]A;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire Q_reg_n_0;
  wire clk;
  wire rst;

  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[2]_i_1__0 
       (.I0(Q_reg_n_0),
        .I1(Q_reg_0),
        .I2(A),
        .O(D));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_n_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_89
   (D,
    E,
    Q,
    clk,
    rst,
    Q_reg_0,
    A);
  output [0:0]D;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_0;
  input [0:0]A;

  wire [0:0]A;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire Q_reg_n_0;
  wire clk;
  wire rst;

  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[3]_i_1__0 
       (.I0(Q_reg_n_0),
        .I1(Q_reg_0),
        .I2(A),
        .O(D));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_n_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_9
   (product,
    Q,
    sum,
    clk,
    rst);
  output [0:0]product;
  input [0:0]Q;
  input [0:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(sum),
        .Q(product));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_90
   (D,
    E,
    Q,
    clk,
    rst,
    Q_reg_0,
    A);
  output [0:0]D;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_0;
  input [0:0]A;

  wire [0:0]A;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire Q_reg_n_0;
  wire clk;
  wire rst;

  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[4]_i_1__0 
       (.I0(Q_reg_n_0),
        .I1(Q_reg_0),
        .I2(A),
        .O(D));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_n_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_91
   (D,
    E,
    Q,
    clk,
    rst,
    Q_reg_0,
    A);
  output [0:0]D;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_0;
  input [0:0]A;

  wire [0:0]A;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire Q_reg_n_0;
  wire clk;
  wire rst;

  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[5]_i_1__0 
       (.I0(Q_reg_n_0),
        .I1(Q_reg_0),
        .I2(A),
        .O(D));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_n_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_92
   (D,
    E,
    Q,
    clk,
    rst,
    Q_reg_0,
    A);
  output [0:0]D;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_0;
  input [0:0]A;

  wire [0:0]A;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire Q_reg_n_0;
  wire clk;
  wire rst;

  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[6]_i_1__0 
       (.I0(Q_reg_n_0),
        .I1(Q_reg_0),
        .I2(A),
        .O(D));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_n_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_93
   (D,
    E,
    Q,
    clk,
    rst,
    Q_reg_0,
    A);
  output [0:0]D;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_0;
  input [0:0]A;

  wire [0:0]A;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire Q_reg_n_0;
  wire clk;
  wire rst;

  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[7]_i_1__0 
       (.I0(Q_reg_n_0),
        .I1(Q_reg_0),
        .I2(A),
        .O(D));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_n_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_94
   (D,
    E,
    Q,
    clk,
    rst,
    Q_reg_0,
    A);
  output [0:0]D;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_0;
  input [0:0]A;

  wire [0:0]A;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire Q_reg_n_0;
  wire clk;
  wire rst;

  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[8]_i_1__0 
       (.I0(Q_reg_n_0),
        .I1(Q_reg_0),
        .I2(A),
        .O(D));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(Q_reg_n_0));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_96
   (multiplicand_d,
    D,
    sum,
    E,
    Q,
    clk,
    rst,
    Q_reg_0,
    B,
    Q_reg_1);
  output [0:0]multiplicand_d;
  output [0:0]D;
  output [0:0]sum;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_0;
  input [0:0]B;
  input Q_reg_1;

  wire [0:0]B;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire Q_reg_1;
  wire clk;
  wire [0:0]multiplicand_d;
  wire rst;
  wire [0:0]sum;

  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[1]_i_1 
       (.I0(multiplicand_d),
        .I1(Q_reg_0),
        .I2(B),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    Q_i_1__62
       (.I0(multiplicand_d),
        .I1(Q_reg_1),
        .O(sum));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(multiplicand_d));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_97
   (D,
    sum,
    temp_c_out_11,
    Q_reg_0,
    E,
    Q,
    clk,
    rst,
    Q_reg_1,
    B,
    product,
    temp_c_out_9);
  output [0:0]D;
  output [0:0]sum;
  output temp_c_out_11;
  input [0:0]Q_reg_0;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_1;
  input [0:0]B;
  input [1:0]product;
  input temp_c_out_9;

  wire [0:0]B;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire [0:0]Q_reg_1;
  wire clk;
  wire [10:10]multiplicand_d;
  wire [1:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_11;
  wire temp_c_out_9;

  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[11]_i_1 
       (.I0(multiplicand_d),
        .I1(Q_reg_1),
        .I2(B),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    Q_i_1__8
       (.I0(multiplicand_d),
        .I1(product[1]),
        .I2(Q_reg_0),
        .I3(product[0]),
        .I4(temp_c_out_9),
        .O(sum));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    Q_i_2__25
       (.I0(multiplicand_d),
        .I1(product[1]),
        .I2(Q_reg_0),
        .I3(product[0]),
        .I4(temp_c_out_9),
        .O(temp_c_out_11));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(multiplicand_d));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_98
   (multiplicand_d,
    D,
    sum,
    E,
    Q,
    clk,
    rst,
    Q_reg_0,
    B,
    product,
    temp_c_out_11);
  output [0:0]multiplicand_d;
  output [0:0]D;
  output [0:0]sum;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_0;
  input [0:0]B;
  input [0:0]product;
  input temp_c_out_11;

  wire [0:0]B;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire clk;
  wire [0:0]multiplicand_d;
  wire [0:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_11;

  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[12]_i_1 
       (.I0(multiplicand_d),
        .I1(Q_reg_0),
        .I2(B),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Q_i_1__9
       (.I0(multiplicand_d),
        .I1(product),
        .I2(temp_c_out_11),
        .O(sum));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(multiplicand_d));
endmodule

(* ORIG_REF_NAME = "reg_1" *) 
module lab_3_top_level_0_0_reg_1_99
   (D,
    sum,
    temp_c_out_13,
    Q_reg_0,
    E,
    Q,
    clk,
    rst,
    Q_reg_1,
    B,
    product,
    temp_c_out_11);
  output [0:0]D;
  output [0:0]sum;
  output temp_c_out_13;
  input [0:0]Q_reg_0;
  input [0:0]E;
  input [0:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_1;
  input [0:0]B;
  input [1:0]product;
  input temp_c_out_11;

  wire [0:0]B;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]Q_reg_0;
  wire [0:0]Q_reg_1;
  wire clk;
  wire [12:12]multiplicand_d;
  wire [1:0]product;
  wire rst;
  wire [0:0]sum;
  wire temp_c_out_11;
  wire temp_c_out_13;

  LUT3 #(
    .INIT(8'hB8)) 
    \D_reg[13]_i_1 
       (.I0(multiplicand_d),
        .I1(Q_reg_1),
        .I2(B),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    Q_i_1__10
       (.I0(multiplicand_d),
        .I1(product[1]),
        .I2(Q_reg_0),
        .I3(product[0]),
        .I4(temp_c_out_11),
        .O(sum));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    Q_i_2__24
       (.I0(multiplicand_d),
        .I1(product[1]),
        .I2(Q_reg_0),
        .I3(product[0]),
        .I4(temp_c_out_11),
        .O(temp_c_out_13));
  FDCE Q_reg
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(Q),
        .Q(multiplicand_d));
endmodule

(* ORIG_REF_NAME = "reg_32" *) 
module lab_3_top_level_0_0_reg_32
   (multiplier_d,
    D,
    E,
    Q,
    clk,
    rst,
    Q_reg,
    A);
  output [0:0]multiplier_d;
  output [30:0]D;
  input [0:0]E;
  input [31:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg;
  input [30:0]A;

  wire [30:0]A;
  wire [30:0]D;
  wire [0:0]E;
  wire [31:0]Q;
  wire [0:0]Q_reg;
  wire clk;
  wire [0:0]multiplier_d;
  wire rst;

  lab_3_top_level_0_0_reg_1_63 \L1[0].regs_1 
       (.E(E),
        .Q(Q[0]),
        .clk(clk),
        .multiplier_d(multiplier_d),
        .rst(rst));
  lab_3_top_level_0_0_reg_1_64 \L1[10].regs_1 
       (.A(A[9]),
        .D(D[9]),
        .E(E),
        .Q(Q[10]),
        .Q_reg_0(Q_reg),
        .clk(clk),
        .rst(rst));
  lab_3_top_level_0_0_reg_1_65 \L1[11].regs_1 
       (.A(A[10]),
        .D(D[10]),
        .E(E),
        .Q(Q[11]),
        .Q_reg_0(Q_reg),
        .clk(clk),
        .rst(rst));
  lab_3_top_level_0_0_reg_1_66 \L1[12].regs_1 
       (.A(A[11]),
        .D(D[11]),
        .E(E),
        .Q(Q[12]),
        .Q_reg_0(Q_reg),
        .clk(clk),
        .rst(rst));
  lab_3_top_level_0_0_reg_1_67 \L1[13].regs_1 
       (.A(A[12]),
        .D(D[12]),
        .E(E),
        .Q(Q[13]),
        .Q_reg_0(Q_reg),
        .clk(clk),
        .rst(rst));
  lab_3_top_level_0_0_reg_1_68 \L1[14].regs_1 
       (.A(A[13]),
        .D(D[13]),
        .E(E),
        .Q(Q[14]),
        .Q_reg_0(Q_reg),
        .clk(clk),
        .rst(rst));
  lab_3_top_level_0_0_reg_1_69 \L1[15].regs_1 
       (.A(A[14]),
        .D(D[14]),
        .E(E),
        .Q(Q[15]),
        .Q_reg_0(Q_reg),
        .clk(clk),
        .rst(rst));
  lab_3_top_level_0_0_reg_1_70 \L1[16].regs_1 
       (.A(A[15]),
        .D(D[15]),
        .E(E),
        .Q(Q[16]),
        .Q_reg_0(Q_reg),
        .clk(clk),
        .rst(rst));
  lab_3_top_level_0_0_reg_1_71 \L1[17].regs_1 
       (.A(A[16]),
        .D(D[16]),
        .E(E),
        .Q(Q[17]),
        .Q_reg_0(Q_reg),
        .clk(clk),
        .rst(rst));
  lab_3_top_level_0_0_reg_1_72 \L1[18].regs_1 
       (.A(A[17]),
        .D(D[17]),
        .E(E),
        .Q(Q[18]),
        .Q_reg_0(Q_reg),
        .clk(clk),
        .rst(rst));
  lab_3_top_level_0_0_reg_1_73 \L1[19].regs_1 
       (.A(A[18]),
        .D(D[18]),
        .E(E),
        .Q(Q[19]),
        .Q_reg_0(Q_reg),
        .clk(clk),
        .rst(rst));
  lab_3_top_level_0_0_reg_1_74 \L1[1].regs_1 
       (.A(A[0]),
        .D(D[0]),
        .E(E),
        .Q(Q[1]),
        .Q_reg_0(Q_reg),
        .clk(clk),
        .rst(rst));
  lab_3_top_level_0_0_reg_1_75 \L1[20].regs_1 
       (.A(A[19]),
        .D(D[19]),
        .E(E),
        .Q(Q[20]),
        .Q_reg_0(Q_reg),
        .clk(clk),
        .rst(rst));
  lab_3_top_level_0_0_reg_1_76 \L1[21].regs_1 
       (.A(A[20]),
        .D(D[20]),
        .E(E),
        .Q(Q[21]),
        .Q_reg_0(Q_reg),
        .clk(clk),
        .rst(rst));
  lab_3_top_level_0_0_reg_1_77 \L1[22].regs_1 
       (.A(A[21]),
        .D(D[21]),
        .E(E),
        .Q(Q[22]),
        .Q_reg_0(Q_reg),
        .clk(clk),
        .rst(rst));
  lab_3_top_level_0_0_reg_1_78 \L1[23].regs_1 
       (.A(A[22]),
        .D(D[22]),
        .E(E),
        .Q(Q[23]),
        .Q_reg_0(Q_reg),
        .clk(clk),
        .rst(rst));
  lab_3_top_level_0_0_reg_1_79 \L1[24].regs_1 
       (.A(A[23]),
        .D(D[23]),
        .E(E),
        .Q(Q[24]),
        .Q_reg_0(Q_reg),
        .clk(clk),
        .rst(rst));
  lab_3_top_level_0_0_reg_1_80 \L1[25].regs_1 
       (.A(A[24]),
        .D(D[24]),
        .E(E),
        .Q(Q[25]),
        .Q_reg_0(Q_reg),
        .clk(clk),
        .rst(rst));
  lab_3_top_level_0_0_reg_1_81 \L1[26].regs_1 
       (.A(A[25]),
        .D(D[25]),
        .E(E),
        .Q(Q[26]),
        .Q_reg_0(Q_reg),
        .clk(clk),
        .rst(rst));
  lab_3_top_level_0_0_reg_1_82 \L1[27].regs_1 
       (.A(A[26]),
        .D(D[26]),
        .E(E),
        .Q(Q[27]),
        .Q_reg_0(Q_reg),
        .clk(clk),
        .rst(rst));
  lab_3_top_level_0_0_reg_1_83 \L1[28].regs_1 
       (.A(A[27]),
        .D(D[27]),
        .E(E),
        .Q(Q[28]),
        .Q_reg_0(Q_reg),
        .clk(clk),
        .rst(rst));
  lab_3_top_level_0_0_reg_1_84 \L1[29].regs_1 
       (.A(A[28]),
        .D(D[28]),
        .E(E),
        .Q(Q[29]),
        .Q_reg_0(Q_reg),
        .clk(clk),
        .rst(rst));
  lab_3_top_level_0_0_reg_1_85 \L1[2].regs_1 
       (.A(A[1]),
        .D(D[1]),
        .E(E),
        .Q(Q[2]),
        .Q_reg_0(Q_reg),
        .clk(clk),
        .rst(rst));
  lab_3_top_level_0_0_reg_1_86 \L1[30].regs_1 
       (.A(A[29]),
        .D(D[29]),
        .E(E),
        .Q(Q[30]),
        .Q_reg_0(Q_reg),
        .clk(clk),
        .rst(rst));
  lab_3_top_level_0_0_reg_1_87 \L1[31].regs_1 
       (.A(A[30]),
        .D(D[30]),
        .E(E),
        .Q(Q[31]),
        .Q_reg_0(Q_reg),
        .clk(clk),
        .rst(rst));
  lab_3_top_level_0_0_reg_1_88 \L1[3].regs_1 
       (.A(A[2]),
        .D(D[2]),
        .E(E),
        .Q(Q[3]),
        .Q_reg_0(Q_reg),
        .clk(clk),
        .rst(rst));
  lab_3_top_level_0_0_reg_1_89 \L1[4].regs_1 
       (.A(A[3]),
        .D(D[3]),
        .E(E),
        .Q(Q[4]),
        .Q_reg_0(Q_reg),
        .clk(clk),
        .rst(rst));
  lab_3_top_level_0_0_reg_1_90 \L1[5].regs_1 
       (.A(A[4]),
        .D(D[4]),
        .E(E),
        .Q(Q[5]),
        .Q_reg_0(Q_reg),
        .clk(clk),
        .rst(rst));
  lab_3_top_level_0_0_reg_1_91 \L1[6].regs_1 
       (.A(A[5]),
        .D(D[5]),
        .E(E),
        .Q(Q[6]),
        .Q_reg_0(Q_reg),
        .clk(clk),
        .rst(rst));
  lab_3_top_level_0_0_reg_1_92 \L1[7].regs_1 
       (.A(A[6]),
        .D(D[6]),
        .E(E),
        .Q(Q[7]),
        .Q_reg_0(Q_reg),
        .clk(clk),
        .rst(rst));
  lab_3_top_level_0_0_reg_1_93 \L1[8].regs_1 
       (.A(A[7]),
        .D(D[7]),
        .E(E),
        .Q(Q[8]),
        .Q_reg_0(Q_reg),
        .clk(clk),
        .rst(rst));
  lab_3_top_level_0_0_reg_1_94 \L1[9].regs_1 
       (.A(A[8]),
        .D(D[8]),
        .E(E),
        .Q(Q[9]),
        .Q_reg_0(Q_reg),
        .clk(clk),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "reg_64" *) 
module lab_3_top_level_0_0_reg_64
   (product,
    Q,
    sum,
    clk,
    rst);
  output [63:0]product;
  input [0:0]Q;
  input [63:0]sum;
  input clk;
  input rst;

  wire [0:0]Q;
  wire clk;
  wire [63:0]product;
  wire rst;
  wire [63:0]sum;

  lab_3_top_level_0_0_reg_1 \L1[0].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[0]),
        .rst(rst),
        .sum(sum[0]));
  lab_3_top_level_0_0_reg_1_0 \L1[10].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[10]),
        .rst(rst),
        .sum(sum[10]));
  lab_3_top_level_0_0_reg_1_1 \L1[11].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[11]),
        .rst(rst),
        .sum(sum[11]));
  lab_3_top_level_0_0_reg_1_2 \L1[12].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[12]),
        .rst(rst),
        .sum(sum[12]));
  lab_3_top_level_0_0_reg_1_3 \L1[13].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[13]),
        .rst(rst),
        .sum(sum[13]));
  lab_3_top_level_0_0_reg_1_4 \L1[14].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[14]),
        .rst(rst),
        .sum(sum[14]));
  lab_3_top_level_0_0_reg_1_5 \L1[15].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[15]),
        .rst(rst),
        .sum(sum[15]));
  lab_3_top_level_0_0_reg_1_6 \L1[16].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[16]),
        .rst(rst),
        .sum(sum[16]));
  lab_3_top_level_0_0_reg_1_7 \L1[17].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[17]),
        .rst(rst),
        .sum(sum[17]));
  lab_3_top_level_0_0_reg_1_8 \L1[18].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[18]),
        .rst(rst),
        .sum(sum[18]));
  lab_3_top_level_0_0_reg_1_9 \L1[19].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[19]),
        .rst(rst),
        .sum(sum[19]));
  lab_3_top_level_0_0_reg_1_10 \L1[1].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[1]),
        .rst(rst),
        .sum(sum[1]));
  lab_3_top_level_0_0_reg_1_11 \L1[20].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[20]),
        .rst(rst),
        .sum(sum[20]));
  lab_3_top_level_0_0_reg_1_12 \L1[21].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[21]),
        .rst(rst),
        .sum(sum[21]));
  lab_3_top_level_0_0_reg_1_13 \L1[22].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[22]),
        .rst(rst),
        .sum(sum[22]));
  lab_3_top_level_0_0_reg_1_14 \L1[23].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[23]),
        .rst(rst),
        .sum(sum[23]));
  lab_3_top_level_0_0_reg_1_15 \L1[24].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[24]),
        .rst(rst),
        .sum(sum[24]));
  lab_3_top_level_0_0_reg_1_16 \L1[25].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[25]),
        .rst(rst),
        .sum(sum[25]));
  lab_3_top_level_0_0_reg_1_17 \L1[26].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[26]),
        .rst(rst),
        .sum(sum[26]));
  lab_3_top_level_0_0_reg_1_18 \L1[27].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[27]),
        .rst(rst),
        .sum(sum[27]));
  lab_3_top_level_0_0_reg_1_19 \L1[28].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[28]),
        .rst(rst),
        .sum(sum[28]));
  lab_3_top_level_0_0_reg_1_20 \L1[29].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[29]),
        .rst(rst),
        .sum(sum[29]));
  lab_3_top_level_0_0_reg_1_21 \L1[2].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[2]),
        .rst(rst),
        .sum(sum[2]));
  lab_3_top_level_0_0_reg_1_22 \L1[30].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[30]),
        .rst(rst),
        .sum(sum[30]));
  lab_3_top_level_0_0_reg_1_23 \L1[31].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[31]),
        .rst(rst),
        .sum(sum[31]));
  lab_3_top_level_0_0_reg_1_24 \L1[32].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[32]),
        .rst(rst),
        .sum(sum[32]));
  lab_3_top_level_0_0_reg_1_25 \L1[33].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[33]),
        .rst(rst),
        .sum(sum[33]));
  lab_3_top_level_0_0_reg_1_26 \L1[34].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[34]),
        .rst(rst),
        .sum(sum[34]));
  lab_3_top_level_0_0_reg_1_27 \L1[35].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[35]),
        .rst(rst),
        .sum(sum[35]));
  lab_3_top_level_0_0_reg_1_28 \L1[36].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[36]),
        .rst(rst),
        .sum(sum[36]));
  lab_3_top_level_0_0_reg_1_29 \L1[37].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[37]),
        .rst(rst),
        .sum(sum[37]));
  lab_3_top_level_0_0_reg_1_30 \L1[38].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[38]),
        .rst(rst),
        .sum(sum[38]));
  lab_3_top_level_0_0_reg_1_31 \L1[39].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[39]),
        .rst(rst),
        .sum(sum[39]));
  lab_3_top_level_0_0_reg_1_32 \L1[3].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[3]),
        .rst(rst),
        .sum(sum[3]));
  lab_3_top_level_0_0_reg_1_33 \L1[40].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[40]),
        .rst(rst),
        .sum(sum[40]));
  lab_3_top_level_0_0_reg_1_34 \L1[41].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[41]),
        .rst(rst),
        .sum(sum[41]));
  lab_3_top_level_0_0_reg_1_35 \L1[42].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[42]),
        .rst(rst),
        .sum(sum[42]));
  lab_3_top_level_0_0_reg_1_36 \L1[43].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[43]),
        .rst(rst),
        .sum(sum[43]));
  lab_3_top_level_0_0_reg_1_37 \L1[44].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[44]),
        .rst(rst),
        .sum(sum[44]));
  lab_3_top_level_0_0_reg_1_38 \L1[45].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[45]),
        .rst(rst),
        .sum(sum[45]));
  lab_3_top_level_0_0_reg_1_39 \L1[46].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[46]),
        .rst(rst),
        .sum(sum[46]));
  lab_3_top_level_0_0_reg_1_40 \L1[47].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[47]),
        .rst(rst),
        .sum(sum[47]));
  lab_3_top_level_0_0_reg_1_41 \L1[48].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[48]),
        .rst(rst),
        .sum(sum[48]));
  lab_3_top_level_0_0_reg_1_42 \L1[49].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[49]),
        .rst(rst),
        .sum(sum[49]));
  lab_3_top_level_0_0_reg_1_43 \L1[4].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[4]),
        .rst(rst),
        .sum(sum[4]));
  lab_3_top_level_0_0_reg_1_44 \L1[50].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[50]),
        .rst(rst),
        .sum(sum[50]));
  lab_3_top_level_0_0_reg_1_45 \L1[51].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[51]),
        .rst(rst),
        .sum(sum[51]));
  lab_3_top_level_0_0_reg_1_46 \L1[52].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[52]),
        .rst(rst),
        .sum(sum[52]));
  lab_3_top_level_0_0_reg_1_47 \L1[53].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[53]),
        .rst(rst),
        .sum(sum[53]));
  lab_3_top_level_0_0_reg_1_48 \L1[54].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[54]),
        .rst(rst),
        .sum(sum[54]));
  lab_3_top_level_0_0_reg_1_49 \L1[55].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[55]),
        .rst(rst),
        .sum(sum[55]));
  lab_3_top_level_0_0_reg_1_50 \L1[56].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[56]),
        .rst(rst),
        .sum(sum[56]));
  lab_3_top_level_0_0_reg_1_51 \L1[57].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[57]),
        .rst(rst),
        .sum(sum[57]));
  lab_3_top_level_0_0_reg_1_52 \L1[58].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[58]),
        .rst(rst),
        .sum(sum[58]));
  lab_3_top_level_0_0_reg_1_53 \L1[59].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[59]),
        .rst(rst),
        .sum(sum[59]));
  lab_3_top_level_0_0_reg_1_54 \L1[5].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[5]),
        .rst(rst),
        .sum(sum[5]));
  lab_3_top_level_0_0_reg_1_55 \L1[60].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[60]),
        .rst(rst),
        .sum(sum[60]));
  lab_3_top_level_0_0_reg_1_56 \L1[61].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[61]),
        .rst(rst),
        .sum(sum[61]));
  lab_3_top_level_0_0_reg_1_57 \L1[62].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[62]),
        .rst(rst),
        .sum(sum[62]));
  lab_3_top_level_0_0_reg_1_58 \L1[63].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[63]),
        .rst(rst),
        .sum(sum[63]));
  lab_3_top_level_0_0_reg_1_59 \L1[6].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[6]),
        .rst(rst),
        .sum(sum[6]));
  lab_3_top_level_0_0_reg_1_60 \L1[7].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[7]),
        .rst(rst),
        .sum(sum[7]));
  lab_3_top_level_0_0_reg_1_61 \L1[8].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[8]),
        .rst(rst),
        .sum(sum[8]));
  lab_3_top_level_0_0_reg_1_62 \L1[9].regs 
       (.Q(Q),
        .clk(clk),
        .product(product[9]),
        .rst(rst),
        .sum(sum[9]));
endmodule

(* ORIG_REF_NAME = "reg_64" *) 
module lab_3_top_level_0_0_reg_64_95
   (Q_reg,
    Q_reg_0,
    D,
    sum,
    E,
    Q,
    clk,
    rst,
    Q_reg_1,
    B,
    Q_reg_2,
    Q_reg_3,
    product);
  output Q_reg;
  output [30:0]Q_reg_0;
  output [30:0]D;
  output [63:0]sum;
  input [0:0]E;
  input [63:0]Q;
  input clk;
  input rst;
  input [0:0]Q_reg_1;
  input [30:0]B;
  input Q_reg_2;
  input Q_reg_3;
  input [61:0]product;

  wire [30:0]B;
  wire [30:0]D;
  wire [0:0]E;
  wire [63:0]Q;
  wire Q_reg;
  wire [30:0]Q_reg_0;
  wire [0:0]Q_reg_1;
  wire Q_reg_2;
  wire Q_reg_3;
  wire \adder/temp_c_out_11 ;
  wire \adder/temp_c_out_13 ;
  wire \adder/temp_c_out_15 ;
  wire \adder/temp_c_out_17 ;
  wire \adder/temp_c_out_19 ;
  wire \adder/temp_c_out_21 ;
  wire \adder/temp_c_out_23 ;
  wire \adder/temp_c_out_25 ;
  wire \adder/temp_c_out_27 ;
  wire \adder/temp_c_out_29 ;
  wire \adder/temp_c_out_3 ;
  wire \adder/temp_c_out_31 ;
  wire \adder/temp_c_out_33 ;
  wire \adder/temp_c_out_35 ;
  wire \adder/temp_c_out_37 ;
  wire \adder/temp_c_out_39 ;
  wire \adder/temp_c_out_41 ;
  wire \adder/temp_c_out_43 ;
  wire \adder/temp_c_out_45 ;
  wire \adder/temp_c_out_47 ;
  wire \adder/temp_c_out_49 ;
  wire \adder/temp_c_out_5 ;
  wire \adder/temp_c_out_51 ;
  wire \adder/temp_c_out_53 ;
  wire \adder/temp_c_out_55 ;
  wire \adder/temp_c_out_57 ;
  wire \adder/temp_c_out_59 ;
  wire \adder/temp_c_out_61 ;
  wire \adder/temp_c_out_62 ;
  wire \adder/temp_c_out_7 ;
  wire \adder/temp_c_out_9 ;
  wire clk;
  wire [29:0]multiplicand_d;
  wire [61:0]product;
  wire rst;
  wire [63:0]sum;

  lab_3_top_level_0_0_reg_1_96 \L1[0].regs 
       (.B(B[0]),
        .D(D[0]),
        .E(E),
        .Q(Q[0]),
        .Q_reg_0(Q_reg_1),
        .Q_reg_1(Q_reg_3),
        .clk(clk),
        .multiplicand_d(multiplicand_d[0]),
        .rst(rst),
        .sum(sum[0]));
  lab_3_top_level_0_0_reg_1_97 \L1[10].regs 
       (.B(B[10]),
        .D(D[10]),
        .E(E),
        .Q(Q[10]),
        .Q_reg_0(multiplicand_d[9]),
        .Q_reg_1(Q_reg_1),
        .clk(clk),
        .product(product[8:7]),
        .rst(rst),
        .sum(sum[10]),
        .temp_c_out_11(\adder/temp_c_out_11 ),
        .temp_c_out_9(\adder/temp_c_out_9 ));
  lab_3_top_level_0_0_reg_1_98 \L1[11].regs 
       (.B(B[11]),
        .D(D[11]),
        .E(E),
        .Q(Q[11]),
        .Q_reg_0(Q_reg_1),
        .clk(clk),
        .multiplicand_d(multiplicand_d[11]),
        .product(product[9]),
        .rst(rst),
        .sum(sum[11]),
        .temp_c_out_11(\adder/temp_c_out_11 ));
  lab_3_top_level_0_0_reg_1_99 \L1[12].regs 
       (.B(B[12]),
        .D(D[12]),
        .E(E),
        .Q(Q[12]),
        .Q_reg_0(multiplicand_d[11]),
        .Q_reg_1(Q_reg_1),
        .clk(clk),
        .product(product[10:9]),
        .rst(rst),
        .sum(sum[12]),
        .temp_c_out_11(\adder/temp_c_out_11 ),
        .temp_c_out_13(\adder/temp_c_out_13 ));
  lab_3_top_level_0_0_reg_1_100 \L1[13].regs 
       (.B(B[13]),
        .D(D[13]),
        .E(E),
        .Q(Q[13]),
        .Q_reg_0(Q_reg_1),
        .clk(clk),
        .multiplicand_d(multiplicand_d[13]),
        .product(product[11]),
        .rst(rst),
        .sum(sum[13]),
        .temp_c_out_13(\adder/temp_c_out_13 ));
  lab_3_top_level_0_0_reg_1_101 \L1[14].regs 
       (.B(B[14]),
        .D(D[14]),
        .E(E),
        .Q(Q[14]),
        .Q_reg_0(multiplicand_d[13]),
        .Q_reg_1(Q_reg_1),
        .clk(clk),
        .product(product[12:11]),
        .rst(rst),
        .sum(sum[14]),
        .temp_c_out_13(\adder/temp_c_out_13 ),
        .temp_c_out_15(\adder/temp_c_out_15 ));
  lab_3_top_level_0_0_reg_1_102 \L1[15].regs 
       (.B(B[15]),
        .D(D[15]),
        .E(E),
        .Q(Q[15]),
        .Q_reg_0(Q_reg_1),
        .clk(clk),
        .multiplicand_d(multiplicand_d[15]),
        .product(product[13]),
        .rst(rst),
        .sum(sum[15]),
        .temp_c_out_15(\adder/temp_c_out_15 ));
  lab_3_top_level_0_0_reg_1_103 \L1[16].regs 
       (.B(B[16]),
        .D(D[16]),
        .E(E),
        .Q(Q[16]),
        .Q_reg_0(multiplicand_d[15]),
        .Q_reg_1(Q_reg_1),
        .clk(clk),
        .product(product[14:13]),
        .rst(rst),
        .sum(sum[16]),
        .temp_c_out_15(\adder/temp_c_out_15 ),
        .temp_c_out_17(\adder/temp_c_out_17 ));
  lab_3_top_level_0_0_reg_1_104 \L1[17].regs 
       (.B(B[17]),
        .D(D[17]),
        .E(E),
        .Q(Q[17]),
        .Q_reg_0(Q_reg_1),
        .clk(clk),
        .multiplicand_d(multiplicand_d[17]),
        .product(product[15]),
        .rst(rst),
        .sum(sum[17]),
        .temp_c_out_17(\adder/temp_c_out_17 ));
  lab_3_top_level_0_0_reg_1_105 \L1[18].regs 
       (.B(B[18]),
        .D(D[18]),
        .E(E),
        .Q(Q[18]),
        .Q_reg_0(multiplicand_d[17]),
        .Q_reg_1(Q_reg_1),
        .clk(clk),
        .product(product[16:15]),
        .rst(rst),
        .sum(sum[18]),
        .temp_c_out_17(\adder/temp_c_out_17 ),
        .temp_c_out_19(\adder/temp_c_out_19 ));
  lab_3_top_level_0_0_reg_1_106 \L1[19].regs 
       (.B(B[19]),
        .D(D[19]),
        .E(E),
        .Q(Q[19]),
        .Q_reg_0(Q_reg_1),
        .clk(clk),
        .multiplicand_d(multiplicand_d[19]),
        .product(product[17]),
        .rst(rst),
        .sum(sum[19]),
        .temp_c_out_19(\adder/temp_c_out_19 ));
  lab_3_top_level_0_0_reg_1_107 \L1[1].regs 
       (.B(B[1]),
        .D(D[1]),
        .E(E),
        .Q(Q[1]),
        .Q_reg_0(Q_reg_1),
        .Q_reg_1(Q_reg_2),
        .Q_reg_2(Q_reg_3),
        .Q_reg_3(multiplicand_d[0]),
        .clk(clk),
        .multiplicand_d(multiplicand_d[1]),
        .rst(rst),
        .sum(sum[1]));
  lab_3_top_level_0_0_reg_1_108 \L1[20].regs 
       (.B(B[20]),
        .D(D[20]),
        .E(E),
        .Q(Q[20]),
        .Q_reg_0(multiplicand_d[19]),
        .Q_reg_1(Q_reg_1),
        .clk(clk),
        .product(product[18:17]),
        .rst(rst),
        .sum(sum[20]),
        .temp_c_out_19(\adder/temp_c_out_19 ),
        .temp_c_out_21(\adder/temp_c_out_21 ));
  lab_3_top_level_0_0_reg_1_109 \L1[21].regs 
       (.B(B[21]),
        .D(D[21]),
        .E(E),
        .Q(Q[21]),
        .Q_reg_0(Q_reg_1),
        .clk(clk),
        .multiplicand_d(multiplicand_d[21]),
        .product(product[19]),
        .rst(rst),
        .sum(sum[21]),
        .temp_c_out_21(\adder/temp_c_out_21 ));
  lab_3_top_level_0_0_reg_1_110 \L1[22].regs 
       (.B(B[22]),
        .D(D[22]),
        .E(E),
        .Q(Q[22]),
        .Q_reg_0(multiplicand_d[21]),
        .Q_reg_1(Q_reg_1),
        .clk(clk),
        .product(product[20:19]),
        .rst(rst),
        .sum(sum[22]),
        .temp_c_out_21(\adder/temp_c_out_21 ),
        .temp_c_out_23(\adder/temp_c_out_23 ));
  lab_3_top_level_0_0_reg_1_111 \L1[23].regs 
       (.B(B[23]),
        .D(D[23]),
        .E(E),
        .Q(Q[23]),
        .Q_reg_0(Q_reg_1),
        .clk(clk),
        .multiplicand_d(multiplicand_d[23]),
        .product(product[21]),
        .rst(rst),
        .sum(sum[23]),
        .temp_c_out_23(\adder/temp_c_out_23 ));
  lab_3_top_level_0_0_reg_1_112 \L1[24].regs 
       (.B(B[24]),
        .D(D[24]),
        .E(E),
        .Q(Q[24]),
        .Q_reg_0(multiplicand_d[23]),
        .Q_reg_1(Q_reg_1),
        .clk(clk),
        .product(product[22:21]),
        .rst(rst),
        .sum(sum[24]),
        .temp_c_out_23(\adder/temp_c_out_23 ),
        .temp_c_out_25(\adder/temp_c_out_25 ));
  lab_3_top_level_0_0_reg_1_113 \L1[25].regs 
       (.B(B[25]),
        .D(D[25]),
        .E(E),
        .Q(Q[25]),
        .Q_reg_0(Q_reg_1),
        .clk(clk),
        .multiplicand_d(multiplicand_d[25]),
        .product(product[23]),
        .rst(rst),
        .sum(sum[25]),
        .temp_c_out_25(\adder/temp_c_out_25 ));
  lab_3_top_level_0_0_reg_1_114 \L1[26].regs 
       (.B(B[26]),
        .D(D[26]),
        .E(E),
        .Q(Q[26]),
        .Q_reg_0(multiplicand_d[25]),
        .Q_reg_1(Q_reg_1),
        .clk(clk),
        .product(product[24:23]),
        .rst(rst),
        .sum(sum[26]),
        .temp_c_out_25(\adder/temp_c_out_25 ),
        .temp_c_out_27(\adder/temp_c_out_27 ));
  lab_3_top_level_0_0_reg_1_115 \L1[27].regs 
       (.B(B[27]),
        .D(D[27]),
        .E(E),
        .Q(Q[27]),
        .Q_reg_0(Q_reg_1),
        .clk(clk),
        .multiplicand_d(multiplicand_d[27]),
        .product(product[25]),
        .rst(rst),
        .sum(sum[27]),
        .temp_c_out_27(\adder/temp_c_out_27 ));
  lab_3_top_level_0_0_reg_1_116 \L1[28].regs 
       (.B(B[28]),
        .D(D[28]),
        .E(E),
        .Q(Q[28]),
        .Q_reg_0(multiplicand_d[27]),
        .Q_reg_1(Q_reg_1),
        .clk(clk),
        .product(product[26:25]),
        .rst(rst),
        .sum(sum[28]),
        .temp_c_out_27(\adder/temp_c_out_27 ),
        .temp_c_out_29(\adder/temp_c_out_29 ));
  lab_3_top_level_0_0_reg_1_117 \L1[29].regs 
       (.B(B[29]),
        .D(D[29]),
        .E(E),
        .Q(Q[29]),
        .Q_reg_0(Q_reg_1),
        .clk(clk),
        .multiplicand_d(multiplicand_d[29]),
        .product(product[27]),
        .rst(rst),
        .sum(sum[29]),
        .temp_c_out_29(\adder/temp_c_out_29 ));
  lab_3_top_level_0_0_reg_1_118 \L1[2].regs 
       (.B(B[2]),
        .D(D[2]),
        .E(E),
        .Q(Q[2]),
        .Q_reg_0(multiplicand_d[1:0]),
        .Q_reg_1(Q_reg_1),
        .Q_reg_2(Q_reg_2),
        .Q_reg_3(Q_reg_3),
        .clk(clk),
        .product(product[0]),
        .rst(rst),
        .sum(sum[2]),
        .temp_c_out_3(\adder/temp_c_out_3 ));
  lab_3_top_level_0_0_reg_1_119 \L1[30].regs 
       (.B(B[30]),
        .D(D[30]),
        .E(E),
        .Q(Q[30]),
        .Q_reg_0(multiplicand_d[29]),
        .Q_reg_1(Q_reg_1),
        .clk(clk),
        .product(product[28:27]),
        .rst(rst),
        .sum(sum[30]),
        .temp_c_out_29(\adder/temp_c_out_29 ),
        .temp_c_out_31(\adder/temp_c_out_31 ));
  lab_3_top_level_0_0_reg_1_120 \L1[31].regs 
       (.E(E),
        .Q(Q[31]),
        .Q_reg_0(Q_reg),
        .clk(clk),
        .product(product[29]),
        .rst(rst),
        .sum(sum[31]),
        .temp_c_out_31(\adder/temp_c_out_31 ));
  lab_3_top_level_0_0_reg_1_121 \L1[32].regs 
       (.E(E),
        .Q(Q[32]),
        .Q_reg_0(Q_reg_0[0]),
        .Q_reg_1(Q_reg),
        .clk(clk),
        .product(product[30:29]),
        .rst(rst),
        .sum(sum[32]),
        .temp_c_out_31(\adder/temp_c_out_31 ),
        .temp_c_out_33(\adder/temp_c_out_33 ));
  lab_3_top_level_0_0_reg_1_122 \L1[33].regs 
       (.E(E),
        .Q(Q[33]),
        .Q_reg_0(Q_reg_0[1]),
        .clk(clk),
        .product(product[31]),
        .rst(rst),
        .sum(sum[33]),
        .temp_c_out_33(\adder/temp_c_out_33 ));
  lab_3_top_level_0_0_reg_1_123 \L1[34].regs 
       (.E(E),
        .Q(Q[34]),
        .Q_reg_0(Q_reg_0[2]),
        .Q_reg_1(Q_reg_0[1]),
        .clk(clk),
        .product(product[32:31]),
        .rst(rst),
        .sum(sum[34]),
        .temp_c_out_33(\adder/temp_c_out_33 ),
        .temp_c_out_35(\adder/temp_c_out_35 ));
  lab_3_top_level_0_0_reg_1_124 \L1[35].regs 
       (.E(E),
        .Q(Q[35]),
        .Q_reg_0(Q_reg_0[3]),
        .clk(clk),
        .product(product[33]),
        .rst(rst),
        .sum(sum[35]),
        .temp_c_out_35(\adder/temp_c_out_35 ));
  lab_3_top_level_0_0_reg_1_125 \L1[36].regs 
       (.E(E),
        .Q(Q[36]),
        .Q_reg_0(Q_reg_0[4]),
        .Q_reg_1(Q_reg_0[3]),
        .clk(clk),
        .product(product[34:33]),
        .rst(rst),
        .sum(sum[36]),
        .temp_c_out_35(\adder/temp_c_out_35 ),
        .temp_c_out_37(\adder/temp_c_out_37 ));
  lab_3_top_level_0_0_reg_1_126 \L1[37].regs 
       (.E(E),
        .Q(Q[37]),
        .Q_reg_0(Q_reg_0[5]),
        .clk(clk),
        .product(product[35]),
        .rst(rst),
        .sum(sum[37]),
        .temp_c_out_37(\adder/temp_c_out_37 ));
  lab_3_top_level_0_0_reg_1_127 \L1[38].regs 
       (.E(E),
        .Q(Q[38]),
        .Q_reg_0(Q_reg_0[6]),
        .Q_reg_1(Q_reg_0[5]),
        .clk(clk),
        .product(product[36:35]),
        .rst(rst),
        .sum(sum[38]),
        .temp_c_out_37(\adder/temp_c_out_37 ),
        .temp_c_out_39(\adder/temp_c_out_39 ));
  lab_3_top_level_0_0_reg_1_128 \L1[39].regs 
       (.E(E),
        .Q(Q[39]),
        .Q_reg_0(Q_reg_0[7]),
        .clk(clk),
        .product(product[37]),
        .rst(rst),
        .sum(sum[39]),
        .temp_c_out_39(\adder/temp_c_out_39 ));
  lab_3_top_level_0_0_reg_1_129 \L1[3].regs 
       (.B(B[3]),
        .D(D[3]),
        .E(E),
        .Q(Q[3]),
        .Q_reg_0(Q_reg_1),
        .clk(clk),
        .multiplicand_d(multiplicand_d[3]),
        .product(product[1]),
        .rst(rst),
        .sum(sum[3]),
        .temp_c_out_3(\adder/temp_c_out_3 ));
  lab_3_top_level_0_0_reg_1_130 \L1[40].regs 
       (.E(E),
        .Q(Q[40]),
        .Q_reg_0(Q_reg_0[8]),
        .Q_reg_1(Q_reg_0[7]),
        .clk(clk),
        .product(product[38:37]),
        .rst(rst),
        .sum(sum[40]),
        .temp_c_out_39(\adder/temp_c_out_39 ),
        .temp_c_out_41(\adder/temp_c_out_41 ));
  lab_3_top_level_0_0_reg_1_131 \L1[41].regs 
       (.E(E),
        .Q(Q[41]),
        .Q_reg_0(Q_reg_0[9]),
        .clk(clk),
        .product(product[39]),
        .rst(rst),
        .sum(sum[41]),
        .temp_c_out_41(\adder/temp_c_out_41 ));
  lab_3_top_level_0_0_reg_1_132 \L1[42].regs 
       (.E(E),
        .Q(Q[42]),
        .Q_reg_0(Q_reg_0[10]),
        .Q_reg_1(Q_reg_0[9]),
        .clk(clk),
        .product(product[40:39]),
        .rst(rst),
        .sum(sum[42]),
        .temp_c_out_41(\adder/temp_c_out_41 ),
        .temp_c_out_43(\adder/temp_c_out_43 ));
  lab_3_top_level_0_0_reg_1_133 \L1[43].regs 
       (.E(E),
        .Q(Q[43]),
        .Q_reg_0(Q_reg_0[11]),
        .clk(clk),
        .product(product[41]),
        .rst(rst),
        .sum(sum[43]),
        .temp_c_out_43(\adder/temp_c_out_43 ));
  lab_3_top_level_0_0_reg_1_134 \L1[44].regs 
       (.E(E),
        .Q(Q[44]),
        .Q_reg_0(Q_reg_0[12]),
        .Q_reg_1(Q_reg_0[11]),
        .clk(clk),
        .product(product[42:41]),
        .rst(rst),
        .sum(sum[44]),
        .temp_c_out_43(\adder/temp_c_out_43 ),
        .temp_c_out_45(\adder/temp_c_out_45 ));
  lab_3_top_level_0_0_reg_1_135 \L1[45].regs 
       (.E(E),
        .Q(Q[45]),
        .Q_reg_0(Q_reg_0[13]),
        .clk(clk),
        .product(product[43]),
        .rst(rst),
        .sum(sum[45]),
        .temp_c_out_45(\adder/temp_c_out_45 ));
  lab_3_top_level_0_0_reg_1_136 \L1[46].regs 
       (.E(E),
        .Q(Q[46]),
        .Q_reg_0(Q_reg_0[14]),
        .Q_reg_1(Q_reg_0[13]),
        .clk(clk),
        .product(product[44:43]),
        .rst(rst),
        .sum(sum[46]),
        .temp_c_out_45(\adder/temp_c_out_45 ),
        .temp_c_out_47(\adder/temp_c_out_47 ));
  lab_3_top_level_0_0_reg_1_137 \L1[47].regs 
       (.E(E),
        .Q(Q[47]),
        .Q_reg_0(Q_reg_0[15]),
        .clk(clk),
        .product(product[45]),
        .rst(rst),
        .sum(sum[47]),
        .temp_c_out_47(\adder/temp_c_out_47 ));
  lab_3_top_level_0_0_reg_1_138 \L1[48].regs 
       (.E(E),
        .Q(Q[48]),
        .Q_reg_0(Q_reg_0[16]),
        .Q_reg_1(Q_reg_0[15]),
        .clk(clk),
        .product(product[46:45]),
        .rst(rst),
        .sum(sum[48]),
        .temp_c_out_47(\adder/temp_c_out_47 ),
        .temp_c_out_49(\adder/temp_c_out_49 ));
  lab_3_top_level_0_0_reg_1_139 \L1[49].regs 
       (.E(E),
        .Q(Q[49]),
        .Q_reg_0(Q_reg_0[17]),
        .clk(clk),
        .product(product[47]),
        .rst(rst),
        .sum(sum[49]),
        .temp_c_out_49(\adder/temp_c_out_49 ));
  lab_3_top_level_0_0_reg_1_140 \L1[4].regs 
       (.B(B[4]),
        .D(D[4]),
        .E(E),
        .Q(Q[4]),
        .Q_reg_0(multiplicand_d[3]),
        .Q_reg_1(Q_reg_1),
        .clk(clk),
        .product(product[2:1]),
        .rst(rst),
        .sum(sum[4]),
        .temp_c_out_3(\adder/temp_c_out_3 ),
        .temp_c_out_5(\adder/temp_c_out_5 ));
  lab_3_top_level_0_0_reg_1_141 \L1[50].regs 
       (.E(E),
        .Q(Q[50]),
        .Q_reg_0(Q_reg_0[18]),
        .Q_reg_1(Q_reg_0[17]),
        .clk(clk),
        .product(product[48:47]),
        .rst(rst),
        .sum(sum[50]),
        .temp_c_out_49(\adder/temp_c_out_49 ),
        .temp_c_out_51(\adder/temp_c_out_51 ));
  lab_3_top_level_0_0_reg_1_142 \L1[51].regs 
       (.E(E),
        .Q(Q[51]),
        .Q_reg_0(Q_reg_0[19]),
        .clk(clk),
        .product(product[49]),
        .rst(rst),
        .sum(sum[51]),
        .temp_c_out_51(\adder/temp_c_out_51 ));
  lab_3_top_level_0_0_reg_1_143 \L1[52].regs 
       (.E(E),
        .Q(Q[52]),
        .Q_reg_0(Q_reg_0[20]),
        .Q_reg_1(Q_reg_0[19]),
        .clk(clk),
        .product(product[50:49]),
        .rst(rst),
        .sum(sum[52]),
        .temp_c_out_51(\adder/temp_c_out_51 ),
        .temp_c_out_53(\adder/temp_c_out_53 ));
  lab_3_top_level_0_0_reg_1_144 \L1[53].regs 
       (.E(E),
        .Q(Q[53]),
        .Q_reg_0(Q_reg_0[21]),
        .clk(clk),
        .product(product[51]),
        .rst(rst),
        .sum(sum[53]),
        .temp_c_out_53(\adder/temp_c_out_53 ));
  lab_3_top_level_0_0_reg_1_145 \L1[54].regs 
       (.E(E),
        .Q(Q[54]),
        .Q_reg_0(Q_reg_0[22]),
        .Q_reg_1(Q_reg_0[21]),
        .clk(clk),
        .product(product[52:51]),
        .rst(rst),
        .sum(sum[54]),
        .temp_c_out_53(\adder/temp_c_out_53 ),
        .temp_c_out_55(\adder/temp_c_out_55 ));
  lab_3_top_level_0_0_reg_1_146 \L1[55].regs 
       (.E(E),
        .Q(Q[55]),
        .Q_reg_0(Q_reg_0[23]),
        .clk(clk),
        .product(product[53]),
        .rst(rst),
        .sum(sum[55]),
        .temp_c_out_55(\adder/temp_c_out_55 ));
  lab_3_top_level_0_0_reg_1_147 \L1[56].regs 
       (.E(E),
        .Q(Q[56]),
        .Q_reg_0(Q_reg_0[24]),
        .Q_reg_1(Q_reg_0[23]),
        .clk(clk),
        .product(product[54:53]),
        .rst(rst),
        .sum(sum[56]),
        .temp_c_out_55(\adder/temp_c_out_55 ),
        .temp_c_out_57(\adder/temp_c_out_57 ));
  lab_3_top_level_0_0_reg_1_148 \L1[57].regs 
       (.E(E),
        .Q(Q[57]),
        .Q_reg_0(Q_reg_0[25]),
        .clk(clk),
        .product(product[55]),
        .rst(rst),
        .sum(sum[57]),
        .temp_c_out_57(\adder/temp_c_out_57 ));
  lab_3_top_level_0_0_reg_1_149 \L1[58].regs 
       (.E(E),
        .Q(Q[58]),
        .Q_reg_0(Q_reg_0[26]),
        .Q_reg_1(Q_reg_0[25]),
        .clk(clk),
        .product(product[56:55]),
        .rst(rst),
        .sum(sum[58]),
        .temp_c_out_57(\adder/temp_c_out_57 ),
        .temp_c_out_59(\adder/temp_c_out_59 ));
  lab_3_top_level_0_0_reg_1_150 \L1[59].regs 
       (.E(E),
        .Q(Q[59]),
        .Q_reg_0(Q_reg_0[27]),
        .clk(clk),
        .product(product[57]),
        .rst(rst),
        .sum(sum[59]),
        .temp_c_out_59(\adder/temp_c_out_59 ));
  lab_3_top_level_0_0_reg_1_151 \L1[5].regs 
       (.B(B[5]),
        .D(D[5]),
        .E(E),
        .Q(Q[5]),
        .Q_reg_0(Q_reg_1),
        .clk(clk),
        .multiplicand_d(multiplicand_d[5]),
        .product(product[3]),
        .rst(rst),
        .sum(sum[5]),
        .temp_c_out_5(\adder/temp_c_out_5 ));
  lab_3_top_level_0_0_reg_1_152 \L1[60].regs 
       (.E(E),
        .Q(Q[60]),
        .Q_reg_0(Q_reg_0[28]),
        .Q_reg_1(Q_reg_0[27]),
        .clk(clk),
        .product(product[58:57]),
        .rst(rst),
        .sum(sum[60]),
        .temp_c_out_59(\adder/temp_c_out_59 ),
        .temp_c_out_61(\adder/temp_c_out_61 ));
  lab_3_top_level_0_0_reg_1_153 \L1[61].regs 
       (.E(E),
        .Q(Q[61]),
        .Q_reg_0(Q_reg_0[29]),
        .clk(clk),
        .product(product[59]),
        .rst(rst),
        .sum(sum[61]),
        .temp_c_out_61(\adder/temp_c_out_61 ),
        .temp_c_out_62(\adder/temp_c_out_62 ));
  lab_3_top_level_0_0_reg_1_154 \L1[62].regs 
       (.E(E),
        .Q(Q[62]),
        .Q_reg_0(Q_reg_0[30]),
        .Q_reg_1(Q_reg_0[29]),
        .clk(clk),
        .product(product[60:59]),
        .rst(rst),
        .sum(sum[62]),
        .temp_c_out_61(\adder/temp_c_out_61 ));
  lab_3_top_level_0_0_reg_1_155 \L1[63].regs 
       (.E(E),
        .Q(Q[63]),
        .Q_reg_0(Q_reg_0[30]),
        .clk(clk),
        .product(product[61:60]),
        .rst(rst),
        .sum(sum[63]),
        .temp_c_out_62(\adder/temp_c_out_62 ));
  lab_3_top_level_0_0_reg_1_156 \L1[6].regs 
       (.B(B[6]),
        .D(D[6]),
        .E(E),
        .Q(Q[6]),
        .Q_reg_0(multiplicand_d[5]),
        .Q_reg_1(Q_reg_1),
        .clk(clk),
        .product(product[4:3]),
        .rst(rst),
        .sum(sum[6]),
        .temp_c_out_5(\adder/temp_c_out_5 ),
        .temp_c_out_7(\adder/temp_c_out_7 ));
  lab_3_top_level_0_0_reg_1_157 \L1[7].regs 
       (.B(B[7]),
        .D(D[7]),
        .E(E),
        .Q(Q[7]),
        .Q_reg_0(Q_reg_1),
        .clk(clk),
        .multiplicand_d(multiplicand_d[7]),
        .product(product[5]),
        .rst(rst),
        .sum(sum[7]),
        .temp_c_out_7(\adder/temp_c_out_7 ));
  lab_3_top_level_0_0_reg_1_158 \L1[8].regs 
       (.B(B[8]),
        .D(D[8]),
        .E(E),
        .Q(Q[8]),
        .Q_reg_0(multiplicand_d[7]),
        .Q_reg_1(Q_reg_1),
        .clk(clk),
        .product(product[6:5]),
        .rst(rst),
        .sum(sum[8]),
        .temp_c_out_7(\adder/temp_c_out_7 ),
        .temp_c_out_9(\adder/temp_c_out_9 ));
  lab_3_top_level_0_0_reg_1_159 \L1[9].regs 
       (.B(B[9]),
        .D(D[9]),
        .E(E),
        .Q(Q[9]),
        .Q_reg_0(multiplicand_d[9]),
        .Q_reg_1(Q_reg_1),
        .clk(clk),
        .product(product[7]),
        .rst(rst),
        .sum(sum[9]),
        .temp_c_out_9(\adder/temp_c_out_9 ));
endmodule

(* ORIG_REF_NAME = "shift_multiplicand" *) 
module lab_3_top_level_0_0_shift_multiplicand
   (Q_reg,
    sum,
    E,
    clk,
    rst,
    Q,
    B,
    Q_reg_0,
    Q_reg_1,
    product,
    D);
  output [31:0]Q_reg;
  output [63:0]sum;
  input [0:0]E;
  input clk;
  input rst;
  input [0:0]Q;
  input [30:0]B;
  input Q_reg_0;
  input Q_reg_1;
  input [61:0]product;
  input [32:0]D;

  wire [30:0]B;
  wire [32:0]D;
  wire [63:0]D_0;
  wire [0:0]E;
  wire [0:0]Q;
  wire [31:0]Q_reg;
  wire Q_reg_0;
  wire Q_reg_1;
  wire clk;
  wire [61:0]product;
  wire rst;
  wire sample_reg_n_32;
  wire sample_reg_n_33;
  wire sample_reg_n_34;
  wire sample_reg_n_35;
  wire sample_reg_n_36;
  wire sample_reg_n_37;
  wire sample_reg_n_38;
  wire sample_reg_n_39;
  wire sample_reg_n_40;
  wire sample_reg_n_41;
  wire sample_reg_n_42;
  wire sample_reg_n_43;
  wire sample_reg_n_44;
  wire sample_reg_n_45;
  wire sample_reg_n_46;
  wire sample_reg_n_47;
  wire sample_reg_n_48;
  wire sample_reg_n_49;
  wire sample_reg_n_50;
  wire sample_reg_n_51;
  wire sample_reg_n_52;
  wire sample_reg_n_53;
  wire sample_reg_n_54;
  wire sample_reg_n_55;
  wire sample_reg_n_56;
  wire sample_reg_n_57;
  wire sample_reg_n_58;
  wire sample_reg_n_59;
  wire sample_reg_n_60;
  wire sample_reg_n_61;
  wire sample_reg_n_62;
  wire [63:0]sum;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[0] 
       (.CLR(1'b0),
        .D(D[0]),
        .G(E),
        .GE(1'b1),
        .Q(D_0[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[10] 
       (.CLR(1'b0),
        .D(sample_reg_n_53),
        .G(E),
        .GE(1'b1),
        .Q(D_0[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[11] 
       (.CLR(1'b0),
        .D(sample_reg_n_52),
        .G(E),
        .GE(1'b1),
        .Q(D_0[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[12] 
       (.CLR(1'b0),
        .D(sample_reg_n_51),
        .G(E),
        .GE(1'b1),
        .Q(D_0[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[13] 
       (.CLR(1'b0),
        .D(sample_reg_n_50),
        .G(E),
        .GE(1'b1),
        .Q(D_0[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[14] 
       (.CLR(1'b0),
        .D(sample_reg_n_49),
        .G(E),
        .GE(1'b1),
        .Q(D_0[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[15] 
       (.CLR(1'b0),
        .D(sample_reg_n_48),
        .G(E),
        .GE(1'b1),
        .Q(D_0[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[16] 
       (.CLR(1'b0),
        .D(sample_reg_n_47),
        .G(E),
        .GE(1'b1),
        .Q(D_0[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[17] 
       (.CLR(1'b0),
        .D(sample_reg_n_46),
        .G(E),
        .GE(1'b1),
        .Q(D_0[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[18] 
       (.CLR(1'b0),
        .D(sample_reg_n_45),
        .G(E),
        .GE(1'b1),
        .Q(D_0[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[19] 
       (.CLR(1'b0),
        .D(sample_reg_n_44),
        .G(E),
        .GE(1'b1),
        .Q(D_0[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[1] 
       (.CLR(1'b0),
        .D(sample_reg_n_62),
        .G(E),
        .GE(1'b1),
        .Q(D_0[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[20] 
       (.CLR(1'b0),
        .D(sample_reg_n_43),
        .G(E),
        .GE(1'b1),
        .Q(D_0[20]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[21] 
       (.CLR(1'b0),
        .D(sample_reg_n_42),
        .G(E),
        .GE(1'b1),
        .Q(D_0[21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[22] 
       (.CLR(1'b0),
        .D(sample_reg_n_41),
        .G(E),
        .GE(1'b1),
        .Q(D_0[22]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[23] 
       (.CLR(1'b0),
        .D(sample_reg_n_40),
        .G(E),
        .GE(1'b1),
        .Q(D_0[23]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[24] 
       (.CLR(1'b0),
        .D(sample_reg_n_39),
        .G(E),
        .GE(1'b1),
        .Q(D_0[24]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[25] 
       (.CLR(1'b0),
        .D(sample_reg_n_38),
        .G(E),
        .GE(1'b1),
        .Q(D_0[25]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[26] 
       (.CLR(1'b0),
        .D(sample_reg_n_37),
        .G(E),
        .GE(1'b1),
        .Q(D_0[26]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[27] 
       (.CLR(1'b0),
        .D(sample_reg_n_36),
        .G(E),
        .GE(1'b1),
        .Q(D_0[27]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[28] 
       (.CLR(1'b0),
        .D(sample_reg_n_35),
        .G(E),
        .GE(1'b1),
        .Q(D_0[28]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[29] 
       (.CLR(1'b0),
        .D(sample_reg_n_34),
        .G(E),
        .GE(1'b1),
        .Q(D_0[29]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[2] 
       (.CLR(1'b0),
        .D(sample_reg_n_61),
        .G(E),
        .GE(1'b1),
        .Q(D_0[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[30] 
       (.CLR(1'b0),
        .D(sample_reg_n_33),
        .G(E),
        .GE(1'b1),
        .Q(D_0[30]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[31] 
       (.CLR(1'b0),
        .D(sample_reg_n_32),
        .G(E),
        .GE(1'b1),
        .Q(D_0[31]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[32] 
       (.CLR(1'b0),
        .D(D[1]),
        .G(E),
        .GE(1'b1),
        .Q(D_0[32]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[33] 
       (.CLR(1'b0),
        .D(D[2]),
        .G(E),
        .GE(1'b1),
        .Q(D_0[33]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[34] 
       (.CLR(1'b0),
        .D(D[3]),
        .G(E),
        .GE(1'b1),
        .Q(D_0[34]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[35] 
       (.CLR(1'b0),
        .D(D[4]),
        .G(E),
        .GE(1'b1),
        .Q(D_0[35]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[36] 
       (.CLR(1'b0),
        .D(D[5]),
        .G(E),
        .GE(1'b1),
        .Q(D_0[36]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[37] 
       (.CLR(1'b0),
        .D(D[6]),
        .G(E),
        .GE(1'b1),
        .Q(D_0[37]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[38] 
       (.CLR(1'b0),
        .D(D[7]),
        .G(E),
        .GE(1'b1),
        .Q(D_0[38]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[39] 
       (.CLR(1'b0),
        .D(D[8]),
        .G(E),
        .GE(1'b1),
        .Q(D_0[39]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[3] 
       (.CLR(1'b0),
        .D(sample_reg_n_60),
        .G(E),
        .GE(1'b1),
        .Q(D_0[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[40] 
       (.CLR(1'b0),
        .D(D[9]),
        .G(E),
        .GE(1'b1),
        .Q(D_0[40]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[41] 
       (.CLR(1'b0),
        .D(D[10]),
        .G(E),
        .GE(1'b1),
        .Q(D_0[41]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[42] 
       (.CLR(1'b0),
        .D(D[11]),
        .G(E),
        .GE(1'b1),
        .Q(D_0[42]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[43] 
       (.CLR(1'b0),
        .D(D[12]),
        .G(E),
        .GE(1'b1),
        .Q(D_0[43]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[44] 
       (.CLR(1'b0),
        .D(D[13]),
        .G(E),
        .GE(1'b1),
        .Q(D_0[44]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[45] 
       (.CLR(1'b0),
        .D(D[14]),
        .G(E),
        .GE(1'b1),
        .Q(D_0[45]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[46] 
       (.CLR(1'b0),
        .D(D[15]),
        .G(E),
        .GE(1'b1),
        .Q(D_0[46]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[47] 
       (.CLR(1'b0),
        .D(D[16]),
        .G(E),
        .GE(1'b1),
        .Q(D_0[47]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[48] 
       (.CLR(1'b0),
        .D(D[17]),
        .G(E),
        .GE(1'b1),
        .Q(D_0[48]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[49] 
       (.CLR(1'b0),
        .D(D[18]),
        .G(E),
        .GE(1'b1),
        .Q(D_0[49]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[4] 
       (.CLR(1'b0),
        .D(sample_reg_n_59),
        .G(E),
        .GE(1'b1),
        .Q(D_0[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[50] 
       (.CLR(1'b0),
        .D(D[19]),
        .G(E),
        .GE(1'b1),
        .Q(D_0[50]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[51] 
       (.CLR(1'b0),
        .D(D[20]),
        .G(E),
        .GE(1'b1),
        .Q(D_0[51]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[52] 
       (.CLR(1'b0),
        .D(D[21]),
        .G(E),
        .GE(1'b1),
        .Q(D_0[52]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[53] 
       (.CLR(1'b0),
        .D(D[22]),
        .G(E),
        .GE(1'b1),
        .Q(D_0[53]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[54] 
       (.CLR(1'b0),
        .D(D[23]),
        .G(E),
        .GE(1'b1),
        .Q(D_0[54]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[55] 
       (.CLR(1'b0),
        .D(D[24]),
        .G(E),
        .GE(1'b1),
        .Q(D_0[55]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[56] 
       (.CLR(1'b0),
        .D(D[25]),
        .G(E),
        .GE(1'b1),
        .Q(D_0[56]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[57] 
       (.CLR(1'b0),
        .D(D[26]),
        .G(E),
        .GE(1'b1),
        .Q(D_0[57]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[58] 
       (.CLR(1'b0),
        .D(D[27]),
        .G(E),
        .GE(1'b1),
        .Q(D_0[58]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[59] 
       (.CLR(1'b0),
        .D(D[28]),
        .G(E),
        .GE(1'b1),
        .Q(D_0[59]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[5] 
       (.CLR(1'b0),
        .D(sample_reg_n_58),
        .G(E),
        .GE(1'b1),
        .Q(D_0[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[60] 
       (.CLR(1'b0),
        .D(D[29]),
        .G(E),
        .GE(1'b1),
        .Q(D_0[60]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[61] 
       (.CLR(1'b0),
        .D(D[30]),
        .G(E),
        .GE(1'b1),
        .Q(D_0[61]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[62] 
       (.CLR(1'b0),
        .D(D[31]),
        .G(E),
        .GE(1'b1),
        .Q(D_0[62]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[63] 
       (.CLR(1'b0),
        .D(D[32]),
        .G(E),
        .GE(1'b1),
        .Q(D_0[63]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[6] 
       (.CLR(1'b0),
        .D(sample_reg_n_57),
        .G(E),
        .GE(1'b1),
        .Q(D_0[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[7] 
       (.CLR(1'b0),
        .D(sample_reg_n_56),
        .G(E),
        .GE(1'b1),
        .Q(D_0[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[8] 
       (.CLR(1'b0),
        .D(sample_reg_n_55),
        .G(E),
        .GE(1'b1),
        .Q(D_0[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[9] 
       (.CLR(1'b0),
        .D(sample_reg_n_54),
        .G(E),
        .GE(1'b1),
        .Q(D_0[9]));
  lab_3_top_level_0_0_reg_64_95 sample_reg
       (.B(B),
        .D({sample_reg_n_32,sample_reg_n_33,sample_reg_n_34,sample_reg_n_35,sample_reg_n_36,sample_reg_n_37,sample_reg_n_38,sample_reg_n_39,sample_reg_n_40,sample_reg_n_41,sample_reg_n_42,sample_reg_n_43,sample_reg_n_44,sample_reg_n_45,sample_reg_n_46,sample_reg_n_47,sample_reg_n_48,sample_reg_n_49,sample_reg_n_50,sample_reg_n_51,sample_reg_n_52,sample_reg_n_53,sample_reg_n_54,sample_reg_n_55,sample_reg_n_56,sample_reg_n_57,sample_reg_n_58,sample_reg_n_59,sample_reg_n_60,sample_reg_n_61,sample_reg_n_62}),
        .E(E),
        .Q(D_0),
        .Q_reg(Q_reg[0]),
        .Q_reg_0(Q_reg[31:1]),
        .Q_reg_1(Q),
        .Q_reg_2(Q_reg_0),
        .Q_reg_3(Q_reg_1),
        .clk(clk),
        .product(product),
        .rst(rst),
        .sum(sum));
endmodule

(* ORIG_REF_NAME = "shift_multiplier" *) 
module lab_3_top_level_0_0_shift_multiplier
   (multiplier_d,
    E,
    clk,
    rst,
    Q,
    A,
    D);
  output [0:0]multiplier_d;
  input [0:0]E;
  input clk;
  input rst;
  input [0:0]Q;
  input [30:0]A;
  input [0:0]D;

  wire [30:0]A;
  wire [0:0]D;
  wire [31:0]D_0;
  wire [0:0]E;
  wire [0:0]Q;
  wire clk;
  wire [0:0]multiplier_d;
  wire rst;
  wire sample_reg_n_1;
  wire sample_reg_n_10;
  wire sample_reg_n_11;
  wire sample_reg_n_12;
  wire sample_reg_n_13;
  wire sample_reg_n_14;
  wire sample_reg_n_15;
  wire sample_reg_n_16;
  wire sample_reg_n_17;
  wire sample_reg_n_18;
  wire sample_reg_n_19;
  wire sample_reg_n_2;
  wire sample_reg_n_20;
  wire sample_reg_n_21;
  wire sample_reg_n_22;
  wire sample_reg_n_23;
  wire sample_reg_n_24;
  wire sample_reg_n_25;
  wire sample_reg_n_26;
  wire sample_reg_n_27;
  wire sample_reg_n_28;
  wire sample_reg_n_29;
  wire sample_reg_n_3;
  wire sample_reg_n_30;
  wire sample_reg_n_31;
  wire sample_reg_n_4;
  wire sample_reg_n_5;
  wire sample_reg_n_6;
  wire sample_reg_n_7;
  wire sample_reg_n_8;
  wire sample_reg_n_9;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[0] 
       (.CLR(1'b0),
        .D(sample_reg_n_31),
        .G(E),
        .GE(1'b1),
        .Q(D_0[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[10] 
       (.CLR(1'b0),
        .D(sample_reg_n_21),
        .G(E),
        .GE(1'b1),
        .Q(D_0[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[11] 
       (.CLR(1'b0),
        .D(sample_reg_n_20),
        .G(E),
        .GE(1'b1),
        .Q(D_0[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[12] 
       (.CLR(1'b0),
        .D(sample_reg_n_19),
        .G(E),
        .GE(1'b1),
        .Q(D_0[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[13] 
       (.CLR(1'b0),
        .D(sample_reg_n_18),
        .G(E),
        .GE(1'b1),
        .Q(D_0[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[14] 
       (.CLR(1'b0),
        .D(sample_reg_n_17),
        .G(E),
        .GE(1'b1),
        .Q(D_0[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[15] 
       (.CLR(1'b0),
        .D(sample_reg_n_16),
        .G(E),
        .GE(1'b1),
        .Q(D_0[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[16] 
       (.CLR(1'b0),
        .D(sample_reg_n_15),
        .G(E),
        .GE(1'b1),
        .Q(D_0[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[17] 
       (.CLR(1'b0),
        .D(sample_reg_n_14),
        .G(E),
        .GE(1'b1),
        .Q(D_0[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[18] 
       (.CLR(1'b0),
        .D(sample_reg_n_13),
        .G(E),
        .GE(1'b1),
        .Q(D_0[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[19] 
       (.CLR(1'b0),
        .D(sample_reg_n_12),
        .G(E),
        .GE(1'b1),
        .Q(D_0[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[1] 
       (.CLR(1'b0),
        .D(sample_reg_n_30),
        .G(E),
        .GE(1'b1),
        .Q(D_0[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[20] 
       (.CLR(1'b0),
        .D(sample_reg_n_11),
        .G(E),
        .GE(1'b1),
        .Q(D_0[20]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[21] 
       (.CLR(1'b0),
        .D(sample_reg_n_10),
        .G(E),
        .GE(1'b1),
        .Q(D_0[21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[22] 
       (.CLR(1'b0),
        .D(sample_reg_n_9),
        .G(E),
        .GE(1'b1),
        .Q(D_0[22]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[23] 
       (.CLR(1'b0),
        .D(sample_reg_n_8),
        .G(E),
        .GE(1'b1),
        .Q(D_0[23]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[24] 
       (.CLR(1'b0),
        .D(sample_reg_n_7),
        .G(E),
        .GE(1'b1),
        .Q(D_0[24]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[25] 
       (.CLR(1'b0),
        .D(sample_reg_n_6),
        .G(E),
        .GE(1'b1),
        .Q(D_0[25]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[26] 
       (.CLR(1'b0),
        .D(sample_reg_n_5),
        .G(E),
        .GE(1'b1),
        .Q(D_0[26]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[27] 
       (.CLR(1'b0),
        .D(sample_reg_n_4),
        .G(E),
        .GE(1'b1),
        .Q(D_0[27]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[28] 
       (.CLR(1'b0),
        .D(sample_reg_n_3),
        .G(E),
        .GE(1'b1),
        .Q(D_0[28]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[29] 
       (.CLR(1'b0),
        .D(sample_reg_n_2),
        .G(E),
        .GE(1'b1),
        .Q(D_0[29]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[2] 
       (.CLR(1'b0),
        .D(sample_reg_n_29),
        .G(E),
        .GE(1'b1),
        .Q(D_0[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[30] 
       (.CLR(1'b0),
        .D(sample_reg_n_1),
        .G(E),
        .GE(1'b1),
        .Q(D_0[30]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[31] 
       (.CLR(1'b0),
        .D(D),
        .G(E),
        .GE(1'b1),
        .Q(D_0[31]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[3] 
       (.CLR(1'b0),
        .D(sample_reg_n_28),
        .G(E),
        .GE(1'b1),
        .Q(D_0[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[4] 
       (.CLR(1'b0),
        .D(sample_reg_n_27),
        .G(E),
        .GE(1'b1),
        .Q(D_0[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[5] 
       (.CLR(1'b0),
        .D(sample_reg_n_26),
        .G(E),
        .GE(1'b1),
        .Q(D_0[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[6] 
       (.CLR(1'b0),
        .D(sample_reg_n_25),
        .G(E),
        .GE(1'b1),
        .Q(D_0[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[7] 
       (.CLR(1'b0),
        .D(sample_reg_n_24),
        .G(E),
        .GE(1'b1),
        .Q(D_0[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[8] 
       (.CLR(1'b0),
        .D(sample_reg_n_23),
        .G(E),
        .GE(1'b1),
        .Q(D_0[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \D_reg[9] 
       (.CLR(1'b0),
        .D(sample_reg_n_22),
        .G(E),
        .GE(1'b1),
        .Q(D_0[9]));
  lab_3_top_level_0_0_reg_32 sample_reg
       (.A(A),
        .D({sample_reg_n_1,sample_reg_n_2,sample_reg_n_3,sample_reg_n_4,sample_reg_n_5,sample_reg_n_6,sample_reg_n_7,sample_reg_n_8,sample_reg_n_9,sample_reg_n_10,sample_reg_n_11,sample_reg_n_12,sample_reg_n_13,sample_reg_n_14,sample_reg_n_15,sample_reg_n_16,sample_reg_n_17,sample_reg_n_18,sample_reg_n_19,sample_reg_n_20,sample_reg_n_21,sample_reg_n_22,sample_reg_n_23,sample_reg_n_24,sample_reg_n_25,sample_reg_n_26,sample_reg_n_27,sample_reg_n_28,sample_reg_n_29,sample_reg_n_30,sample_reg_n_31}),
        .E(E),
        .Q(D_0),
        .Q_reg(Q),
        .clk(clk),
        .multiplier_d(multiplier_d),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "top_level" *) 
module lab_3_top_level_0_0_top_level
   (done,
    product,
    rst,
    clk,
    B,
    A);
  output done;
  output [63:0]product;
  input rst;
  input clk;
  input [31:0]B;
  input [31:0]A;

  wire [31:0]A;
  wire [31:0]B;
  wire clk;
  wire done;
  wire [63:0]product;
  wire rst;

  lab_3_top_level_0_0_mult mul
       (.A(A),
        .B(B),
        .Q(done),
        .clk(clk),
        .product(product),
        .rst(rst));
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
