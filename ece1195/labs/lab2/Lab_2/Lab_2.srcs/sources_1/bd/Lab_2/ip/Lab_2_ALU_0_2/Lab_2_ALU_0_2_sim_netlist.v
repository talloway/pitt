// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Feb 16 20:01:20 2021
// Host        : DESKTOP-9AE4DJD running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/ece1195/labs/lab2/Lab_2/Lab_2.srcs/sources_1/bd/Lab_2/ip/Lab_2_ALU_0_2/Lab_2_ALU_0_2_sim_netlist.v
// Design      : Lab_2_ALU_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Lab_2_ALU_0_2,ALU,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "ALU,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module Lab_2_ALU_0_2
   (A,
    B,
    SHAMT,
    ALUOp,
    R,
    Overflow,
    Zero);
  input [31:0]A;
  input [31:0]B;
  input [4:0]SHAMT;
  input [3:0]ALUOp;
  output [31:0]R;
  output Overflow;
  output Zero;

  wire [31:0]A;
  wire [3:0]ALUOp;
  wire [31:0]ArithR;
  wire [31:0]B;
  wire [0:0]CompR;
  wire [31:2]L_1;
  wire [23:4]L_2;
  wire [31:8]L_3;
  wire [23:16]L_4;
  wire Overflow;
  wire [31:0]R;
  wire \R[0]_INST_0_i_3_n_0 ;
  wire \R[0]_INST_0_i_5_n_0 ;
  wire \R[10]_INST_0_i_1_n_0 ;
  wire \R[10]_INST_0_i_2_n_0 ;
  wire \R[11]_INST_0_i_1_n_0 ;
  wire \R[11]_INST_0_i_2_n_0 ;
  wire \R[12]_INST_0_i_1_n_0 ;
  wire \R[12]_INST_0_i_2_n_0 ;
  wire \R[13]_INST_0_i_1_n_0 ;
  wire \R[13]_INST_0_i_2_n_0 ;
  wire \R[14]_INST_0_i_1_n_0 ;
  wire \R[14]_INST_0_i_2_n_0 ;
  wire \R[15]_INST_0_i_1_n_0 ;
  wire \R[15]_INST_0_i_2_n_0 ;
  wire \R[16]_INST_0_i_2_n_0 ;
  wire \R[17]_INST_0_i_2_n_0 ;
  wire \R[18]_INST_0_i_2_n_0 ;
  wire \R[19]_INST_0_i_3_n_0 ;
  wire \R[1]_INST_0_i_2_n_0 ;
  wire \R[1]_INST_0_i_4_n_0 ;
  wire \R[20]_INST_0_i_2_n_0 ;
  wire \R[21]_INST_0_i_2_n_0 ;
  wire \R[22]_INST_0_i_2_n_0 ;
  wire \R[23]_INST_0_i_3_n_0 ;
  wire \R[24]_INST_0_i_2_n_0 ;
  wire \R[25]_INST_0_i_2_n_0 ;
  wire \R[25]_INST_0_i_7_n_0 ;
  wire \R[26]_INST_0_i_2_n_0 ;
  wire \R[27]_INST_0_i_3_n_0 ;
  wire \R[28]_INST_0_i_2_n_0 ;
  wire \R[29]_INST_0_i_2_n_0 ;
  wire \R[2]_INST_0_i_2_n_0 ;
  wire \R[2]_INST_0_i_4_n_0 ;
  wire \R[30]_INST_0_i_2_n_0 ;
  wire \R[31]_INST_0_i_3_n_0 ;
  wire \R[31]_INST_0_i_4_n_0 ;
  wire \R[3]_INST_0_i_3_n_0 ;
  wire \R[3]_INST_0_i_5_n_0 ;
  wire \R[4]_INST_0_i_2_n_0 ;
  wire \R[4]_INST_0_i_4_n_0 ;
  wire \R[5]_INST_0_i_2_n_0 ;
  wire \R[6]_INST_0_i_2_n_0 ;
  wire \R[6]_INST_0_i_4_n_0 ;
  wire \R[7]_INST_0_i_3_n_0 ;
  wire \R[7]_INST_0_i_5_n_0 ;
  wire \R[8]_INST_0_i_1_n_0 ;
  wire \R[8]_INST_0_i_2_n_0 ;
  wire \R[9]_INST_0_i_1_n_0 ;
  wire \R[9]_INST_0_i_2_n_0 ;
  wire [30:0]R_1;
  wire [31:8]R_2;
  wire [31:0]R_3;
  wire [15:8]R_4;
  wire [4:0]SHAMT;
  wire [31:0]ShiftR;
  wire Zero;
  wire Zero_INST_0_i_1_n_0;
  wire Zero_INST_0_i_2_n_0;
  wire Zero_INST_0_i_3_n_0;
  wire Zero_INST_0_i_4_n_0;
  wire Zero_INST_0_i_5_n_0;
  wire Zero_INST_0_i_6_n_0;
  wire Zero_INST_0_i_7_n_0;
  wire Zero_INST_0_i_8_n_0;
  wire test_CO;

  LUT5 #(
    .INIT(32'h00004224)) 
    Overflow_INST_0
       (.I0(A[31]),
        .I1(ArithR[31]),
        .I2(ALUOp[1]),
        .I3(B[31]),
        .I4(ALUOp[0]),
        .O(Overflow));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[0]_INST_0 
       (.I0(ShiftR[0]),
        .I1(ArithR[0]),
        .I2(ALUOp[2]),
        .I3(CompR),
        .I4(ALUOp[3]),
        .I5(\R[0]_INST_0_i_3_n_0 ),
        .O(R[0]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \R[0]_INST_0_i_1 
       (.I0(R_3[16]),
        .I1(R_3[0]),
        .I2(ALUOp[1]),
        .I3(\R[0]_INST_0_i_5_n_0 ),
        .I4(SHAMT[4]),
        .O(ShiftR[0]));
  LUT6 #(
    .INIT(64'h00FFB2B200000000)) 
    \R[0]_INST_0_i_2 
       (.I0(A[31]),
        .I1(B[31]),
        .I2(ArithR[31]),
        .I3(test_CO),
        .I4(ALUOp[0]),
        .I5(ALUOp[1]),
        .O(CompR));
  LUT4 #(
    .INIT(16'h16E8)) 
    \R[0]_INST_0_i_3 
       (.I0(B[0]),
        .I1(A[0]),
        .I2(ALUOp[0]),
        .I3(ALUOp[1]),
        .O(\R[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[0]_INST_0_i_4 
       (.I0(R_1[12]),
        .I1(R_1[8]),
        .I2(SHAMT[3]),
        .I3(R_1[4]),
        .I4(SHAMT[2]),
        .I5(R_1[0]),
        .O(R_3[0]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \R[0]_INST_0_i_5 
       (.I0(SHAMT[2]),
        .I1(SHAMT[0]),
        .I2(A[0]),
        .I3(SHAMT[1]),
        .I4(SHAMT[3]),
        .O(\R[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[0]_INST_0_i_7 
       (.I0(A[3]),
        .I1(A[2]),
        .I2(SHAMT[1]),
        .I3(A[1]),
        .I4(SHAMT[0]),
        .I5(A[0]),
        .O(R_1[0]));
  MUXF7 \R[10]_INST_0 
       (.I0(\R[10]_INST_0_i_1_n_0 ),
        .I1(\R[10]_INST_0_i_2_n_0 ),
        .O(R[10]),
        .S(ALUOp[2]));
  LUT5 #(
    .INIT(32'h00005668)) 
    \R[10]_INST_0_i_1 
       (.I0(ALUOp[1]),
        .I1(ALUOp[0]),
        .I2(A[10]),
        .I3(B[10]),
        .I4(ALUOp[3]),
        .O(\R[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \R[10]_INST_0_i_2 
       (.I0(R_4[10]),
        .I1(ALUOp[1]),
        .I2(L_3[10]),
        .I3(SHAMT[4]),
        .I4(ALUOp[3]),
        .I5(ArithR[10]),
        .O(\R[10]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \R[10]_INST_0_i_3 
       (.I0(R_3[26]),
        .I1(SHAMT[4]),
        .I2(R_2[18]),
        .I3(SHAMT[3]),
        .I4(R_2[10]),
        .O(R_4[10]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[10]_INST_0_i_4 
       (.I0(R_1[22]),
        .I1(SHAMT[2]),
        .I2(R_1[18]),
        .O(R_2[18]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[10]_INST_0_i_5 
       (.I0(R_1[14]),
        .I1(SHAMT[2]),
        .I2(R_1[10]),
        .O(R_2[10]));
  MUXF7 \R[11]_INST_0 
       (.I0(\R[11]_INST_0_i_1_n_0 ),
        .I1(\R[11]_INST_0_i_2_n_0 ),
        .O(R[11]),
        .S(ALUOp[2]));
  LUT5 #(
    .INIT(32'h00005668)) 
    \R[11]_INST_0_i_1 
       (.I0(ALUOp[1]),
        .I1(ALUOp[0]),
        .I2(A[11]),
        .I3(B[11]),
        .I4(ALUOp[3]),
        .O(\R[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \R[11]_INST_0_i_2 
       (.I0(R_4[11]),
        .I1(ALUOp[1]),
        .I2(L_3[11]),
        .I3(SHAMT[4]),
        .I4(ALUOp[3]),
        .I5(ArithR[11]),
        .O(\R[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[11]_INST_0_i_3 
       (.I0(\R[31]_INST_0_i_4_n_0 ),
        .I1(R_2[27]),
        .I2(SHAMT[4]),
        .I3(R_2[19]),
        .I4(SHAMT[3]),
        .I5(R_2[11]),
        .O(R_4[11]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[11]_INST_0_i_5 
       (.I0(R_1[15]),
        .I1(SHAMT[2]),
        .I2(R_1[11]),
        .O(R_2[11]));
  MUXF7 \R[12]_INST_0 
       (.I0(\R[12]_INST_0_i_1_n_0 ),
        .I1(\R[12]_INST_0_i_2_n_0 ),
        .O(R[12]),
        .S(ALUOp[2]));
  LUT5 #(
    .INIT(32'h00005668)) 
    \R[12]_INST_0_i_1 
       (.I0(ALUOp[1]),
        .I1(ALUOp[0]),
        .I2(A[12]),
        .I3(B[12]),
        .I4(ALUOp[3]),
        .O(\R[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \R[12]_INST_0_i_2 
       (.I0(R_4[12]),
        .I1(ALUOp[1]),
        .I2(L_3[12]),
        .I3(SHAMT[4]),
        .I4(ALUOp[3]),
        .I5(ArithR[12]),
        .O(\R[12]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \R[12]_INST_0_i_3 
       (.I0(R_3[28]),
        .I1(SHAMT[4]),
        .I2(R_2[20]),
        .I3(SHAMT[3]),
        .I4(R_2[12]),
        .O(R_4[12]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[12]_INST_0_i_4 
       (.I0(R_1[16]),
        .I1(SHAMT[2]),
        .I2(R_1[12]),
        .O(R_2[12]));
  MUXF7 \R[13]_INST_0 
       (.I0(\R[13]_INST_0_i_1_n_0 ),
        .I1(\R[13]_INST_0_i_2_n_0 ),
        .O(R[13]),
        .S(ALUOp[2]));
  LUT5 #(
    .INIT(32'h00005668)) 
    \R[13]_INST_0_i_1 
       (.I0(ALUOp[1]),
        .I1(ALUOp[0]),
        .I2(A[13]),
        .I3(B[13]),
        .I4(ALUOp[3]),
        .O(\R[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \R[13]_INST_0_i_2 
       (.I0(R_4[13]),
        .I1(ALUOp[1]),
        .I2(L_3[13]),
        .I3(SHAMT[4]),
        .I4(ALUOp[3]),
        .I5(ArithR[13]),
        .O(\R[13]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \R[13]_INST_0_i_3 
       (.I0(R_3[29]),
        .I1(SHAMT[4]),
        .I2(R_2[21]),
        .I3(SHAMT[3]),
        .I4(R_2[13]),
        .O(R_4[13]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[13]_INST_0_i_4 
       (.I0(R_1[17]),
        .I1(SHAMT[2]),
        .I2(R_1[13]),
        .O(R_2[13]));
  MUXF7 \R[14]_INST_0 
       (.I0(\R[14]_INST_0_i_1_n_0 ),
        .I1(\R[14]_INST_0_i_2_n_0 ),
        .O(R[14]),
        .S(ALUOp[2]));
  LUT5 #(
    .INIT(32'h00005668)) 
    \R[14]_INST_0_i_1 
       (.I0(ALUOp[1]),
        .I1(ALUOp[0]),
        .I2(A[14]),
        .I3(B[14]),
        .I4(ALUOp[3]),
        .O(\R[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \R[14]_INST_0_i_2 
       (.I0(R_4[14]),
        .I1(ALUOp[1]),
        .I2(L_3[14]),
        .I3(SHAMT[4]),
        .I4(ALUOp[3]),
        .I5(ArithR[14]),
        .O(\R[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[14]_INST_0_i_3 
       (.I0(\R[31]_INST_0_i_4_n_0 ),
        .I1(R_2[30]),
        .I2(SHAMT[4]),
        .I3(R_2[22]),
        .I4(SHAMT[3]),
        .I5(R_2[14]),
        .O(R_4[14]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[14]_INST_0_i_4 
       (.I0(R_1[26]),
        .I1(SHAMT[2]),
        .I2(R_1[22]),
        .O(R_2[22]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[14]_INST_0_i_5 
       (.I0(R_1[18]),
        .I1(SHAMT[2]),
        .I2(R_1[14]),
        .O(R_2[14]));
  MUXF7 \R[15]_INST_0 
       (.I0(\R[15]_INST_0_i_1_n_0 ),
        .I1(\R[15]_INST_0_i_2_n_0 ),
        .O(R[15]),
        .S(ALUOp[2]));
  LUT5 #(
    .INIT(32'h00005668)) 
    \R[15]_INST_0_i_1 
       (.I0(ALUOp[1]),
        .I1(ALUOp[0]),
        .I2(A[15]),
        .I3(B[15]),
        .I4(ALUOp[3]),
        .O(\R[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \R[15]_INST_0_i_2 
       (.I0(R_4[15]),
        .I1(ALUOp[1]),
        .I2(L_3[15]),
        .I3(SHAMT[4]),
        .I4(ALUOp[3]),
        .I5(ArithR[15]),
        .O(\R[15]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \R[15]_INST_0_i_3 
       (.I0(R_3[31]),
        .I1(SHAMT[4]),
        .I2(R_2[23]),
        .I3(SHAMT[3]),
        .I4(R_2[15]),
        .O(R_4[15]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[15]_INST_0_i_4 
       (.I0(R_1[27]),
        .I1(SHAMT[2]),
        .I2(R_1[23]),
        .O(R_2[23]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[15]_INST_0_i_5 
       (.I0(R_1[19]),
        .I1(SHAMT[2]),
        .I2(R_1[15]),
        .O(R_2[15]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R[16]_INST_0 
       (.I0(ShiftR[16]),
        .I1(ALUOp[3]),
        .I2(ArithR[16]),
        .I3(ALUOp[2]),
        .I4(\R[16]_INST_0_i_2_n_0 ),
        .O(R[16]));
  LUT6 #(
    .INIT(64'h8F80FFFF8F800000)) 
    \R[16]_INST_0_i_1 
       (.I0(ALUOp[0]),
        .I1(A[31]),
        .I2(SHAMT[4]),
        .I3(R_3[16]),
        .I4(ALUOp[1]),
        .I5(L_4[16]),
        .O(ShiftR[16]));
  LUT5 #(
    .INIT(32'h00005668)) 
    \R[16]_INST_0_i_2 
       (.I0(ALUOp[1]),
        .I1(ALUOp[0]),
        .I2(A[16]),
        .I3(B[16]),
        .I4(ALUOp[3]),
        .O(\R[16]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[16]_INST_0_i_3 
       (.I0(R_1[28]),
        .I1(R_1[24]),
        .I2(SHAMT[3]),
        .I3(R_1[20]),
        .I4(SHAMT[2]),
        .I5(R_1[16]),
        .O(R_3[16]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \R[16]_INST_0_i_4 
       (.I0(\R[0]_INST_0_i_5_n_0 ),
        .I1(SHAMT[4]),
        .I2(L_2[8]),
        .I3(SHAMT[3]),
        .I4(L_2[16]),
        .O(L_4[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[16]_INST_0_i_5 
       (.I0(A[23]),
        .I1(A[22]),
        .I2(SHAMT[1]),
        .I3(A[21]),
        .I4(SHAMT[0]),
        .I5(A[20]),
        .O(R_1[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[16]_INST_0_i_6 
       (.I0(A[19]),
        .I1(A[18]),
        .I2(SHAMT[1]),
        .I3(A[17]),
        .I4(SHAMT[0]),
        .I5(A[16]),
        .O(R_1[16]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[16]_INST_0_i_7 
       (.I0(L_1[12]),
        .I1(SHAMT[2]),
        .I2(L_1[16]),
        .O(L_2[16]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R[17]_INST_0 
       (.I0(ShiftR[17]),
        .I1(ALUOp[3]),
        .I2(ArithR[17]),
        .I3(ALUOp[2]),
        .I4(\R[17]_INST_0_i_2_n_0 ),
        .O(R[17]));
  LUT6 #(
    .INIT(64'h8F80FFFF8F800000)) 
    \R[17]_INST_0_i_1 
       (.I0(ALUOp[0]),
        .I1(A[31]),
        .I2(SHAMT[4]),
        .I3(R_3[17]),
        .I4(ALUOp[1]),
        .I5(L_4[17]),
        .O(ShiftR[17]));
  LUT5 #(
    .INIT(32'h00005668)) 
    \R[17]_INST_0_i_2 
       (.I0(ALUOp[1]),
        .I1(ALUOp[0]),
        .I2(A[17]),
        .I3(B[17]),
        .I4(ALUOp[3]),
        .O(\R[17]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[17]_INST_0_i_3 
       (.I0(R_1[29]),
        .I1(R_1[25]),
        .I2(SHAMT[3]),
        .I3(R_1[21]),
        .I4(SHAMT[2]),
        .I5(R_1[17]),
        .O(R_3[17]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \R[17]_INST_0_i_4 
       (.I0(\R[1]_INST_0_i_4_n_0 ),
        .I1(SHAMT[4]),
        .I2(L_2[9]),
        .I3(SHAMT[3]),
        .I4(L_2[17]),
        .O(L_4[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[17]_INST_0_i_5 
       (.I0(A[24]),
        .I1(A[23]),
        .I2(SHAMT[1]),
        .I3(A[22]),
        .I4(SHAMT[0]),
        .I5(A[21]),
        .O(R_1[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[17]_INST_0_i_6 
       (.I0(A[20]),
        .I1(A[19]),
        .I2(SHAMT[1]),
        .I3(A[18]),
        .I4(SHAMT[0]),
        .I5(A[17]),
        .O(R_1[17]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[17]_INST_0_i_7 
       (.I0(L_1[5]),
        .I1(SHAMT[2]),
        .I2(L_1[9]),
        .O(L_2[9]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[17]_INST_0_i_8 
       (.I0(L_1[13]),
        .I1(SHAMT[2]),
        .I2(L_1[17]),
        .O(L_2[17]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R[18]_INST_0 
       (.I0(ShiftR[18]),
        .I1(ALUOp[3]),
        .I2(ArithR[18]),
        .I3(ALUOp[2]),
        .I4(\R[18]_INST_0_i_2_n_0 ),
        .O(R[18]));
  LUT6 #(
    .INIT(64'h8F80FFFF8F800000)) 
    \R[18]_INST_0_i_1 
       (.I0(ALUOp[0]),
        .I1(A[31]),
        .I2(SHAMT[4]),
        .I3(R_3[18]),
        .I4(ALUOp[1]),
        .I5(L_4[18]),
        .O(ShiftR[18]));
  LUT5 #(
    .INIT(32'h00005668)) 
    \R[18]_INST_0_i_2 
       (.I0(ALUOp[1]),
        .I1(ALUOp[0]),
        .I2(A[18]),
        .I3(B[18]),
        .I4(ALUOp[3]),
        .O(\R[18]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[18]_INST_0_i_3 
       (.I0(R_1[30]),
        .I1(R_1[26]),
        .I2(SHAMT[3]),
        .I3(R_1[22]),
        .I4(SHAMT[2]),
        .I5(R_1[18]),
        .O(R_3[18]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \R[18]_INST_0_i_4 
       (.I0(\R[2]_INST_0_i_4_n_0 ),
        .I1(SHAMT[4]),
        .I2(L_2[10]),
        .I3(SHAMT[3]),
        .I4(L_2[18]),
        .O(L_4[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[18]_INST_0_i_5 
       (.I0(A[21]),
        .I1(A[20]),
        .I2(SHAMT[1]),
        .I3(A[19]),
        .I4(SHAMT[0]),
        .I5(A[18]),
        .O(R_1[18]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[18]_INST_0_i_6 
       (.I0(L_1[6]),
        .I1(SHAMT[2]),
        .I2(L_1[10]),
        .O(L_2[10]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[18]_INST_0_i_7 
       (.I0(L_1[14]),
        .I1(SHAMT[2]),
        .I2(L_1[18]),
        .O(L_2[18]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R[19]_INST_0 
       (.I0(ShiftR[19]),
        .I1(ALUOp[3]),
        .I2(ArithR[19]),
        .I3(ALUOp[2]),
        .I4(\R[19]_INST_0_i_3_n_0 ),
        .O(R[19]));
  LUT6 #(
    .INIT(64'h8F80FFFF8F800000)) 
    \R[19]_INST_0_i_1 
       (.I0(ALUOp[0]),
        .I1(A[31]),
        .I2(SHAMT[4]),
        .I3(R_3[19]),
        .I4(ALUOp[1]),
        .I5(L_4[19]),
        .O(ShiftR[19]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[19]_INST_0_i_11 
       (.I0(R_1[23]),
        .I1(SHAMT[2]),
        .I2(R_1[19]),
        .O(R_2[19]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[19]_INST_0_i_12 
       (.I0(L_1[7]),
        .I1(SHAMT[2]),
        .I2(L_1[11]),
        .O(L_2[11]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[19]_INST_0_i_13 
       (.I0(L_1[15]),
        .I1(SHAMT[2]),
        .I2(L_1[19]),
        .O(L_2[19]));
  LUT5 #(
    .INIT(32'h00005668)) 
    \R[19]_INST_0_i_3 
       (.I0(ALUOp[1]),
        .I1(ALUOp[0]),
        .I2(A[19]),
        .I3(B[19]),
        .I4(ALUOp[3]),
        .O(\R[19]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[19]_INST_0_i_4 
       (.I0(R_2[27]),
        .I1(SHAMT[3]),
        .I2(R_2[19]),
        .O(R_3[19]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \R[19]_INST_0_i_5 
       (.I0(SHAMT[2]),
        .I1(L_1[3]),
        .I2(SHAMT[4]),
        .I3(L_2[11]),
        .I4(SHAMT[3]),
        .I5(L_2[19]),
        .O(L_4[19]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R[1]_INST_0 
       (.I0(ShiftR[1]),
        .I1(ALUOp[3]),
        .I2(ArithR[1]),
        .I3(ALUOp[2]),
        .I4(\R[1]_INST_0_i_2_n_0 ),
        .O(R[1]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \R[1]_INST_0_i_1 
       (.I0(R_3[17]),
        .I1(R_3[1]),
        .I2(ALUOp[1]),
        .I3(\R[1]_INST_0_i_4_n_0 ),
        .I4(SHAMT[4]),
        .O(ShiftR[1]));
  LUT5 #(
    .INIT(32'h00005668)) 
    \R[1]_INST_0_i_2 
       (.I0(ALUOp[1]),
        .I1(ALUOp[0]),
        .I2(A[1]),
        .I3(B[1]),
        .I4(ALUOp[3]),
        .O(\R[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[1]_INST_0_i_3 
       (.I0(R_1[13]),
        .I1(R_1[9]),
        .I2(SHAMT[3]),
        .I3(R_1[5]),
        .I4(SHAMT[2]),
        .I5(R_1[1]),
        .O(R_3[1]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \R[1]_INST_0_i_4 
       (.I0(SHAMT[2]),
        .I1(A[1]),
        .I2(SHAMT[0]),
        .I3(A[0]),
        .I4(SHAMT[1]),
        .I5(SHAMT[3]),
        .O(\R[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[1]_INST_0_i_5 
       (.I0(A[4]),
        .I1(A[3]),
        .I2(SHAMT[1]),
        .I3(A[2]),
        .I4(SHAMT[0]),
        .I5(A[1]),
        .O(R_1[1]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R[20]_INST_0 
       (.I0(ShiftR[20]),
        .I1(ALUOp[3]),
        .I2(ArithR[20]),
        .I3(ALUOp[2]),
        .I4(\R[20]_INST_0_i_2_n_0 ),
        .O(R[20]));
  LUT6 #(
    .INIT(64'h8F80FFFF8F800000)) 
    \R[20]_INST_0_i_1 
       (.I0(ALUOp[0]),
        .I1(A[31]),
        .I2(SHAMT[4]),
        .I3(R_3[20]),
        .I4(ALUOp[1]),
        .I5(L_4[20]),
        .O(ShiftR[20]));
  LUT5 #(
    .INIT(32'h00005668)) 
    \R[20]_INST_0_i_2 
       (.I0(ALUOp[1]),
        .I1(ALUOp[0]),
        .I2(A[20]),
        .I3(B[20]),
        .I4(ALUOp[3]),
        .O(\R[20]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F80FFFF8F800000)) 
    \R[20]_INST_0_i_3 
       (.I0(ALUOp[0]),
        .I1(A[31]),
        .I2(SHAMT[2]),
        .I3(R_1[28]),
        .I4(SHAMT[3]),
        .I5(R_2[20]),
        .O(R_3[20]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \R[20]_INST_0_i_4 
       (.I0(\R[4]_INST_0_i_4_n_0 ),
        .I1(SHAMT[4]),
        .I2(L_2[12]),
        .I3(SHAMT[3]),
        .I4(L_2[20]),
        .O(L_4[20]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[20]_INST_0_i_5 
       (.I0(R_1[24]),
        .I1(SHAMT[2]),
        .I2(R_1[20]),
        .O(R_2[20]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[20]_INST_0_i_6 
       (.I0(L_1[16]),
        .I1(SHAMT[2]),
        .I2(L_1[20]),
        .O(L_2[20]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R[21]_INST_0 
       (.I0(ShiftR[21]),
        .I1(ALUOp[3]),
        .I2(ArithR[21]),
        .I3(ALUOp[2]),
        .I4(\R[21]_INST_0_i_2_n_0 ),
        .O(R[21]));
  LUT6 #(
    .INIT(64'h8F80FFFF8F800000)) 
    \R[21]_INST_0_i_1 
       (.I0(ALUOp[0]),
        .I1(A[31]),
        .I2(SHAMT[4]),
        .I3(R_3[21]),
        .I4(ALUOp[1]),
        .I5(L_4[21]),
        .O(ShiftR[21]));
  LUT5 #(
    .INIT(32'h00005668)) 
    \R[21]_INST_0_i_2 
       (.I0(ALUOp[1]),
        .I1(ALUOp[0]),
        .I2(A[21]),
        .I3(B[21]),
        .I4(ALUOp[3]),
        .O(\R[21]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F80FFFF8F800000)) 
    \R[21]_INST_0_i_3 
       (.I0(ALUOp[0]),
        .I1(A[31]),
        .I2(SHAMT[2]),
        .I3(R_1[29]),
        .I4(SHAMT[3]),
        .I5(R_2[21]),
        .O(R_3[21]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \R[21]_INST_0_i_4 
       (.I0(L_2[5]),
        .I1(SHAMT[4]),
        .I2(L_2[13]),
        .I3(SHAMT[3]),
        .I4(L_2[21]),
        .O(L_4[21]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[21]_INST_0_i_5 
       (.I0(R_1[25]),
        .I1(SHAMT[2]),
        .I2(R_1[21]),
        .O(R_2[21]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[21]_INST_0_i_6 
       (.I0(L_1[17]),
        .I1(SHAMT[2]),
        .I2(L_1[21]),
        .O(L_2[21]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R[22]_INST_0 
       (.I0(ShiftR[22]),
        .I1(ALUOp[3]),
        .I2(ArithR[22]),
        .I3(ALUOp[2]),
        .I4(\R[22]_INST_0_i_2_n_0 ),
        .O(R[22]));
  LUT6 #(
    .INIT(64'h8F80FFFF8F800000)) 
    \R[22]_INST_0_i_1 
       (.I0(ALUOp[0]),
        .I1(A[31]),
        .I2(SHAMT[4]),
        .I3(R_3[22]),
        .I4(ALUOp[1]),
        .I5(L_4[22]),
        .O(ShiftR[22]));
  LUT5 #(
    .INIT(32'h00005668)) 
    \R[22]_INST_0_i_2 
       (.I0(ALUOp[1]),
        .I1(ALUOp[0]),
        .I2(A[22]),
        .I3(B[22]),
        .I4(ALUOp[3]),
        .O(\R[22]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \R[22]_INST_0_i_3 
       (.I0(R_2[30]),
        .I1(SHAMT[3]),
        .I2(R_1[26]),
        .I3(SHAMT[2]),
        .I4(R_1[22]),
        .O(R_3[22]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \R[22]_INST_0_i_4 
       (.I0(\R[6]_INST_0_i_4_n_0 ),
        .I1(SHAMT[4]),
        .I2(L_2[14]),
        .I3(SHAMT[3]),
        .I4(L_2[22]),
        .O(L_4[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[22]_INST_0_i_5 
       (.I0(A[25]),
        .I1(A[24]),
        .I2(SHAMT[1]),
        .I3(A[23]),
        .I4(SHAMT[0]),
        .I5(A[22]),
        .O(R_1[22]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[22]_INST_0_i_6 
       (.I0(L_1[10]),
        .I1(SHAMT[2]),
        .I2(L_1[14]),
        .O(L_2[14]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[22]_INST_0_i_7 
       (.I0(L_1[18]),
        .I1(SHAMT[2]),
        .I2(L_1[22]),
        .O(L_2[22]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R[23]_INST_0 
       (.I0(ShiftR[23]),
        .I1(ALUOp[3]),
        .I2(ArithR[23]),
        .I3(ALUOp[2]),
        .I4(\R[23]_INST_0_i_3_n_0 ),
        .O(R[23]));
  LUT6 #(
    .INIT(64'h8F80FFFF8F800000)) 
    \R[23]_INST_0_i_1 
       (.I0(ALUOp[0]),
        .I1(A[31]),
        .I2(SHAMT[4]),
        .I3(R_3[23]),
        .I4(ALUOp[1]),
        .I5(L_4[23]),
        .O(ShiftR[23]));
  LUT5 #(
    .INIT(32'hF0F10000)) 
    \R[23]_INST_0_i_10 
       (.I0(SHAMT[2]),
        .I1(SHAMT[1]),
        .I2(ALUOp[0]),
        .I3(SHAMT[0]),
        .I4(A[31]),
        .O(R_2[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[23]_INST_0_i_11 
       (.I0(A[30]),
        .I1(A[29]),
        .I2(SHAMT[1]),
        .I3(A[28]),
        .I4(SHAMT[0]),
        .I5(A[27]),
        .O(R_1[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[23]_INST_0_i_12 
       (.I0(A[26]),
        .I1(A[25]),
        .I2(SHAMT[1]),
        .I3(A[24]),
        .I4(SHAMT[0]),
        .I5(A[23]),
        .O(R_1[23]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[23]_INST_0_i_13 
       (.I0(L_1[11]),
        .I1(SHAMT[2]),
        .I2(L_1[15]),
        .O(L_2[15]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[23]_INST_0_i_14 
       (.I0(L_1[19]),
        .I1(SHAMT[2]),
        .I2(L_1[23]),
        .O(L_2[23]));
  LUT5 #(
    .INIT(32'h00005668)) 
    \R[23]_INST_0_i_3 
       (.I0(ALUOp[1]),
        .I1(ALUOp[0]),
        .I2(A[23]),
        .I3(B[23]),
        .I4(ALUOp[3]),
        .O(\R[23]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \R[23]_INST_0_i_4 
       (.I0(R_2[31]),
        .I1(SHAMT[3]),
        .I2(R_1[27]),
        .I3(SHAMT[2]),
        .I4(R_1[23]),
        .O(R_3[23]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \R[23]_INST_0_i_5 
       (.I0(\R[7]_INST_0_i_5_n_0 ),
        .I1(SHAMT[4]),
        .I2(L_2[15]),
        .I3(SHAMT[3]),
        .I4(L_2[23]),
        .O(L_4[23]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R[24]_INST_0 
       (.I0(ShiftR[24]),
        .I1(ALUOp[3]),
        .I2(ArithR[24]),
        .I3(ALUOp[2]),
        .I4(\R[24]_INST_0_i_2_n_0 ),
        .O(R[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[24]_INST_0_i_1 
       (.I0(\R[31]_INST_0_i_4_n_0 ),
        .I1(R_3[24]),
        .I2(ALUOp[1]),
        .I3(L_3[8]),
        .I4(SHAMT[4]),
        .I5(L_3[24]),
        .O(ShiftR[24]));
  LUT5 #(
    .INIT(32'h00005668)) 
    \R[24]_INST_0_i_2 
       (.I0(ALUOp[1]),
        .I1(ALUOp[0]),
        .I2(A[24]),
        .I3(B[24]),
        .I4(ALUOp[3]),
        .O(\R[24]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F808F8F8F808080)) 
    \R[24]_INST_0_i_3 
       (.I0(ALUOp[0]),
        .I1(A[31]),
        .I2(SHAMT[3]),
        .I3(R_1[28]),
        .I4(SHAMT[2]),
        .I5(R_1[24]),
        .O(R_3[24]));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \R[24]_INST_0_i_4 
       (.I0(SHAMT[1]),
        .I1(A[0]),
        .I2(SHAMT[0]),
        .I3(SHAMT[2]),
        .I4(SHAMT[3]),
        .I5(L_2[8]),
        .O(L_3[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[24]_INST_0_i_5 
       (.I0(L_1[12]),
        .I1(L_1[16]),
        .I2(SHAMT[3]),
        .I3(L_1[20]),
        .I4(SHAMT[2]),
        .I5(L_1[24]),
        .O(L_3[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[24]_INST_0_i_6 
       (.I0(A[27]),
        .I1(A[26]),
        .I2(SHAMT[1]),
        .I3(A[25]),
        .I4(SHAMT[0]),
        .I5(A[24]),
        .O(R_1[24]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[24]_INST_0_i_7 
       (.I0(L_1[4]),
        .I1(SHAMT[2]),
        .I2(L_1[8]),
        .O(L_2[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[24]_INST_0_i_8 
       (.I0(A[9]),
        .I1(A[10]),
        .I2(SHAMT[1]),
        .I3(A[11]),
        .I4(SHAMT[0]),
        .I5(A[12]),
        .O(L_1[12]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R[25]_INST_0 
       (.I0(ShiftR[25]),
        .I1(ALUOp[3]),
        .I2(ArithR[25]),
        .I3(ALUOp[2]),
        .I4(\R[25]_INST_0_i_2_n_0 ),
        .O(R[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[25]_INST_0_i_1 
       (.I0(\R[31]_INST_0_i_4_n_0 ),
        .I1(R_3[25]),
        .I2(ALUOp[1]),
        .I3(L_3[9]),
        .I4(SHAMT[4]),
        .I5(L_3[25]),
        .O(ShiftR[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[25]_INST_0_i_10 
       (.I0(A[10]),
        .I1(A[11]),
        .I2(SHAMT[1]),
        .I3(A[12]),
        .I4(SHAMT[0]),
        .I5(A[13]),
        .O(L_1[13]));
  LUT5 #(
    .INIT(32'h00005668)) 
    \R[25]_INST_0_i_2 
       (.I0(ALUOp[1]),
        .I1(ALUOp[0]),
        .I2(A[25]),
        .I3(B[25]),
        .I4(ALUOp[3]),
        .O(\R[25]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F808F8F8F808080)) 
    \R[25]_INST_0_i_3 
       (.I0(ALUOp[0]),
        .I1(A[31]),
        .I2(SHAMT[3]),
        .I3(R_1[29]),
        .I4(SHAMT[2]),
        .I5(R_1[25]),
        .O(R_3[25]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \R[25]_INST_0_i_4 
       (.I0(\R[25]_INST_0_i_7_n_0 ),
        .I1(SHAMT[3]),
        .I2(L_1[5]),
        .I3(SHAMT[2]),
        .I4(L_1[9]),
        .O(L_3[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[25]_INST_0_i_5 
       (.I0(L_1[13]),
        .I1(L_1[17]),
        .I2(SHAMT[3]),
        .I3(L_1[21]),
        .I4(SHAMT[2]),
        .I5(L_1[25]),
        .O(L_3[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[25]_INST_0_i_6 
       (.I0(A[28]),
        .I1(A[27]),
        .I2(SHAMT[1]),
        .I3(A[26]),
        .I4(SHAMT[0]),
        .I5(A[25]),
        .O(R_1[25]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \R[25]_INST_0_i_7 
       (.I0(SHAMT[1]),
        .I1(A[0]),
        .I2(SHAMT[0]),
        .I3(A[1]),
        .I4(SHAMT[2]),
        .O(\R[25]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[25]_INST_0_i_8 
       (.I0(A[2]),
        .I1(A[3]),
        .I2(SHAMT[1]),
        .I3(A[4]),
        .I4(SHAMT[0]),
        .I5(A[5]),
        .O(L_1[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[25]_INST_0_i_9 
       (.I0(A[6]),
        .I1(A[7]),
        .I2(SHAMT[1]),
        .I3(A[8]),
        .I4(SHAMT[0]),
        .I5(A[9]),
        .O(L_1[9]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R[26]_INST_0 
       (.I0(ShiftR[26]),
        .I1(ALUOp[3]),
        .I2(ArithR[26]),
        .I3(ALUOp[2]),
        .I4(\R[26]_INST_0_i_2_n_0 ),
        .O(R[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[26]_INST_0_i_1 
       (.I0(\R[31]_INST_0_i_4_n_0 ),
        .I1(R_3[26]),
        .I2(ALUOp[1]),
        .I3(L_3[10]),
        .I4(SHAMT[4]),
        .I5(L_3[26]),
        .O(ShiftR[26]));
  LUT5 #(
    .INIT(32'h00005668)) 
    \R[26]_INST_0_i_2 
       (.I0(ALUOp[1]),
        .I1(ALUOp[0]),
        .I2(A[26]),
        .I3(B[26]),
        .I4(ALUOp[3]),
        .O(\R[26]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F808F8F8F808080)) 
    \R[26]_INST_0_i_3 
       (.I0(ALUOp[0]),
        .I1(A[31]),
        .I2(SHAMT[3]),
        .I3(R_1[30]),
        .I4(SHAMT[2]),
        .I5(R_1[26]),
        .O(R_3[26]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \R[26]_INST_0_i_4 
       (.I0(\R[2]_INST_0_i_4_n_0 ),
        .I1(SHAMT[3]),
        .I2(L_1[6]),
        .I3(SHAMT[2]),
        .I4(L_1[10]),
        .O(L_3[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[26]_INST_0_i_5 
       (.I0(L_1[14]),
        .I1(L_1[18]),
        .I2(SHAMT[3]),
        .I3(L_1[22]),
        .I4(SHAMT[2]),
        .I5(L_1[26]),
        .O(L_3[26]));
  LUT5 #(
    .INIT(32'hB0B3B080)) 
    \R[26]_INST_0_i_6 
       (.I0(ALUOp[0]),
        .I1(SHAMT[1]),
        .I2(A[31]),
        .I3(SHAMT[0]),
        .I4(A[30]),
        .O(R_1[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[26]_INST_0_i_7 
       (.I0(A[29]),
        .I1(A[28]),
        .I2(SHAMT[1]),
        .I3(A[27]),
        .I4(SHAMT[0]),
        .I5(A[26]),
        .O(R_1[26]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R[27]_INST_0 
       (.I0(ShiftR[27]),
        .I1(ALUOp[3]),
        .I2(ArithR[27]),
        .I3(ALUOp[2]),
        .I4(\R[27]_INST_0_i_3_n_0 ),
        .O(R[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[27]_INST_0_i_1 
       (.I0(\R[31]_INST_0_i_4_n_0 ),
        .I1(R_3[27]),
        .I2(ALUOp[1]),
        .I3(L_3[11]),
        .I4(SHAMT[4]),
        .I5(L_3[27]),
        .O(ShiftR[27]));
  LUT6 #(
    .INIT(64'hCD00FFFFCD000000)) 
    \R[27]_INST_0_i_11 
       (.I0(SHAMT[1]),
        .I1(ALUOp[0]),
        .I2(SHAMT[0]),
        .I3(A[31]),
        .I4(SHAMT[2]),
        .I5(R_1[27]),
        .O(R_2[27]));
  LUT5 #(
    .INIT(32'h00005668)) 
    \R[27]_INST_0_i_3 
       (.I0(ALUOp[1]),
        .I1(ALUOp[0]),
        .I2(A[27]),
        .I3(B[27]),
        .I4(ALUOp[3]),
        .O(\R[27]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \R[27]_INST_0_i_4 
       (.I0(ALUOp[0]),
        .I1(A[31]),
        .I2(SHAMT[3]),
        .I3(R_2[27]),
        .O(R_3[27]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \R[27]_INST_0_i_5 
       (.I0(L_1[3]),
        .I1(SHAMT[3]),
        .I2(L_1[7]),
        .I3(SHAMT[2]),
        .I4(L_1[11]),
        .O(L_3[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[27]_INST_0_i_6 
       (.I0(L_1[15]),
        .I1(L_1[19]),
        .I2(SHAMT[3]),
        .I3(L_1[23]),
        .I4(SHAMT[2]),
        .I5(L_1[27]),
        .O(L_3[27]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R[28]_INST_0 
       (.I0(ShiftR[28]),
        .I1(ALUOp[3]),
        .I2(ArithR[28]),
        .I3(ALUOp[2]),
        .I4(\R[28]_INST_0_i_2_n_0 ),
        .O(R[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[28]_INST_0_i_1 
       (.I0(\R[31]_INST_0_i_4_n_0 ),
        .I1(R_3[28]),
        .I2(ALUOp[1]),
        .I3(L_3[12]),
        .I4(SHAMT[4]),
        .I5(L_3[28]),
        .O(ShiftR[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[28]_INST_0_i_10 
       (.I0(A[17]),
        .I1(A[18]),
        .I2(SHAMT[1]),
        .I3(A[19]),
        .I4(SHAMT[0]),
        .I5(A[20]),
        .O(L_1[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[28]_INST_0_i_11 
       (.I0(A[21]),
        .I1(A[22]),
        .I2(SHAMT[1]),
        .I3(A[23]),
        .I4(SHAMT[0]),
        .I5(A[24]),
        .O(L_1[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[28]_INST_0_i_12 
       (.I0(A[25]),
        .I1(A[26]),
        .I2(SHAMT[1]),
        .I3(A[27]),
        .I4(SHAMT[0]),
        .I5(A[28]),
        .O(L_1[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[28]_INST_0_i_13 
       (.I0(A[5]),
        .I1(A[6]),
        .I2(SHAMT[1]),
        .I3(A[7]),
        .I4(SHAMT[0]),
        .I5(A[8]),
        .O(L_1[8]));
  LUT5 #(
    .INIT(32'h00005668)) 
    \R[28]_INST_0_i_2 
       (.I0(ALUOp[1]),
        .I1(ALUOp[0]),
        .I2(A[28]),
        .I3(B[28]),
        .I4(ALUOp[3]),
        .O(\R[28]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hC0D5C080)) 
    \R[28]_INST_0_i_3 
       (.I0(SHAMT[3]),
        .I1(ALUOp[0]),
        .I2(A[31]),
        .I3(SHAMT[2]),
        .I4(R_1[28]),
        .O(R_3[28]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[28]_INST_0_i_4 
       (.I0(L_2[4]),
        .I1(SHAMT[3]),
        .I2(L_2[12]),
        .O(L_3[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[28]_INST_0_i_5 
       (.I0(L_1[16]),
        .I1(L_1[20]),
        .I2(SHAMT[3]),
        .I3(L_1[24]),
        .I4(SHAMT[2]),
        .I5(L_1[28]),
        .O(L_3[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[28]_INST_0_i_6 
       (.I0(A[31]),
        .I1(A[30]),
        .I2(SHAMT[1]),
        .I3(A[29]),
        .I4(SHAMT[0]),
        .I5(A[28]),
        .O(R_1[28]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \R[28]_INST_0_i_7 
       (.I0(SHAMT[0]),
        .I1(A[0]),
        .I2(SHAMT[1]),
        .I3(SHAMT[2]),
        .I4(L_1[4]),
        .O(L_2[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[28]_INST_0_i_8 
       (.I0(L_1[8]),
        .I1(SHAMT[2]),
        .I2(L_1[12]),
        .O(L_2[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[28]_INST_0_i_9 
       (.I0(A[13]),
        .I1(A[14]),
        .I2(SHAMT[1]),
        .I3(A[15]),
        .I4(SHAMT[0]),
        .I5(A[16]),
        .O(L_1[16]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R[29]_INST_0 
       (.I0(ShiftR[29]),
        .I1(ALUOp[3]),
        .I2(ArithR[29]),
        .I3(ALUOp[2]),
        .I4(\R[29]_INST_0_i_2_n_0 ),
        .O(R[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[29]_INST_0_i_1 
       (.I0(\R[31]_INST_0_i_4_n_0 ),
        .I1(R_3[29]),
        .I2(ALUOp[1]),
        .I3(L_3[13]),
        .I4(SHAMT[4]),
        .I5(L_3[29]),
        .O(ShiftR[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[29]_INST_0_i_10 
       (.I0(A[22]),
        .I1(A[23]),
        .I2(SHAMT[1]),
        .I3(A[24]),
        .I4(SHAMT[0]),
        .I5(A[25]),
        .O(L_1[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[29]_INST_0_i_11 
       (.I0(A[26]),
        .I1(A[27]),
        .I2(SHAMT[1]),
        .I3(A[28]),
        .I4(SHAMT[0]),
        .I5(A[29]),
        .O(L_1[29]));
  LUT5 #(
    .INIT(32'h00005668)) 
    \R[29]_INST_0_i_2 
       (.I0(ALUOp[1]),
        .I1(ALUOp[0]),
        .I2(A[29]),
        .I3(B[29]),
        .I4(ALUOp[3]),
        .O(\R[29]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hC0D5C080)) 
    \R[29]_INST_0_i_3 
       (.I0(SHAMT[3]),
        .I1(ALUOp[0]),
        .I2(A[31]),
        .I3(SHAMT[2]),
        .I4(R_1[29]),
        .O(R_3[29]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[29]_INST_0_i_4 
       (.I0(L_2[5]),
        .I1(SHAMT[3]),
        .I2(L_2[13]),
        .O(L_3[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[29]_INST_0_i_5 
       (.I0(L_1[17]),
        .I1(L_1[21]),
        .I2(SHAMT[3]),
        .I3(L_1[25]),
        .I4(SHAMT[2]),
        .I5(L_1[29]),
        .O(L_3[29]));
  LUT6 #(
    .INIT(64'h8F80CFCF8F80C0C0)) 
    \R[29]_INST_0_i_6 
       (.I0(ALUOp[0]),
        .I1(A[31]),
        .I2(SHAMT[1]),
        .I3(A[30]),
        .I4(SHAMT[0]),
        .I5(A[29]),
        .O(R_1[29]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[29]_INST_0_i_7 
       (.I0(L_1[9]),
        .I1(SHAMT[2]),
        .I2(L_1[13]),
        .O(L_2[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[29]_INST_0_i_8 
       (.I0(A[14]),
        .I1(A[15]),
        .I2(SHAMT[1]),
        .I3(A[16]),
        .I4(SHAMT[0]),
        .I5(A[17]),
        .O(L_1[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[29]_INST_0_i_9 
       (.I0(A[18]),
        .I1(A[19]),
        .I2(SHAMT[1]),
        .I3(A[20]),
        .I4(SHAMT[0]),
        .I5(A[21]),
        .O(L_1[21]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R[2]_INST_0 
       (.I0(ShiftR[2]),
        .I1(ALUOp[3]),
        .I2(ArithR[2]),
        .I3(ALUOp[2]),
        .I4(\R[2]_INST_0_i_2_n_0 ),
        .O(R[2]));
  LUT6 #(
    .INIT(64'hA0A0A0A0C0CFC0C0)) 
    \R[2]_INST_0_i_1 
       (.I0(R_3[18]),
        .I1(R_3[2]),
        .I2(ALUOp[1]),
        .I3(SHAMT[3]),
        .I4(\R[2]_INST_0_i_4_n_0 ),
        .I5(SHAMT[4]),
        .O(ShiftR[2]));
  LUT5 #(
    .INIT(32'h00005668)) 
    \R[2]_INST_0_i_2 
       (.I0(ALUOp[1]),
        .I1(ALUOp[0]),
        .I2(A[2]),
        .I3(B[2]),
        .I4(ALUOp[3]),
        .O(\R[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[2]_INST_0_i_3 
       (.I0(R_1[14]),
        .I1(R_1[10]),
        .I2(SHAMT[3]),
        .I3(R_1[6]),
        .I4(SHAMT[2]),
        .I5(R_1[2]),
        .O(R_3[2]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \R[2]_INST_0_i_4 
       (.I0(A[2]),
        .I1(SHAMT[0]),
        .I2(A[1]),
        .I3(SHAMT[1]),
        .I4(A[0]),
        .I5(SHAMT[2]),
        .O(\R[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[2]_INST_0_i_5 
       (.I0(A[5]),
        .I1(A[4]),
        .I2(SHAMT[1]),
        .I3(A[3]),
        .I4(SHAMT[0]),
        .I5(A[2]),
        .O(R_1[2]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R[30]_INST_0 
       (.I0(ShiftR[30]),
        .I1(ALUOp[3]),
        .I2(ArithR[30]),
        .I3(ALUOp[2]),
        .I4(\R[30]_INST_0_i_2_n_0 ),
        .O(R[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[30]_INST_0_i_1 
       (.I0(\R[31]_INST_0_i_4_n_0 ),
        .I1(R_3[30]),
        .I2(ALUOp[1]),
        .I3(L_3[14]),
        .I4(SHAMT[4]),
        .I5(L_3[30]),
        .O(ShiftR[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[30]_INST_0_i_10 
       (.I0(A[11]),
        .I1(A[12]),
        .I2(SHAMT[1]),
        .I3(A[13]),
        .I4(SHAMT[0]),
        .I5(A[14]),
        .O(L_1[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[30]_INST_0_i_11 
       (.I0(A[15]),
        .I1(A[16]),
        .I2(SHAMT[1]),
        .I3(A[17]),
        .I4(SHAMT[0]),
        .I5(A[18]),
        .O(L_1[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[30]_INST_0_i_12 
       (.I0(A[19]),
        .I1(A[20]),
        .I2(SHAMT[1]),
        .I3(A[21]),
        .I4(SHAMT[0]),
        .I5(A[22]),
        .O(L_1[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[30]_INST_0_i_13 
       (.I0(A[23]),
        .I1(A[24]),
        .I2(SHAMT[1]),
        .I3(A[25]),
        .I4(SHAMT[0]),
        .I5(A[26]),
        .O(L_1[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[30]_INST_0_i_14 
       (.I0(A[27]),
        .I1(A[28]),
        .I2(SHAMT[1]),
        .I3(A[29]),
        .I4(SHAMT[0]),
        .I5(A[30]),
        .O(L_1[30]));
  LUT5 #(
    .INIT(32'h00005668)) 
    \R[30]_INST_0_i_2 
       (.I0(ALUOp[1]),
        .I1(ALUOp[0]),
        .I2(A[30]),
        .I3(B[30]),
        .I4(ALUOp[3]),
        .O(\R[30]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \R[30]_INST_0_i_3 
       (.I0(ALUOp[0]),
        .I1(A[31]),
        .I2(SHAMT[3]),
        .I3(R_2[30]),
        .O(R_3[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[30]_INST_0_i_4 
       (.I0(L_1[2]),
        .I1(L_1[6]),
        .I2(SHAMT[3]),
        .I3(L_1[10]),
        .I4(SHAMT[2]),
        .I5(L_1[14]),
        .O(L_3[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[30]_INST_0_i_5 
       (.I0(L_1[18]),
        .I1(L_1[22]),
        .I2(SHAMT[3]),
        .I3(L_1[26]),
        .I4(SHAMT[2]),
        .I5(L_1[30]),
        .O(L_3[30]));
  LUT6 #(
    .INIT(64'hCD00CD05CD00C800)) 
    \R[30]_INST_0_i_6 
       (.I0(SHAMT[2]),
        .I1(ALUOp[0]),
        .I2(SHAMT[1]),
        .I3(A[31]),
        .I4(SHAMT[0]),
        .I5(A[30]),
        .O(R_2[30]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \R[30]_INST_0_i_7 
       (.I0(A[0]),
        .I1(SHAMT[1]),
        .I2(A[1]),
        .I3(SHAMT[0]),
        .I4(A[2]),
        .O(L_1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[30]_INST_0_i_8 
       (.I0(A[3]),
        .I1(A[4]),
        .I2(SHAMT[1]),
        .I3(A[5]),
        .I4(SHAMT[0]),
        .I5(A[6]),
        .O(L_1[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[30]_INST_0_i_9 
       (.I0(A[7]),
        .I1(A[8]),
        .I2(SHAMT[1]),
        .I3(A[9]),
        .I4(SHAMT[0]),
        .I5(A[10]),
        .O(L_1[10]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R[31]_INST_0 
       (.I0(ShiftR[31]),
        .I1(ALUOp[3]),
        .I2(ArithR[31]),
        .I3(ALUOp[2]),
        .I4(\R[31]_INST_0_i_3_n_0 ),
        .O(R[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[31]_INST_0_i_1 
       (.I0(\R[31]_INST_0_i_4_n_0 ),
        .I1(R_3[31]),
        .I2(ALUOp[1]),
        .I3(L_3[15]),
        .I4(SHAMT[4]),
        .I5(L_3[31]),
        .O(ShiftR[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[31]_INST_0_i_12 
       (.I0(A[0]),
        .I1(A[1]),
        .I2(SHAMT[1]),
        .I3(A[2]),
        .I4(SHAMT[0]),
        .I5(A[3]),
        .O(L_1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[31]_INST_0_i_13 
       (.I0(A[4]),
        .I1(A[5]),
        .I2(SHAMT[1]),
        .I3(A[6]),
        .I4(SHAMT[0]),
        .I5(A[7]),
        .O(L_1[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[31]_INST_0_i_14 
       (.I0(A[8]),
        .I1(A[9]),
        .I2(SHAMT[1]),
        .I3(A[10]),
        .I4(SHAMT[0]),
        .I5(A[11]),
        .O(L_1[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[31]_INST_0_i_15 
       (.I0(A[12]),
        .I1(A[13]),
        .I2(SHAMT[1]),
        .I3(A[14]),
        .I4(SHAMT[0]),
        .I5(A[15]),
        .O(L_1[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[31]_INST_0_i_16 
       (.I0(A[16]),
        .I1(A[17]),
        .I2(SHAMT[1]),
        .I3(A[18]),
        .I4(SHAMT[0]),
        .I5(A[19]),
        .O(L_1[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[31]_INST_0_i_17 
       (.I0(A[20]),
        .I1(A[21]),
        .I2(SHAMT[1]),
        .I3(A[22]),
        .I4(SHAMT[0]),
        .I5(A[23]),
        .O(L_1[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[31]_INST_0_i_18 
       (.I0(A[24]),
        .I1(A[25]),
        .I2(SHAMT[1]),
        .I3(A[26]),
        .I4(SHAMT[0]),
        .I5(A[27]),
        .O(L_1[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[31]_INST_0_i_19 
       (.I0(A[28]),
        .I1(A[29]),
        .I2(SHAMT[1]),
        .I3(A[30]),
        .I4(SHAMT[0]),
        .I5(A[31]),
        .O(L_1[31]));
  LUT5 #(
    .INIT(32'h00005668)) 
    \R[31]_INST_0_i_3 
       (.I0(ALUOp[1]),
        .I1(ALUOp[0]),
        .I2(A[31]),
        .I3(B[31]),
        .I4(ALUOp[3]),
        .O(\R[31]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \R[31]_INST_0_i_4 
       (.I0(ALUOp[0]),
        .I1(A[31]),
        .O(\R[31]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF0100000000)) 
    \R[31]_INST_0_i_5 
       (.I0(SHAMT[3]),
        .I1(SHAMT[2]),
        .I2(SHAMT[1]),
        .I3(ALUOp[0]),
        .I4(SHAMT[0]),
        .I5(A[31]),
        .O(R_3[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[31]_INST_0_i_6 
       (.I0(L_1[3]),
        .I1(L_1[7]),
        .I2(SHAMT[3]),
        .I3(L_1[11]),
        .I4(SHAMT[2]),
        .I5(L_1[15]),
        .O(L_3[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[31]_INST_0_i_7 
       (.I0(L_1[19]),
        .I1(L_1[23]),
        .I2(SHAMT[3]),
        .I3(L_1[27]),
        .I4(SHAMT[2]),
        .I5(L_1[31]),
        .O(L_3[31]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R[3]_INST_0 
       (.I0(ShiftR[3]),
        .I1(ALUOp[3]),
        .I2(ArithR[3]),
        .I3(ALUOp[2]),
        .I4(\R[3]_INST_0_i_3_n_0 ),
        .O(R[3]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \R[3]_INST_0_i_1 
       (.I0(R_3[19]),
        .I1(R_3[3]),
        .I2(ALUOp[1]),
        .I3(\R[3]_INST_0_i_5_n_0 ),
        .I4(SHAMT[4]),
        .O(ShiftR[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[3]_INST_0_i_10 
       (.I0(A[6]),
        .I1(A[5]),
        .I2(SHAMT[1]),
        .I3(A[4]),
        .I4(SHAMT[0]),
        .I5(A[3]),
        .O(R_1[3]));
  LUT5 #(
    .INIT(32'h00005668)) 
    \R[3]_INST_0_i_3 
       (.I0(ALUOp[1]),
        .I1(ALUOp[0]),
        .I2(A[3]),
        .I3(B[3]),
        .I4(ALUOp[3]),
        .O(\R[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[3]_INST_0_i_4 
       (.I0(R_1[15]),
        .I1(R_1[11]),
        .I2(SHAMT[3]),
        .I3(R_1[7]),
        .I4(SHAMT[2]),
        .I5(R_1[3]),
        .O(R_3[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \R[3]_INST_0_i_5 
       (.I0(SHAMT[2]),
        .I1(L_1[3]),
        .I2(SHAMT[3]),
        .O(\R[3]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R[4]_INST_0 
       (.I0(ShiftR[4]),
        .I1(ALUOp[3]),
        .I2(ArithR[4]),
        .I3(ALUOp[2]),
        .I4(\R[4]_INST_0_i_2_n_0 ),
        .O(R[4]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \R[4]_INST_0_i_1 
       (.I0(R_3[20]),
        .I1(R_3[4]),
        .I2(ALUOp[1]),
        .I3(\R[4]_INST_0_i_4_n_0 ),
        .I4(SHAMT[4]),
        .O(ShiftR[4]));
  LUT5 #(
    .INIT(32'h00005668)) 
    \R[4]_INST_0_i_2 
       (.I0(ALUOp[1]),
        .I1(ALUOp[0]),
        .I2(A[4]),
        .I3(B[4]),
        .I4(ALUOp[3]),
        .O(\R[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[4]_INST_0_i_3 
       (.I0(R_1[16]),
        .I1(R_1[12]),
        .I2(SHAMT[3]),
        .I3(R_1[8]),
        .I4(SHAMT[2]),
        .I5(R_1[4]),
        .O(R_3[4]));
  LUT6 #(
    .INIT(64'h0000000022222E22)) 
    \R[4]_INST_0_i_4 
       (.I0(L_1[4]),
        .I1(SHAMT[2]),
        .I2(SHAMT[1]),
        .I3(A[0]),
        .I4(SHAMT[0]),
        .I5(SHAMT[3]),
        .O(\R[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[4]_INST_0_i_5 
       (.I0(A[15]),
        .I1(A[14]),
        .I2(SHAMT[1]),
        .I3(A[13]),
        .I4(SHAMT[0]),
        .I5(A[12]),
        .O(R_1[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[4]_INST_0_i_6 
       (.I0(A[11]),
        .I1(A[10]),
        .I2(SHAMT[1]),
        .I3(A[9]),
        .I4(SHAMT[0]),
        .I5(A[8]),
        .O(R_1[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[4]_INST_0_i_7 
       (.I0(A[7]),
        .I1(A[6]),
        .I2(SHAMT[1]),
        .I3(A[5]),
        .I4(SHAMT[0]),
        .I5(A[4]),
        .O(R_1[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[4]_INST_0_i_8 
       (.I0(A[1]),
        .I1(A[2]),
        .I2(SHAMT[1]),
        .I3(A[3]),
        .I4(SHAMT[0]),
        .I5(A[4]),
        .O(L_1[4]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R[5]_INST_0 
       (.I0(ShiftR[5]),
        .I1(ALUOp[3]),
        .I2(ArithR[5]),
        .I3(ALUOp[2]),
        .I4(\R[5]_INST_0_i_2_n_0 ),
        .O(R[5]));
  LUT6 #(
    .INIT(64'hA0A0A0A0C0CFC0C0)) 
    \R[5]_INST_0_i_1 
       (.I0(R_3[21]),
        .I1(R_3[5]),
        .I2(ALUOp[1]),
        .I3(SHAMT[3]),
        .I4(L_2[5]),
        .I5(SHAMT[4]),
        .O(ShiftR[5]));
  LUT5 #(
    .INIT(32'h00005668)) 
    \R[5]_INST_0_i_2 
       (.I0(ALUOp[1]),
        .I1(ALUOp[0]),
        .I2(A[5]),
        .I3(B[5]),
        .I4(ALUOp[3]),
        .O(\R[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[5]_INST_0_i_3 
       (.I0(R_1[17]),
        .I1(R_1[13]),
        .I2(SHAMT[3]),
        .I3(R_1[9]),
        .I4(SHAMT[2]),
        .I5(R_1[5]),
        .O(R_3[5]));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \R[5]_INST_0_i_4 
       (.I0(A[1]),
        .I1(SHAMT[0]),
        .I2(A[0]),
        .I3(SHAMT[1]),
        .I4(SHAMT[2]),
        .I5(L_1[5]),
        .O(L_2[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[5]_INST_0_i_5 
       (.I0(A[16]),
        .I1(A[15]),
        .I2(SHAMT[1]),
        .I3(A[14]),
        .I4(SHAMT[0]),
        .I5(A[13]),
        .O(R_1[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[5]_INST_0_i_6 
       (.I0(A[12]),
        .I1(A[11]),
        .I2(SHAMT[1]),
        .I3(A[10]),
        .I4(SHAMT[0]),
        .I5(A[9]),
        .O(R_1[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[5]_INST_0_i_7 
       (.I0(A[8]),
        .I1(A[7]),
        .I2(SHAMT[1]),
        .I3(A[6]),
        .I4(SHAMT[0]),
        .I5(A[5]),
        .O(R_1[5]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R[6]_INST_0 
       (.I0(ShiftR[6]),
        .I1(ALUOp[3]),
        .I2(ArithR[6]),
        .I3(ALUOp[2]),
        .I4(\R[6]_INST_0_i_2_n_0 ),
        .O(R[6]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \R[6]_INST_0_i_1 
       (.I0(R_3[22]),
        .I1(R_3[6]),
        .I2(ALUOp[1]),
        .I3(\R[6]_INST_0_i_4_n_0 ),
        .I4(SHAMT[4]),
        .O(ShiftR[6]));
  LUT5 #(
    .INIT(32'h00005668)) 
    \R[6]_INST_0_i_2 
       (.I0(ALUOp[1]),
        .I1(ALUOp[0]),
        .I2(A[6]),
        .I3(B[6]),
        .I4(ALUOp[3]),
        .O(\R[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[6]_INST_0_i_3 
       (.I0(R_1[18]),
        .I1(R_1[14]),
        .I2(SHAMT[3]),
        .I3(R_1[10]),
        .I4(SHAMT[2]),
        .I5(R_1[6]),
        .O(R_3[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \R[6]_INST_0_i_4 
       (.I0(L_1[6]),
        .I1(SHAMT[2]),
        .I2(L_1[2]),
        .I3(SHAMT[3]),
        .O(\R[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[6]_INST_0_i_5 
       (.I0(A[17]),
        .I1(A[16]),
        .I2(SHAMT[1]),
        .I3(A[15]),
        .I4(SHAMT[0]),
        .I5(A[14]),
        .O(R_1[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[6]_INST_0_i_6 
       (.I0(A[13]),
        .I1(A[12]),
        .I2(SHAMT[1]),
        .I3(A[11]),
        .I4(SHAMT[0]),
        .I5(A[10]),
        .O(R_1[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[6]_INST_0_i_7 
       (.I0(A[9]),
        .I1(A[8]),
        .I2(SHAMT[1]),
        .I3(A[7]),
        .I4(SHAMT[0]),
        .I5(A[6]),
        .O(R_1[6]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \R[7]_INST_0 
       (.I0(ShiftR[7]),
        .I1(ALUOp[3]),
        .I2(ArithR[7]),
        .I3(ALUOp[2]),
        .I4(\R[7]_INST_0_i_3_n_0 ),
        .O(R[7]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \R[7]_INST_0_i_1 
       (.I0(R_3[23]),
        .I1(R_3[7]),
        .I2(ALUOp[1]),
        .I3(\R[7]_INST_0_i_5_n_0 ),
        .I4(SHAMT[4]),
        .O(ShiftR[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[7]_INST_0_i_10 
       (.I0(A[22]),
        .I1(A[21]),
        .I2(SHAMT[1]),
        .I3(A[20]),
        .I4(SHAMT[0]),
        .I5(A[19]),
        .O(R_1[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[7]_INST_0_i_11 
       (.I0(A[18]),
        .I1(A[17]),
        .I2(SHAMT[1]),
        .I3(A[16]),
        .I4(SHAMT[0]),
        .I5(A[15]),
        .O(R_1[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[7]_INST_0_i_12 
       (.I0(A[14]),
        .I1(A[13]),
        .I2(SHAMT[1]),
        .I3(A[12]),
        .I4(SHAMT[0]),
        .I5(A[11]),
        .O(R_1[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[7]_INST_0_i_13 
       (.I0(A[10]),
        .I1(A[9]),
        .I2(SHAMT[1]),
        .I3(A[8]),
        .I4(SHAMT[0]),
        .I5(A[7]),
        .O(R_1[7]));
  LUT5 #(
    .INIT(32'h00005668)) 
    \R[7]_INST_0_i_3 
       (.I0(ALUOp[1]),
        .I1(ALUOp[0]),
        .I2(A[7]),
        .I3(B[7]),
        .I4(ALUOp[3]),
        .O(\R[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \R[7]_INST_0_i_4 
       (.I0(R_1[19]),
        .I1(R_1[15]),
        .I2(SHAMT[3]),
        .I3(R_1[11]),
        .I4(SHAMT[2]),
        .I5(R_1[7]),
        .O(R_3[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \R[7]_INST_0_i_5 
       (.I0(L_1[7]),
        .I1(SHAMT[2]),
        .I2(L_1[3]),
        .I3(SHAMT[3]),
        .O(\R[7]_INST_0_i_5_n_0 ));
  MUXF7 \R[8]_INST_0 
       (.I0(\R[8]_INST_0_i_1_n_0 ),
        .I1(\R[8]_INST_0_i_2_n_0 ),
        .O(R[8]),
        .S(ALUOp[2]));
  LUT5 #(
    .INIT(32'h00005668)) 
    \R[8]_INST_0_i_1 
       (.I0(ALUOp[1]),
        .I1(ALUOp[0]),
        .I2(A[8]),
        .I3(B[8]),
        .I4(ALUOp[3]),
        .O(\R[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \R[8]_INST_0_i_2 
       (.I0(R_4[8]),
        .I1(ALUOp[1]),
        .I2(L_3[8]),
        .I3(SHAMT[4]),
        .I4(ALUOp[3]),
        .I5(ArithR[8]),
        .O(\R[8]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \R[8]_INST_0_i_3 
       (.I0(R_3[24]),
        .I1(SHAMT[4]),
        .I2(R_2[16]),
        .I3(SHAMT[3]),
        .I4(R_2[8]),
        .O(R_4[8]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[8]_INST_0_i_4 
       (.I0(R_1[20]),
        .I1(SHAMT[2]),
        .I2(R_1[16]),
        .O(R_2[16]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[8]_INST_0_i_5 
       (.I0(R_1[12]),
        .I1(SHAMT[2]),
        .I2(R_1[8]),
        .O(R_2[8]));
  MUXF7 \R[9]_INST_0 
       (.I0(\R[9]_INST_0_i_1_n_0 ),
        .I1(\R[9]_INST_0_i_2_n_0 ),
        .O(R[9]),
        .S(ALUOp[2]));
  LUT5 #(
    .INIT(32'h00005668)) 
    \R[9]_INST_0_i_1 
       (.I0(ALUOp[1]),
        .I1(ALUOp[0]),
        .I2(A[9]),
        .I3(B[9]),
        .I4(ALUOp[3]),
        .O(\R[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \R[9]_INST_0_i_2 
       (.I0(R_4[9]),
        .I1(ALUOp[1]),
        .I2(L_3[9]),
        .I3(SHAMT[4]),
        .I4(ALUOp[3]),
        .I5(ArithR[9]),
        .O(\R[9]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \R[9]_INST_0_i_3 
       (.I0(R_3[25]),
        .I1(SHAMT[4]),
        .I2(R_2[17]),
        .I3(SHAMT[3]),
        .I4(R_2[9]),
        .O(R_4[9]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[9]_INST_0_i_4 
       (.I0(R_1[21]),
        .I1(SHAMT[2]),
        .I2(R_1[17]),
        .O(R_2[17]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \R[9]_INST_0_i_5 
       (.I0(R_1[13]),
        .I1(SHAMT[2]),
        .I2(R_1[9]),
        .O(R_2[9]));
  Lab_2_ALU_0_2_ALU U0
       (.A(A),
        .ALUOp(ALUOp[1]),
        .ArithR(ArithR),
        .B(B),
        .CO(test_CO));
  LUT4 #(
    .INIT(16'h0001)) 
    Zero_INST_0
       (.I0(Zero_INST_0_i_1_n_0),
        .I1(Zero_INST_0_i_2_n_0),
        .I2(Zero_INST_0_i_3_n_0),
        .I3(Zero_INST_0_i_4_n_0),
        .O(Zero));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    Zero_INST_0_i_1
       (.I0(ArithR[22]),
        .I1(ArithR[21]),
        .I2(ArithR[24]),
        .I3(ArithR[23]),
        .I4(Zero_INST_0_i_5_n_0),
        .O(Zero_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    Zero_INST_0_i_2
       (.I0(ArithR[30]),
        .I1(ArithR[29]),
        .I2(ArithR[0]),
        .I3(ArithR[31]),
        .I4(Zero_INST_0_i_6_n_0),
        .O(Zero_INST_0_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    Zero_INST_0_i_3
       (.I0(ArithR[6]),
        .I1(ArithR[5]),
        .I2(ArithR[8]),
        .I3(ArithR[7]),
        .I4(Zero_INST_0_i_7_n_0),
        .O(Zero_INST_0_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    Zero_INST_0_i_4
       (.I0(ArithR[14]),
        .I1(ArithR[13]),
        .I2(ArithR[16]),
        .I3(ArithR[15]),
        .I4(Zero_INST_0_i_8_n_0),
        .O(Zero_INST_0_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Zero_INST_0_i_5
       (.I0(ArithR[19]),
        .I1(ArithR[20]),
        .I2(ArithR[17]),
        .I3(ArithR[18]),
        .O(Zero_INST_0_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Zero_INST_0_i_6
       (.I0(ArithR[27]),
        .I1(ArithR[28]),
        .I2(ArithR[25]),
        .I3(ArithR[26]),
        .O(Zero_INST_0_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Zero_INST_0_i_7
       (.I0(ArithR[3]),
        .I1(ArithR[4]),
        .I2(ArithR[1]),
        .I3(ArithR[2]),
        .O(Zero_INST_0_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Zero_INST_0_i_8
       (.I0(ArithR[11]),
        .I1(ArithR[12]),
        .I2(ArithR[9]),
        .I3(ArithR[10]),
        .O(Zero_INST_0_i_8_n_0));
endmodule

(* ORIG_REF_NAME = "ALU" *) 
module Lab_2_ALU_0_2_ALU
   (ArithR,
    CO,
    ALUOp,
    A,
    B);
  output [31:0]ArithR;
  output [0:0]CO;
  input [0:0]ALUOp;
  input [31:0]A;
  input [31:0]B;

  wire [31:0]A;
  wire [0:0]ALUOp;
  wire [31:0]ArithR;
  wire [31:0]B;
  wire [0:0]CO;

  Lab_2_ALU_0_2_arith_unit ALU_Arith
       (.A(A),
        .ALUOp(ALUOp),
        .ArithR(ArithR),
        .B(B),
        .CO(CO));
endmodule

(* ORIG_REF_NAME = "arith_unit" *) 
module Lab_2_ALU_0_2_arith_unit
   (ArithR,
    CO,
    ALUOp,
    A,
    B);
  output [31:0]ArithR;
  output [0:0]CO;
  input [0:0]ALUOp;
  input [31:0]A;
  input [31:0]B;

  wire [31:0]A;
  wire [0:0]ALUOp;
  wire [31:0]ArithR;
  wire [31:0]B;
  wire [0:0]CO;
  wire \R[11]_INST_0_i_4_n_0 ;
  wire \R[11]_INST_0_i_4_n_1 ;
  wire \R[11]_INST_0_i_4_n_2 ;
  wire \R[11]_INST_0_i_4_n_3 ;
  wire \R[11]_INST_0_i_6_n_0 ;
  wire \R[11]_INST_0_i_7_n_0 ;
  wire \R[11]_INST_0_i_8_n_0 ;
  wire \R[11]_INST_0_i_9_n_0 ;
  wire \R[19]_INST_0_i_10_n_0 ;
  wire \R[19]_INST_0_i_14_n_0 ;
  wire \R[19]_INST_0_i_15_n_0 ;
  wire \R[19]_INST_0_i_16_n_0 ;
  wire \R[19]_INST_0_i_17_n_0 ;
  wire \R[19]_INST_0_i_2_n_0 ;
  wire \R[19]_INST_0_i_2_n_1 ;
  wire \R[19]_INST_0_i_2_n_2 ;
  wire \R[19]_INST_0_i_2_n_3 ;
  wire \R[19]_INST_0_i_6_n_0 ;
  wire \R[19]_INST_0_i_6_n_1 ;
  wire \R[19]_INST_0_i_6_n_2 ;
  wire \R[19]_INST_0_i_6_n_3 ;
  wire \R[19]_INST_0_i_7_n_0 ;
  wire \R[19]_INST_0_i_8_n_0 ;
  wire \R[19]_INST_0_i_9_n_0 ;
  wire \R[23]_INST_0_i_2_n_0 ;
  wire \R[23]_INST_0_i_2_n_1 ;
  wire \R[23]_INST_0_i_2_n_2 ;
  wire \R[23]_INST_0_i_2_n_3 ;
  wire \R[23]_INST_0_i_6_n_0 ;
  wire \R[23]_INST_0_i_7_n_0 ;
  wire \R[23]_INST_0_i_8_n_0 ;
  wire \R[23]_INST_0_i_9_n_0 ;
  wire \R[27]_INST_0_i_10_n_0 ;
  wire \R[27]_INST_0_i_2_n_0 ;
  wire \R[27]_INST_0_i_2_n_1 ;
  wire \R[27]_INST_0_i_2_n_2 ;
  wire \R[27]_INST_0_i_2_n_3 ;
  wire \R[27]_INST_0_i_7_n_0 ;
  wire \R[27]_INST_0_i_8_n_0 ;
  wire \R[27]_INST_0_i_9_n_0 ;
  wire \R[31]_INST_0_i_10_n_0 ;
  wire \R[31]_INST_0_i_11_n_0 ;
  wire \R[31]_INST_0_i_2_n_0 ;
  wire \R[31]_INST_0_i_2_n_1 ;
  wire \R[31]_INST_0_i_2_n_2 ;
  wire \R[31]_INST_0_i_2_n_3 ;
  wire \R[31]_INST_0_i_8_n_0 ;
  wire \R[31]_INST_0_i_9_n_0 ;
  wire \R[3]_INST_0_i_2_n_0 ;
  wire \R[3]_INST_0_i_2_n_1 ;
  wire \R[3]_INST_0_i_2_n_2 ;
  wire \R[3]_INST_0_i_2_n_3 ;
  wire \R[3]_INST_0_i_6_n_0 ;
  wire \R[3]_INST_0_i_7_n_0 ;
  wire \R[3]_INST_0_i_8_n_0 ;
  wire \R[3]_INST_0_i_9_n_0 ;
  wire \R[7]_INST_0_i_2_n_0 ;
  wire \R[7]_INST_0_i_2_n_1 ;
  wire \R[7]_INST_0_i_2_n_2 ;
  wire \R[7]_INST_0_i_2_n_3 ;
  wire \R[7]_INST_0_i_6_n_0 ;
  wire \R[7]_INST_0_i_7_n_0 ;
  wire \R[7]_INST_0_i_8_n_0 ;
  wire \R[7]_INST_0_i_9_n_0 ;
  wire [3:1]\NLW_R[0]_INST_0_i_6_CO_UNCONNECTED ;
  wire [3:0]\NLW_R[0]_INST_0_i_6_O_UNCONNECTED ;

  CARRY4 \R[0]_INST_0_i_6 
       (.CI(\R[31]_INST_0_i_2_n_0 ),
        .CO({\NLW_R[0]_INST_0_i_6_CO_UNCONNECTED [3:1],CO}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_R[0]_INST_0_i_6_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 \R[11]_INST_0_i_4 
       (.CI(\R[7]_INST_0_i_2_n_0 ),
        .CO({\R[11]_INST_0_i_4_n_0 ,\R[11]_INST_0_i_4_n_1 ,\R[11]_INST_0_i_4_n_2 ,\R[11]_INST_0_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI(A[11:8]),
        .O(ArithR[11:8]),
        .S({\R[11]_INST_0_i_6_n_0 ,\R[11]_INST_0_i_7_n_0 ,\R[11]_INST_0_i_8_n_0 ,\R[11]_INST_0_i_9_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \R[11]_INST_0_i_6 
       (.I0(A[11]),
        .I1(B[11]),
        .I2(ALUOp),
        .O(\R[11]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R[11]_INST_0_i_7 
       (.I0(A[10]),
        .I1(B[10]),
        .I2(ALUOp),
        .O(\R[11]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R[11]_INST_0_i_8 
       (.I0(A[9]),
        .I1(B[9]),
        .I2(ALUOp),
        .O(\R[11]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R[11]_INST_0_i_9 
       (.I0(A[8]),
        .I1(B[8]),
        .I2(ALUOp),
        .O(\R[11]_INST_0_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R[19]_INST_0_i_10 
       (.I0(A[16]),
        .I1(B[16]),
        .I2(ALUOp),
        .O(\R[19]_INST_0_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R[19]_INST_0_i_14 
       (.I0(A[15]),
        .I1(B[15]),
        .I2(ALUOp),
        .O(\R[19]_INST_0_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R[19]_INST_0_i_15 
       (.I0(A[14]),
        .I1(B[14]),
        .I2(ALUOp),
        .O(\R[19]_INST_0_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R[19]_INST_0_i_16 
       (.I0(A[13]),
        .I1(B[13]),
        .I2(ALUOp),
        .O(\R[19]_INST_0_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R[19]_INST_0_i_17 
       (.I0(A[12]),
        .I1(B[12]),
        .I2(ALUOp),
        .O(\R[19]_INST_0_i_17_n_0 ));
  CARRY4 \R[19]_INST_0_i_2 
       (.CI(\R[19]_INST_0_i_6_n_0 ),
        .CO({\R[19]_INST_0_i_2_n_0 ,\R[19]_INST_0_i_2_n_1 ,\R[19]_INST_0_i_2_n_2 ,\R[19]_INST_0_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(A[19:16]),
        .O(ArithR[19:16]),
        .S({\R[19]_INST_0_i_7_n_0 ,\R[19]_INST_0_i_8_n_0 ,\R[19]_INST_0_i_9_n_0 ,\R[19]_INST_0_i_10_n_0 }));
  CARRY4 \R[19]_INST_0_i_6 
       (.CI(\R[11]_INST_0_i_4_n_0 ),
        .CO({\R[19]_INST_0_i_6_n_0 ,\R[19]_INST_0_i_6_n_1 ,\R[19]_INST_0_i_6_n_2 ,\R[19]_INST_0_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI(A[15:12]),
        .O(ArithR[15:12]),
        .S({\R[19]_INST_0_i_14_n_0 ,\R[19]_INST_0_i_15_n_0 ,\R[19]_INST_0_i_16_n_0 ,\R[19]_INST_0_i_17_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \R[19]_INST_0_i_7 
       (.I0(A[19]),
        .I1(B[19]),
        .I2(ALUOp),
        .O(\R[19]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R[19]_INST_0_i_8 
       (.I0(A[18]),
        .I1(B[18]),
        .I2(ALUOp),
        .O(\R[19]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R[19]_INST_0_i_9 
       (.I0(A[17]),
        .I1(B[17]),
        .I2(ALUOp),
        .O(\R[19]_INST_0_i_9_n_0 ));
  CARRY4 \R[23]_INST_0_i_2 
       (.CI(\R[19]_INST_0_i_2_n_0 ),
        .CO({\R[23]_INST_0_i_2_n_0 ,\R[23]_INST_0_i_2_n_1 ,\R[23]_INST_0_i_2_n_2 ,\R[23]_INST_0_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(A[23:20]),
        .O(ArithR[23:20]),
        .S({\R[23]_INST_0_i_6_n_0 ,\R[23]_INST_0_i_7_n_0 ,\R[23]_INST_0_i_8_n_0 ,\R[23]_INST_0_i_9_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \R[23]_INST_0_i_6 
       (.I0(A[23]),
        .I1(B[23]),
        .I2(ALUOp),
        .O(\R[23]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R[23]_INST_0_i_7 
       (.I0(A[22]),
        .I1(B[22]),
        .I2(ALUOp),
        .O(\R[23]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R[23]_INST_0_i_8 
       (.I0(A[21]),
        .I1(B[21]),
        .I2(ALUOp),
        .O(\R[23]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R[23]_INST_0_i_9 
       (.I0(A[20]),
        .I1(B[20]),
        .I2(ALUOp),
        .O(\R[23]_INST_0_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R[27]_INST_0_i_10 
       (.I0(A[24]),
        .I1(B[24]),
        .I2(ALUOp),
        .O(\R[27]_INST_0_i_10_n_0 ));
  CARRY4 \R[27]_INST_0_i_2 
       (.CI(\R[23]_INST_0_i_2_n_0 ),
        .CO({\R[27]_INST_0_i_2_n_0 ,\R[27]_INST_0_i_2_n_1 ,\R[27]_INST_0_i_2_n_2 ,\R[27]_INST_0_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(A[27:24]),
        .O(ArithR[27:24]),
        .S({\R[27]_INST_0_i_7_n_0 ,\R[27]_INST_0_i_8_n_0 ,\R[27]_INST_0_i_9_n_0 ,\R[27]_INST_0_i_10_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \R[27]_INST_0_i_7 
       (.I0(A[27]),
        .I1(B[27]),
        .I2(ALUOp),
        .O(\R[27]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R[27]_INST_0_i_8 
       (.I0(A[26]),
        .I1(B[26]),
        .I2(ALUOp),
        .O(\R[27]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R[27]_INST_0_i_9 
       (.I0(A[25]),
        .I1(B[25]),
        .I2(ALUOp),
        .O(\R[27]_INST_0_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R[31]_INST_0_i_10 
       (.I0(A[29]),
        .I1(B[29]),
        .I2(ALUOp),
        .O(\R[31]_INST_0_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R[31]_INST_0_i_11 
       (.I0(A[28]),
        .I1(B[28]),
        .I2(ALUOp),
        .O(\R[31]_INST_0_i_11_n_0 ));
  CARRY4 \R[31]_INST_0_i_2 
       (.CI(\R[27]_INST_0_i_2_n_0 ),
        .CO({\R[31]_INST_0_i_2_n_0 ,\R[31]_INST_0_i_2_n_1 ,\R[31]_INST_0_i_2_n_2 ,\R[31]_INST_0_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(A[31:28]),
        .O(ArithR[31:28]),
        .S({\R[31]_INST_0_i_8_n_0 ,\R[31]_INST_0_i_9_n_0 ,\R[31]_INST_0_i_10_n_0 ,\R[31]_INST_0_i_11_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \R[31]_INST_0_i_8 
       (.I0(A[31]),
        .I1(B[31]),
        .I2(ALUOp),
        .O(\R[31]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R[31]_INST_0_i_9 
       (.I0(A[30]),
        .I1(B[30]),
        .I2(ALUOp),
        .O(\R[31]_INST_0_i_9_n_0 ));
  CARRY4 \R[3]_INST_0_i_2 
       (.CI(1'b0),
        .CO({\R[3]_INST_0_i_2_n_0 ,\R[3]_INST_0_i_2_n_1 ,\R[3]_INST_0_i_2_n_2 ,\R[3]_INST_0_i_2_n_3 }),
        .CYINIT(ALUOp),
        .DI(A[3:0]),
        .O(ArithR[3:0]),
        .S({\R[3]_INST_0_i_6_n_0 ,\R[3]_INST_0_i_7_n_0 ,\R[3]_INST_0_i_8_n_0 ,\R[3]_INST_0_i_9_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \R[3]_INST_0_i_6 
       (.I0(A[3]),
        .I1(B[3]),
        .I2(ALUOp),
        .O(\R[3]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R[3]_INST_0_i_7 
       (.I0(A[2]),
        .I1(B[2]),
        .I2(ALUOp),
        .O(\R[3]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R[3]_INST_0_i_8 
       (.I0(A[1]),
        .I1(B[1]),
        .I2(ALUOp),
        .O(\R[3]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R[3]_INST_0_i_9 
       (.I0(A[0]),
        .I1(B[0]),
        .I2(ALUOp),
        .O(\R[3]_INST_0_i_9_n_0 ));
  CARRY4 \R[7]_INST_0_i_2 
       (.CI(\R[3]_INST_0_i_2_n_0 ),
        .CO({\R[7]_INST_0_i_2_n_0 ,\R[7]_INST_0_i_2_n_1 ,\R[7]_INST_0_i_2_n_2 ,\R[7]_INST_0_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(A[7:4]),
        .O(ArithR[7:4]),
        .S({\R[7]_INST_0_i_6_n_0 ,\R[7]_INST_0_i_7_n_0 ,\R[7]_INST_0_i_8_n_0 ,\R[7]_INST_0_i_9_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \R[7]_INST_0_i_6 
       (.I0(A[7]),
        .I1(B[7]),
        .I2(ALUOp),
        .O(\R[7]_INST_0_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R[7]_INST_0_i_7 
       (.I0(A[6]),
        .I1(B[6]),
        .I2(ALUOp),
        .O(\R[7]_INST_0_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R[7]_INST_0_i_8 
       (.I0(A[5]),
        .I1(B[5]),
        .I2(ALUOp),
        .O(\R[7]_INST_0_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \R[7]_INST_0_i_9 
       (.I0(A[4]),
        .I1(B[4]),
        .I2(ALUOp),
        .O(\R[7]_INST_0_i_9_n_0 ));
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
