// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Feb  5 18:08:06 2021
// Host        : DESKTOP-9AE4DJD running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Lab_1_adder_subtractor_0_0_sim_netlist.v
// Design      : Lab_1_adder_subtractor_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Lab_1_adder_subtractor_0_0,adder_subtractor,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "adder_subtractor,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (A,
    B,
    k,
    result,
    overflow);
  input [31:0]A;
  input [31:0]B;
  input k;
  output [31:0]result;
  output overflow;

  wire [31:0]A;
  wire [31:0]B;
  wire k;
  wire overflow;
  wire [31:0]result;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_subtractor U0
       (.A(A),
        .B(B),
        .k(k),
        .overflow(overflow),
        .result(result));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_subtractor
   (result,
    overflow,
    A,
    B,
    k);
  output [31:0]result;
  output overflow;
  input [31:0]A;
  input [31:0]B;
  input k;

  wire [31:0]A;
  wire [31:0]B;
  wire \L2[0].adders_i_1_n_0 ;
  wire \L2[10].adders_i_1_n_0 ;
  wire \L2[11].adders_i_1_n_0 ;
  wire \L2[12].adders_i_1_n_0 ;
  wire \L2[13].adders_i_1_n_0 ;
  wire \L2[14].adders_i_1_n_0 ;
  wire \L2[15].adders_i_1_n_0 ;
  wire \L2[16].adders_i_1_n_0 ;
  wire \L2[17].adders_i_1_n_0 ;
  wire \L2[18].adders_i_1_n_0 ;
  wire \L2[19].adders_i_1_n_0 ;
  wire \L2[1].adders_i_1_n_0 ;
  wire \L2[20].adders_i_1_n_0 ;
  wire \L2[21].adders_i_1_n_0 ;
  wire \L2[22].adders_i_1_n_0 ;
  wire \L2[23].adders_i_1_n_0 ;
  wire \L2[24].adders_i_1_n_0 ;
  wire \L2[25].adders_i_1_n_0 ;
  wire \L2[26].adders_i_1_n_0 ;
  wire \L2[27].adders_i_1_n_0 ;
  wire \L2[28].adders_i_1_n_0 ;
  wire \L2[29].adders_i_1_n_0 ;
  wire \L2[2].adders_i_1_n_0 ;
  wire \L2[30].adders_i_1_n_0 ;
  wire \L2[31].adders_i_1_n_0 ;
  wire \L2[31].adders_n_0 ;
  wire \L2[3].adders_i_1_n_0 ;
  wire \L2[4].adders_i_1_n_0 ;
  wire \L2[5].adders_i_1_n_0 ;
  wire \L2[6].adders_i_1_n_0 ;
  wire \L2[7].adders_i_1_n_0 ;
  wire \L2[8].adders_i_1_n_0 ;
  wire \L2[9].adders_i_1_n_0 ;
  wire \L3[0].adders_i_1_n_0 ;
  wire \L3[10].adders_i_1_n_0 ;
  wire \L3[11].adders_i_1_n_0 ;
  wire \L3[12].adders_i_1_n_0 ;
  wire \L3[13].adders_i_1_n_0 ;
  wire \L3[14].adders_i_1_n_0 ;
  wire \L3[15].adders_i_1_n_0 ;
  wire \L3[16].adders_i_1_n_0 ;
  wire \L3[17].adders_i_1_n_0 ;
  wire \L3[18].adders_i_1_n_0 ;
  wire \L3[19].adders_i_1_n_0 ;
  wire \L3[1].adders_i_1_n_0 ;
  wire \L3[20].adders_i_1_n_0 ;
  wire \L3[21].adders_i_1_n_0 ;
  wire \L3[22].adders_i_1_n_0 ;
  wire \L3[23].adders_i_1_n_0 ;
  wire \L3[24].adders_i_1_n_0 ;
  wire \L3[25].adders_i_1_n_0 ;
  wire \L3[26].adders_i_1_n_0 ;
  wire \L3[27].adders_i_1_n_0 ;
  wire \L3[28].adders_i_1_n_0 ;
  wire \L3[29].adders_i_1_n_0 ;
  wire \L3[2].adders_i_1_n_0 ;
  wire \L3[30].adders_i_1_n_0 ;
  wire \L3[31].adders_i_1_n_0 ;
  wire \L3[3].adders_i_1_n_0 ;
  wire \L3[4].adders_i_1_n_0 ;
  wire \L3[5].adders_i_1_n_0 ;
  wire \L3[6].adders_i_1_n_0 ;
  wire \L3[7].adders_i_1_n_0 ;
  wire \L3[8].adders_i_1_n_0 ;
  wire \L3[9].adders_i_1_n_0 ;
  wire Sum;
  wire Sum0_out;
  wire Sum10_out;
  wire Sum12_out;
  wire Sum14_out;
  wire Sum16_out;
  wire Sum18_out;
  wire Sum20_out;
  wire Sum22_out;
  wire Sum24_out;
  wire Sum26_out;
  wire Sum28_out;
  wire Sum2_out;
  wire Sum30_out;
  wire Sum32_out;
  wire Sum34_out;
  wire Sum36_out;
  wire Sum38_out;
  wire Sum40_out;
  wire Sum42_out;
  wire Sum44_out;
  wire Sum46_out;
  wire Sum48_out;
  wire Sum4_out;
  wire Sum50_out;
  wire Sum52_out;
  wire Sum54_out;
  wire Sum56_out;
  wire Sum58_out;
  wire Sum6_out;
  wire Sum8_out;
  wire k;
  wire overflow;
  wire [31:0]result;
  wire temp_c_out_1;
  wire temp_c_out_10;
  wire temp_c_out_11;
  wire temp_c_out_12;
  wire temp_c_out_13;
  wire temp_c_out_14;
  wire temp_c_out_15;
  wire temp_c_out_16;
  wire temp_c_out_17;
  wire temp_c_out_18;
  wire temp_c_out_19;
  wire temp_c_out_2;
  wire temp_c_out_20;
  wire temp_c_out_21;
  wire temp_c_out_22;
  wire temp_c_out_23;
  wire temp_c_out_24;
  wire temp_c_out_25;
  wire temp_c_out_26;
  wire temp_c_out_27;
  wire temp_c_out_28;
  wire temp_c_out_29;
  wire temp_c_out_3;
  wire temp_c_out_30;
  wire temp_c_out_31;
  wire temp_c_out_4;
  wire temp_c_out_5;
  wire temp_c_out_6;
  wire temp_c_out_7;
  wire temp_c_out_8;
  wire temp_c_out_9;
  wire temp_c_out_add_one_1;
  wire temp_c_out_add_one_10;
  wire temp_c_out_add_one_11;
  wire temp_c_out_add_one_12;
  wire temp_c_out_add_one_13;
  wire temp_c_out_add_one_14;
  wire temp_c_out_add_one_15;
  wire temp_c_out_add_one_16;
  wire temp_c_out_add_one_17;
  wire temp_c_out_add_one_18;
  wire temp_c_out_add_one_19;
  wire temp_c_out_add_one_2;
  wire temp_c_out_add_one_20;
  wire temp_c_out_add_one_21;
  wire temp_c_out_add_one_22;
  wire temp_c_out_add_one_23;
  wire temp_c_out_add_one_24;
  wire temp_c_out_add_one_25;
  wire temp_c_out_add_one_26;
  wire temp_c_out_add_one_27;
  wire temp_c_out_add_one_28;
  wire temp_c_out_add_one_29;
  wire temp_c_out_add_one_3;
  wire temp_c_out_add_one_30;
  wire temp_c_out_add_one_31;
  wire temp_c_out_add_one_4;
  wire temp_c_out_add_one_5;
  wire temp_c_out_add_one_6;
  wire temp_c_out_add_one_7;
  wire temp_c_out_add_one_8;
  wire temp_c_out_add_one_9;
  wire \NLW_L2[31].adders_Cout_UNCONNECTED ;

  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__1 \L2[0].adders 
       (.A(\L2[0].adders_i_1_n_0 ),
        .B(1'b1),
        .Cin(1'b0),
        .Cout(temp_c_out_add_one_1),
        .Sum(Sum));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \L2[0].adders_i_1 
       (.I0(B[0]),
        .O(\L2[0].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__11 \L2[10].adders 
       (.A(\L2[10].adders_i_1_n_0 ),
        .B(1'b0),
        .Cin(temp_c_out_add_one_10),
        .Cout(temp_c_out_add_one_11),
        .Sum(Sum40_out));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \L2[10].adders_i_1 
       (.I0(B[10]),
        .O(\L2[10].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__12 \L2[11].adders 
       (.A(\L2[11].adders_i_1_n_0 ),
        .B(1'b0),
        .Cin(temp_c_out_add_one_11),
        .Cout(temp_c_out_add_one_12),
        .Sum(Sum38_out));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \L2[11].adders_i_1 
       (.I0(B[11]),
        .O(\L2[11].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__13 \L2[12].adders 
       (.A(\L2[12].adders_i_1_n_0 ),
        .B(1'b0),
        .Cin(temp_c_out_add_one_12),
        .Cout(temp_c_out_add_one_13),
        .Sum(Sum36_out));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \L2[12].adders_i_1 
       (.I0(B[12]),
        .O(\L2[12].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__14 \L2[13].adders 
       (.A(\L2[13].adders_i_1_n_0 ),
        .B(1'b0),
        .Cin(temp_c_out_add_one_13),
        .Cout(temp_c_out_add_one_14),
        .Sum(Sum34_out));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \L2[13].adders_i_1 
       (.I0(B[13]),
        .O(\L2[13].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__15 \L2[14].adders 
       (.A(\L2[14].adders_i_1_n_0 ),
        .B(1'b0),
        .Cin(temp_c_out_add_one_14),
        .Cout(temp_c_out_add_one_15),
        .Sum(Sum32_out));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \L2[14].adders_i_1 
       (.I0(B[14]),
        .O(\L2[14].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__16 \L2[15].adders 
       (.A(\L2[15].adders_i_1_n_0 ),
        .B(1'b0),
        .Cin(temp_c_out_add_one_15),
        .Cout(temp_c_out_add_one_16),
        .Sum(Sum30_out));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \L2[15].adders_i_1 
       (.I0(B[15]),
        .O(\L2[15].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__17 \L2[16].adders 
       (.A(\L2[16].adders_i_1_n_0 ),
        .B(1'b0),
        .Cin(temp_c_out_add_one_16),
        .Cout(temp_c_out_add_one_17),
        .Sum(Sum28_out));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \L2[16].adders_i_1 
       (.I0(B[16]),
        .O(\L2[16].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__18 \L2[17].adders 
       (.A(\L2[17].adders_i_1_n_0 ),
        .B(1'b0),
        .Cin(temp_c_out_add_one_17),
        .Cout(temp_c_out_add_one_18),
        .Sum(Sum26_out));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \L2[17].adders_i_1 
       (.I0(B[17]),
        .O(\L2[17].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__19 \L2[18].adders 
       (.A(\L2[18].adders_i_1_n_0 ),
        .B(1'b0),
        .Cin(temp_c_out_add_one_18),
        .Cout(temp_c_out_add_one_19),
        .Sum(Sum24_out));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \L2[18].adders_i_1 
       (.I0(B[18]),
        .O(\L2[18].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__20 \L2[19].adders 
       (.A(\L2[19].adders_i_1_n_0 ),
        .B(1'b0),
        .Cin(temp_c_out_add_one_19),
        .Cout(temp_c_out_add_one_20),
        .Sum(Sum22_out));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \L2[19].adders_i_1 
       (.I0(B[19]),
        .O(\L2[19].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__2 \L2[1].adders 
       (.A(\L2[1].adders_i_1_n_0 ),
        .B(1'b0),
        .Cin(temp_c_out_add_one_1),
        .Cout(temp_c_out_add_one_2),
        .Sum(Sum58_out));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \L2[1].adders_i_1 
       (.I0(B[1]),
        .O(\L2[1].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__21 \L2[20].adders 
       (.A(\L2[20].adders_i_1_n_0 ),
        .B(1'b0),
        .Cin(temp_c_out_add_one_20),
        .Cout(temp_c_out_add_one_21),
        .Sum(Sum20_out));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \L2[20].adders_i_1 
       (.I0(B[20]),
        .O(\L2[20].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__22 \L2[21].adders 
       (.A(\L2[21].adders_i_1_n_0 ),
        .B(1'b0),
        .Cin(temp_c_out_add_one_21),
        .Cout(temp_c_out_add_one_22),
        .Sum(Sum18_out));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \L2[21].adders_i_1 
       (.I0(B[21]),
        .O(\L2[21].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__23 \L2[22].adders 
       (.A(\L2[22].adders_i_1_n_0 ),
        .B(1'b0),
        .Cin(temp_c_out_add_one_22),
        .Cout(temp_c_out_add_one_23),
        .Sum(Sum16_out));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \L2[22].adders_i_1 
       (.I0(B[22]),
        .O(\L2[22].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__24 \L2[23].adders 
       (.A(\L2[23].adders_i_1_n_0 ),
        .B(1'b0),
        .Cin(temp_c_out_add_one_23),
        .Cout(temp_c_out_add_one_24),
        .Sum(Sum14_out));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \L2[23].adders_i_1 
       (.I0(B[23]),
        .O(\L2[23].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__25 \L2[24].adders 
       (.A(\L2[24].adders_i_1_n_0 ),
        .B(1'b0),
        .Cin(temp_c_out_add_one_24),
        .Cout(temp_c_out_add_one_25),
        .Sum(Sum12_out));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \L2[24].adders_i_1 
       (.I0(B[24]),
        .O(\L2[24].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__26 \L2[25].adders 
       (.A(\L2[25].adders_i_1_n_0 ),
        .B(1'b0),
        .Cin(temp_c_out_add_one_25),
        .Cout(temp_c_out_add_one_26),
        .Sum(Sum10_out));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \L2[25].adders_i_1 
       (.I0(B[25]),
        .O(\L2[25].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__27 \L2[26].adders 
       (.A(\L2[26].adders_i_1_n_0 ),
        .B(1'b0),
        .Cin(temp_c_out_add_one_26),
        .Cout(temp_c_out_add_one_27),
        .Sum(Sum8_out));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \L2[26].adders_i_1 
       (.I0(B[26]),
        .O(\L2[26].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__28 \L2[27].adders 
       (.A(\L2[27].adders_i_1_n_0 ),
        .B(1'b0),
        .Cin(temp_c_out_add_one_27),
        .Cout(temp_c_out_add_one_28),
        .Sum(Sum6_out));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \L2[27].adders_i_1 
       (.I0(B[27]),
        .O(\L2[27].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__29 \L2[28].adders 
       (.A(\L2[28].adders_i_1_n_0 ),
        .B(1'b0),
        .Cin(temp_c_out_add_one_28),
        .Cout(temp_c_out_add_one_29),
        .Sum(Sum4_out));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \L2[28].adders_i_1 
       (.I0(B[28]),
        .O(\L2[28].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__30 \L2[29].adders 
       (.A(\L2[29].adders_i_1_n_0 ),
        .B(1'b0),
        .Cin(temp_c_out_add_one_29),
        .Cout(temp_c_out_add_one_30),
        .Sum(Sum2_out));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \L2[29].adders_i_1 
       (.I0(B[29]),
        .O(\L2[29].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__3 \L2[2].adders 
       (.A(\L2[2].adders_i_1_n_0 ),
        .B(1'b0),
        .Cin(temp_c_out_add_one_2),
        .Cout(temp_c_out_add_one_3),
        .Sum(Sum56_out));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \L2[2].adders_i_1 
       (.I0(B[2]),
        .O(\L2[2].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__31 \L2[30].adders 
       (.A(\L2[30].adders_i_1_n_0 ),
        .B(1'b0),
        .Cin(temp_c_out_add_one_30),
        .Cout(temp_c_out_add_one_31),
        .Sum(Sum0_out));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \L2[30].adders_i_1 
       (.I0(B[30]),
        .O(\L2[30].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__32 \L2[31].adders 
       (.A(\L2[31].adders_i_1_n_0 ),
        .B(1'b0),
        .Cin(temp_c_out_add_one_31),
        .Cout(\NLW_L2[31].adders_Cout_UNCONNECTED ),
        .Sum(\L2[31].adders_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \L2[31].adders_i_1 
       (.I0(B[31]),
        .O(\L2[31].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__4 \L2[3].adders 
       (.A(\L2[3].adders_i_1_n_0 ),
        .B(1'b0),
        .Cin(temp_c_out_add_one_3),
        .Cout(temp_c_out_add_one_4),
        .Sum(Sum54_out));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \L2[3].adders_i_1 
       (.I0(B[3]),
        .O(\L2[3].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__5 \L2[4].adders 
       (.A(\L2[4].adders_i_1_n_0 ),
        .B(1'b0),
        .Cin(temp_c_out_add_one_4),
        .Cout(temp_c_out_add_one_5),
        .Sum(Sum52_out));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \L2[4].adders_i_1 
       (.I0(B[4]),
        .O(\L2[4].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__6 \L2[5].adders 
       (.A(\L2[5].adders_i_1_n_0 ),
        .B(1'b0),
        .Cin(temp_c_out_add_one_5),
        .Cout(temp_c_out_add_one_6),
        .Sum(Sum50_out));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \L2[5].adders_i_1 
       (.I0(B[5]),
        .O(\L2[5].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__7 \L2[6].adders 
       (.A(\L2[6].adders_i_1_n_0 ),
        .B(1'b0),
        .Cin(temp_c_out_add_one_6),
        .Cout(temp_c_out_add_one_7),
        .Sum(Sum48_out));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \L2[6].adders_i_1 
       (.I0(B[6]),
        .O(\L2[6].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__8 \L2[7].adders 
       (.A(\L2[7].adders_i_1_n_0 ),
        .B(1'b0),
        .Cin(temp_c_out_add_one_7),
        .Cout(temp_c_out_add_one_8),
        .Sum(Sum46_out));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \L2[7].adders_i_1 
       (.I0(B[7]),
        .O(\L2[7].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__9 \L2[8].adders 
       (.A(\L2[8].adders_i_1_n_0 ),
        .B(1'b0),
        .Cin(temp_c_out_add_one_8),
        .Cout(temp_c_out_add_one_9),
        .Sum(Sum44_out));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \L2[8].adders_i_1 
       (.I0(B[8]),
        .O(\L2[8].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__10 \L2[9].adders 
       (.A(\L2[9].adders_i_1_n_0 ),
        .B(1'b0),
        .Cin(temp_c_out_add_one_9),
        .Cout(temp_c_out_add_one_10),
        .Sum(Sum42_out));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \L2[9].adders_i_1 
       (.I0(B[9]),
        .O(\L2[9].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__33 \L3[0].adders 
       (.A(A[0]),
        .B(\L3[0].adders_i_1_n_0 ),
        .Cin(1'b0),
        .Cout(temp_c_out_1),
        .Sum(result[0]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \L3[0].adders_i_1 
       (.I0(Sum),
        .I1(B[0]),
        .I2(k),
        .O(\L3[0].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__43 \L3[10].adders 
       (.A(A[10]),
        .B(\L3[10].adders_i_1_n_0 ),
        .Cin(temp_c_out_10),
        .Cout(temp_c_out_11),
        .Sum(result[10]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \L3[10].adders_i_1 
       (.I0(Sum40_out),
        .I1(B[10]),
        .I2(k),
        .O(\L3[10].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__44 \L3[11].adders 
       (.A(A[11]),
        .B(\L3[11].adders_i_1_n_0 ),
        .Cin(temp_c_out_11),
        .Cout(temp_c_out_12),
        .Sum(result[11]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \L3[11].adders_i_1 
       (.I0(Sum38_out),
        .I1(B[11]),
        .I2(k),
        .O(\L3[11].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__45 \L3[12].adders 
       (.A(A[12]),
        .B(\L3[12].adders_i_1_n_0 ),
        .Cin(temp_c_out_12),
        .Cout(temp_c_out_13),
        .Sum(result[12]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \L3[12].adders_i_1 
       (.I0(Sum36_out),
        .I1(B[12]),
        .I2(k),
        .O(\L3[12].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__46 \L3[13].adders 
       (.A(A[13]),
        .B(\L3[13].adders_i_1_n_0 ),
        .Cin(temp_c_out_13),
        .Cout(temp_c_out_14),
        .Sum(result[13]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \L3[13].adders_i_1 
       (.I0(Sum34_out),
        .I1(B[13]),
        .I2(k),
        .O(\L3[13].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__47 \L3[14].adders 
       (.A(A[14]),
        .B(\L3[14].adders_i_1_n_0 ),
        .Cin(temp_c_out_14),
        .Cout(temp_c_out_15),
        .Sum(result[14]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \L3[14].adders_i_1 
       (.I0(Sum32_out),
        .I1(B[14]),
        .I2(k),
        .O(\L3[14].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__48 \L3[15].adders 
       (.A(A[15]),
        .B(\L3[15].adders_i_1_n_0 ),
        .Cin(temp_c_out_15),
        .Cout(temp_c_out_16),
        .Sum(result[15]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \L3[15].adders_i_1 
       (.I0(Sum30_out),
        .I1(B[15]),
        .I2(k),
        .O(\L3[15].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__49 \L3[16].adders 
       (.A(A[16]),
        .B(\L3[16].adders_i_1_n_0 ),
        .Cin(temp_c_out_16),
        .Cout(temp_c_out_17),
        .Sum(result[16]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \L3[16].adders_i_1 
       (.I0(Sum28_out),
        .I1(B[16]),
        .I2(k),
        .O(\L3[16].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__50 \L3[17].adders 
       (.A(A[17]),
        .B(\L3[17].adders_i_1_n_0 ),
        .Cin(temp_c_out_17),
        .Cout(temp_c_out_18),
        .Sum(result[17]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \L3[17].adders_i_1 
       (.I0(Sum26_out),
        .I1(B[17]),
        .I2(k),
        .O(\L3[17].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__51 \L3[18].adders 
       (.A(A[18]),
        .B(\L3[18].adders_i_1_n_0 ),
        .Cin(temp_c_out_18),
        .Cout(temp_c_out_19),
        .Sum(result[18]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \L3[18].adders_i_1 
       (.I0(Sum24_out),
        .I1(B[18]),
        .I2(k),
        .O(\L3[18].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__52 \L3[19].adders 
       (.A(A[19]),
        .B(\L3[19].adders_i_1_n_0 ),
        .Cin(temp_c_out_19),
        .Cout(temp_c_out_20),
        .Sum(result[19]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \L3[19].adders_i_1 
       (.I0(Sum22_out),
        .I1(B[19]),
        .I2(k),
        .O(\L3[19].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__34 \L3[1].adders 
       (.A(A[1]),
        .B(\L3[1].adders_i_1_n_0 ),
        .Cin(temp_c_out_1),
        .Cout(temp_c_out_2),
        .Sum(result[1]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \L3[1].adders_i_1 
       (.I0(Sum58_out),
        .I1(B[1]),
        .I2(k),
        .O(\L3[1].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__53 \L3[20].adders 
       (.A(A[20]),
        .B(\L3[20].adders_i_1_n_0 ),
        .Cin(temp_c_out_20),
        .Cout(temp_c_out_21),
        .Sum(result[20]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \L3[20].adders_i_1 
       (.I0(Sum20_out),
        .I1(B[20]),
        .I2(k),
        .O(\L3[20].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__54 \L3[21].adders 
       (.A(A[21]),
        .B(\L3[21].adders_i_1_n_0 ),
        .Cin(temp_c_out_21),
        .Cout(temp_c_out_22),
        .Sum(result[21]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \L3[21].adders_i_1 
       (.I0(Sum18_out),
        .I1(B[21]),
        .I2(k),
        .O(\L3[21].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__55 \L3[22].adders 
       (.A(A[22]),
        .B(\L3[22].adders_i_1_n_0 ),
        .Cin(temp_c_out_22),
        .Cout(temp_c_out_23),
        .Sum(result[22]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \L3[22].adders_i_1 
       (.I0(Sum16_out),
        .I1(B[22]),
        .I2(k),
        .O(\L3[22].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__56 \L3[23].adders 
       (.A(A[23]),
        .B(\L3[23].adders_i_1_n_0 ),
        .Cin(temp_c_out_23),
        .Cout(temp_c_out_24),
        .Sum(result[23]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \L3[23].adders_i_1 
       (.I0(Sum14_out),
        .I1(B[23]),
        .I2(k),
        .O(\L3[23].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__57 \L3[24].adders 
       (.A(A[24]),
        .B(\L3[24].adders_i_1_n_0 ),
        .Cin(temp_c_out_24),
        .Cout(temp_c_out_25),
        .Sum(result[24]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \L3[24].adders_i_1 
       (.I0(Sum12_out),
        .I1(B[24]),
        .I2(k),
        .O(\L3[24].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__58 \L3[25].adders 
       (.A(A[25]),
        .B(\L3[25].adders_i_1_n_0 ),
        .Cin(temp_c_out_25),
        .Cout(temp_c_out_26),
        .Sum(result[25]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \L3[25].adders_i_1 
       (.I0(Sum10_out),
        .I1(B[25]),
        .I2(k),
        .O(\L3[25].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__59 \L3[26].adders 
       (.A(A[26]),
        .B(\L3[26].adders_i_1_n_0 ),
        .Cin(temp_c_out_26),
        .Cout(temp_c_out_27),
        .Sum(result[26]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \L3[26].adders_i_1 
       (.I0(Sum8_out),
        .I1(B[26]),
        .I2(k),
        .O(\L3[26].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__60 \L3[27].adders 
       (.A(A[27]),
        .B(\L3[27].adders_i_1_n_0 ),
        .Cin(temp_c_out_27),
        .Cout(temp_c_out_28),
        .Sum(result[27]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \L3[27].adders_i_1 
       (.I0(Sum6_out),
        .I1(B[27]),
        .I2(k),
        .O(\L3[27].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__61 \L3[28].adders 
       (.A(A[28]),
        .B(\L3[28].adders_i_1_n_0 ),
        .Cin(temp_c_out_28),
        .Cout(temp_c_out_29),
        .Sum(result[28]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \L3[28].adders_i_1 
       (.I0(Sum4_out),
        .I1(B[28]),
        .I2(k),
        .O(\L3[28].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__62 \L3[29].adders 
       (.A(A[29]),
        .B(\L3[29].adders_i_1_n_0 ),
        .Cin(temp_c_out_29),
        .Cout(temp_c_out_30),
        .Sum(result[29]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \L3[29].adders_i_1 
       (.I0(Sum2_out),
        .I1(B[29]),
        .I2(k),
        .O(\L3[29].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__35 \L3[2].adders 
       (.A(A[2]),
        .B(\L3[2].adders_i_1_n_0 ),
        .Cin(temp_c_out_2),
        .Cout(temp_c_out_3),
        .Sum(result[2]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \L3[2].adders_i_1 
       (.I0(Sum56_out),
        .I1(B[2]),
        .I2(k),
        .O(\L3[2].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__63 \L3[30].adders 
       (.A(A[30]),
        .B(\L3[30].adders_i_1_n_0 ),
        .Cin(temp_c_out_30),
        .Cout(temp_c_out_31),
        .Sum(result[30]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \L3[30].adders_i_1 
       (.I0(Sum0_out),
        .I1(B[30]),
        .I2(k),
        .O(\L3[30].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0 \L3[31].adders 
       (.A(A[31]),
        .B(\L3[31].adders_i_1_n_0 ),
        .Cin(temp_c_out_31),
        .Cout(overflow),
        .Sum(result[31]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \L3[31].adders_i_1 
       (.I0(\L2[31].adders_n_0 ),
        .I1(B[31]),
        .I2(k),
        .O(\L3[31].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__36 \L3[3].adders 
       (.A(A[3]),
        .B(\L3[3].adders_i_1_n_0 ),
        .Cin(temp_c_out_3),
        .Cout(temp_c_out_4),
        .Sum(result[3]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \L3[3].adders_i_1 
       (.I0(Sum54_out),
        .I1(B[3]),
        .I2(k),
        .O(\L3[3].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__37 \L3[4].adders 
       (.A(A[4]),
        .B(\L3[4].adders_i_1_n_0 ),
        .Cin(temp_c_out_4),
        .Cout(temp_c_out_5),
        .Sum(result[4]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \L3[4].adders_i_1 
       (.I0(Sum52_out),
        .I1(B[4]),
        .I2(k),
        .O(\L3[4].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__38 \L3[5].adders 
       (.A(A[5]),
        .B(\L3[5].adders_i_1_n_0 ),
        .Cin(temp_c_out_5),
        .Cout(temp_c_out_6),
        .Sum(result[5]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \L3[5].adders_i_1 
       (.I0(Sum50_out),
        .I1(B[5]),
        .I2(k),
        .O(\L3[5].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__39 \L3[6].adders 
       (.A(A[6]),
        .B(\L3[6].adders_i_1_n_0 ),
        .Cin(temp_c_out_6),
        .Cout(temp_c_out_7),
        .Sum(result[6]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \L3[6].adders_i_1 
       (.I0(Sum48_out),
        .I1(B[6]),
        .I2(k),
        .O(\L3[6].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__40 \L3[7].adders 
       (.A(A[7]),
        .B(\L3[7].adders_i_1_n_0 ),
        .Cin(temp_c_out_7),
        .Cout(temp_c_out_8),
        .Sum(result[7]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \L3[7].adders_i_1 
       (.I0(Sum46_out),
        .I1(B[7]),
        .I2(k),
        .O(\L3[7].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__41 \L3[8].adders 
       (.A(A[8]),
        .B(\L3[8].adders_i_1_n_0 ),
        .Cin(temp_c_out_8),
        .Cout(temp_c_out_9),
        .Sum(result[8]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \L3[8].adders_i_1 
       (.I0(Sum44_out),
        .I1(B[8]),
        .I2(k),
        .O(\L3[8].adders_i_1_n_0 ));
  (* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "full_adder,Vivado 2018.3" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__42 \L3[9].adders 
       (.A(A[9]),
        .B(\L3[9].adders_i_1_n_0 ),
        .Cin(temp_c_out_9),
        .Cout(temp_c_out_10),
        .Sum(result[9]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \L3[9].adders_i_1 
       (.I0(Sum42_out),
        .I1(B[9]),
        .I2(k),
        .O(\L3[9].adders_i_1_n_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__1
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_62 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__10
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_53 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__11
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_52 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__12
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_51 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__13
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_50 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__14
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_49 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__15
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_48 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__16
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_47 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__17
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_46 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__18
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_45 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__19
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_44 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__2
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_61 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__20
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_43 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__21
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_42 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__22
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_41 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__23
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_40 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__24
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_39 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__25
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_38 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__26
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_37 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__27
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_36 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__28
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_35 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__29
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_34 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__3
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_60 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__30
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_33 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__31
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_32 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__32
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_31 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__33
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_30 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__34
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_29 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__35
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_28 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__36
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_27 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__37
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_26 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__38
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_25 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__39
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_24 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__4
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_59 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__40
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_23 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__41
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_22 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__42
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_21 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__43
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_20 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__44
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_19 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__45
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_18 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__46
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_17 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__47
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_16 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__48
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_15 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__49
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_14 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__5
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_58 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__50
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_13 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__51
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_12 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__52
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_11 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__53
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_10 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__54
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_9 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__55
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_8 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__56
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_7 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__57
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_6 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__58
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_5 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__59
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_4 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__6
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_57 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__60
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_3 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__61
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_2 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__62
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__63
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__64 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__64
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__7
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_56 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__8
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_55 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* CHECK_LICENSE_TYPE = "full_adder_0,full_adder,{}" *) (* ORIG_REF_NAME = "full_adder_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "full_adder,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0__9
   (A,
    B,
    Cin,
    Sum,
    Cout);
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_54 U0
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .Sum(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_1
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_10
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_11
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_12
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_13
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_14
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_15
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_16
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_17
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_18
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_19
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_2
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_20
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_21
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_22
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_23
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_24
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_25
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_26
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_27
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_28
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_29
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_3
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_30
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_31
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_32
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_33
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_34
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_35
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_36
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_37
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_38
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_39
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_4
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_40
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_41
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_42
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_43
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_44
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_45
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_46
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_47
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_48
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_49
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_5
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_50
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_51
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_52
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_53
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_54
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_55
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_56
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_57
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_58
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_59
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_6
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_60
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_61
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_62
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_7
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_8
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
endmodule

(* ORIG_REF_NAME = "full_adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_9
   (Sum,
    Cout,
    B,
    A,
    Cin);
  output Sum;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire Sum;

  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Cout__0
       (.I0(B),
        .I1(Cin),
        .I2(A),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum__0
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(Sum));
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
