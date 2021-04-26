-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Feb  5 17:30:22 2021
-- Host        : DESKTOP-9AE4DJD running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Lab_1_adder_subtractor_0_0_sim_netlist.vhdl
-- Design      : Lab_1_adder_subtractor_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_subtractor is
  port (
    result : out STD_LOGIC_VECTOR ( 31 downto 0 );
    overflow : out STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    k : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_subtractor;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_subtractor is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Cin : in STD_LOGIC;
    Sum : out STD_LOGIC;
    Cout : out STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0;
  signal \L2[0].adders_i_1_n_0\ : STD_LOGIC;
  signal \L2[10].adders_i_1_n_0\ : STD_LOGIC;
  signal \L2[11].adders_i_1_n_0\ : STD_LOGIC;
  signal \L2[12].adders_i_1_n_0\ : STD_LOGIC;
  signal \L2[13].adders_i_1_n_0\ : STD_LOGIC;
  signal \L2[14].adders_i_1_n_0\ : STD_LOGIC;
  signal \L2[15].adders_i_1_n_0\ : STD_LOGIC;
  signal \L2[16].adders_i_1_n_0\ : STD_LOGIC;
  signal \L2[17].adders_i_1_n_0\ : STD_LOGIC;
  signal \L2[18].adders_i_1_n_0\ : STD_LOGIC;
  signal \L2[19].adders_i_1_n_0\ : STD_LOGIC;
  signal \L2[1].adders_i_1_n_0\ : STD_LOGIC;
  signal \L2[20].adders_i_1_n_0\ : STD_LOGIC;
  signal \L2[21].adders_i_1_n_0\ : STD_LOGIC;
  signal \L2[22].adders_i_1_n_0\ : STD_LOGIC;
  signal \L2[23].adders_i_1_n_0\ : STD_LOGIC;
  signal \L2[24].adders_i_1_n_0\ : STD_LOGIC;
  signal \L2[25].adders_i_1_n_0\ : STD_LOGIC;
  signal \L2[26].adders_i_1_n_0\ : STD_LOGIC;
  signal \L2[27].adders_i_1_n_0\ : STD_LOGIC;
  signal \L2[28].adders_i_1_n_0\ : STD_LOGIC;
  signal \L2[29].adders_i_1_n_0\ : STD_LOGIC;
  signal \L2[2].adders_i_1_n_0\ : STD_LOGIC;
  signal \L2[30].adders_i_1_n_0\ : STD_LOGIC;
  signal \L2[31].adders_i_1_n_0\ : STD_LOGIC;
  signal \L2[31].adders_n_0\ : STD_LOGIC;
  signal \L2[3].adders_i_1_n_0\ : STD_LOGIC;
  signal \L2[4].adders_i_1_n_0\ : STD_LOGIC;
  signal \L2[5].adders_i_1_n_0\ : STD_LOGIC;
  signal \L2[6].adders_i_1_n_0\ : STD_LOGIC;
  signal \L2[7].adders_i_1_n_0\ : STD_LOGIC;
  signal \L2[8].adders_i_1_n_0\ : STD_LOGIC;
  signal \L2[9].adders_i_1_n_0\ : STD_LOGIC;
  signal \L3[0].adders_i_1_n_0\ : STD_LOGIC;
  signal \L3[10].adders_i_1_n_0\ : STD_LOGIC;
  signal \L3[11].adders_i_1_n_0\ : STD_LOGIC;
  signal \L3[12].adders_i_1_n_0\ : STD_LOGIC;
  signal \L3[13].adders_i_1_n_0\ : STD_LOGIC;
  signal \L3[14].adders_i_1_n_0\ : STD_LOGIC;
  signal \L3[15].adders_i_1_n_0\ : STD_LOGIC;
  signal \L3[16].adders_i_1_n_0\ : STD_LOGIC;
  signal \L3[17].adders_i_1_n_0\ : STD_LOGIC;
  signal \L3[18].adders_i_1_n_0\ : STD_LOGIC;
  signal \L3[19].adders_i_1_n_0\ : STD_LOGIC;
  signal \L3[1].adders_i_1_n_0\ : STD_LOGIC;
  signal \L3[20].adders_i_1_n_0\ : STD_LOGIC;
  signal \L3[21].adders_i_1_n_0\ : STD_LOGIC;
  signal \L3[22].adders_i_1_n_0\ : STD_LOGIC;
  signal \L3[23].adders_i_1_n_0\ : STD_LOGIC;
  signal \L3[24].adders_i_1_n_0\ : STD_LOGIC;
  signal \L3[25].adders_i_1_n_0\ : STD_LOGIC;
  signal \L3[26].adders_i_1_n_0\ : STD_LOGIC;
  signal \L3[27].adders_i_1_n_0\ : STD_LOGIC;
  signal \L3[28].adders_i_1_n_0\ : STD_LOGIC;
  signal \L3[29].adders_i_1_n_0\ : STD_LOGIC;
  signal \L3[2].adders_i_1_n_0\ : STD_LOGIC;
  signal \L3[30].adders_i_1_n_0\ : STD_LOGIC;
  signal \L3[31].adders_i_1_n_0\ : STD_LOGIC;
  signal \L3[3].adders_i_1_n_0\ : STD_LOGIC;
  signal \L3[4].adders_i_1_n_0\ : STD_LOGIC;
  signal \L3[5].adders_i_1_n_0\ : STD_LOGIC;
  signal \L3[6].adders_i_1_n_0\ : STD_LOGIC;
  signal \L3[7].adders_i_1_n_0\ : STD_LOGIC;
  signal \L3[8].adders_i_1_n_0\ : STD_LOGIC;
  signal \L3[9].adders_i_1_n_0\ : STD_LOGIC;
  signal Sum : STD_LOGIC;
  signal Sum0_out : STD_LOGIC;
  signal Sum10_out : STD_LOGIC;
  signal Sum11_out : STD_LOGIC;
  signal Sum12_out : STD_LOGIC;
  signal Sum13_out : STD_LOGIC;
  signal Sum14_out : STD_LOGIC;
  signal Sum15_out : STD_LOGIC;
  signal Sum16_out : STD_LOGIC;
  signal Sum17_out : STD_LOGIC;
  signal Sum18_out : STD_LOGIC;
  signal Sum19_out : STD_LOGIC;
  signal Sum1_out : STD_LOGIC;
  signal Sum20_out : STD_LOGIC;
  signal Sum21_out : STD_LOGIC;
  signal Sum22_out : STD_LOGIC;
  signal Sum23_out : STD_LOGIC;
  signal Sum24_out : STD_LOGIC;
  signal Sum25_out : STD_LOGIC;
  signal Sum26_out : STD_LOGIC;
  signal Sum27_out : STD_LOGIC;
  signal Sum28_out : STD_LOGIC;
  signal Sum29_out : STD_LOGIC;
  signal Sum2_out : STD_LOGIC;
  signal Sum3_out : STD_LOGIC;
  signal Sum4_out : STD_LOGIC;
  signal Sum5_out : STD_LOGIC;
  signal Sum6_out : STD_LOGIC;
  signal Sum7_out : STD_LOGIC;
  signal Sum8_out : STD_LOGIC;
  signal Sum9_out : STD_LOGIC;
  signal temp_c_out_1 : STD_LOGIC;
  signal temp_c_out_10 : STD_LOGIC;
  signal temp_c_out_11 : STD_LOGIC;
  signal temp_c_out_12 : STD_LOGIC;
  signal temp_c_out_13 : STD_LOGIC;
  signal temp_c_out_14 : STD_LOGIC;
  signal temp_c_out_15 : STD_LOGIC;
  signal temp_c_out_16 : STD_LOGIC;
  signal temp_c_out_17 : STD_LOGIC;
  signal temp_c_out_18 : STD_LOGIC;
  signal temp_c_out_19 : STD_LOGIC;
  signal temp_c_out_2 : STD_LOGIC;
  signal temp_c_out_20 : STD_LOGIC;
  signal temp_c_out_21 : STD_LOGIC;
  signal temp_c_out_22 : STD_LOGIC;
  signal temp_c_out_23 : STD_LOGIC;
  signal temp_c_out_24 : STD_LOGIC;
  signal temp_c_out_25 : STD_LOGIC;
  signal temp_c_out_26 : STD_LOGIC;
  signal temp_c_out_27 : STD_LOGIC;
  signal temp_c_out_28 : STD_LOGIC;
  signal temp_c_out_29 : STD_LOGIC;
  signal temp_c_out_3 : STD_LOGIC;
  signal temp_c_out_30 : STD_LOGIC;
  signal temp_c_out_31 : STD_LOGIC;
  signal temp_c_out_4 : STD_LOGIC;
  signal temp_c_out_5 : STD_LOGIC;
  signal temp_c_out_6 : STD_LOGIC;
  signal temp_c_out_7 : STD_LOGIC;
  signal temp_c_out_8 : STD_LOGIC;
  signal temp_c_out_9 : STD_LOGIC;
  signal temp_c_out_add_one_1 : STD_LOGIC;
  signal temp_c_out_add_one_10 : STD_LOGIC;
  signal temp_c_out_add_one_11 : STD_LOGIC;
  signal temp_c_out_add_one_12 : STD_LOGIC;
  signal temp_c_out_add_one_13 : STD_LOGIC;
  signal temp_c_out_add_one_14 : STD_LOGIC;
  signal temp_c_out_add_one_15 : STD_LOGIC;
  signal temp_c_out_add_one_16 : STD_LOGIC;
  signal temp_c_out_add_one_17 : STD_LOGIC;
  signal temp_c_out_add_one_18 : STD_LOGIC;
  signal temp_c_out_add_one_19 : STD_LOGIC;
  signal temp_c_out_add_one_2 : STD_LOGIC;
  signal temp_c_out_add_one_20 : STD_LOGIC;
  signal temp_c_out_add_one_21 : STD_LOGIC;
  signal temp_c_out_add_one_22 : STD_LOGIC;
  signal temp_c_out_add_one_23 : STD_LOGIC;
  signal temp_c_out_add_one_24 : STD_LOGIC;
  signal temp_c_out_add_one_25 : STD_LOGIC;
  signal temp_c_out_add_one_26 : STD_LOGIC;
  signal temp_c_out_add_one_27 : STD_LOGIC;
  signal temp_c_out_add_one_28 : STD_LOGIC;
  signal temp_c_out_add_one_29 : STD_LOGIC;
  signal temp_c_out_add_one_3 : STD_LOGIC;
  signal temp_c_out_add_one_30 : STD_LOGIC;
  signal temp_c_out_add_one_31 : STD_LOGIC;
  signal temp_c_out_add_one_4 : STD_LOGIC;
  signal temp_c_out_add_one_5 : STD_LOGIC;
  signal temp_c_out_add_one_6 : STD_LOGIC;
  signal temp_c_out_add_one_7 : STD_LOGIC;
  signal temp_c_out_add_one_8 : STD_LOGIC;
  signal temp_c_out_add_one_9 : STD_LOGIC;
  signal \NLW_L2[31].adders_Cout_UNCONNECTED\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \L2[0].adders_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \L2[10].adders_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \L2[11].adders_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \L2[12].adders_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \L2[13].adders_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \L2[14].adders_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \L2[15].adders_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \L2[16].adders_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \L2[17].adders_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \L2[18].adders_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \L2[19].adders_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \L2[1].adders_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \L2[20].adders_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \L2[21].adders_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \L2[22].adders_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \L2[23].adders_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \L2[24].adders_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \L2[25].adders_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \L2[26].adders_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \L2[27].adders_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \L2[28].adders_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \L2[29].adders_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \L2[2].adders_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \L2[30].adders_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \L2[31].adders_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \L2[3].adders_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \L2[4].adders_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \L2[5].adders_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \L2[6].adders_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \L2[7].adders_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \L2[8].adders_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \L2[9].adders_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \L3[0].adders_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \L3[10].adders_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \L3[11].adders_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \L3[12].adders_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \L3[13].adders_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \L3[14].adders_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \L3[15].adders_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \L3[16].adders_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \L3[17].adders_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \L3[18].adders_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \L3[19].adders_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \L3[1].adders_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \L3[20].adders_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \L3[21].adders_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \L3[22].adders_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \L3[23].adders_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \L3[24].adders_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \L3[25].adders_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \L3[26].adders_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \L3[27].adders_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \L3[28].adders_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \L3[29].adders_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \L3[2].adders_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \L3[30].adders_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \L3[31].adders_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \L3[3].adders_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \L3[4].adders_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \L3[5].adders_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \L3[6].adders_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \L3[7].adders_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \L3[8].adders_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \L3[9].adders_i_1\ : label is "soft_lutpair9";
begin
\L2[0].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => \L2[0].adders_i_1_n_0\,
      B => '1',
      Cin => '0',
      Cout => temp_c_out_add_one_1,
      Sum => Sum
    );
\L2[0].adders_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(0),
      O => \L2[0].adders_i_1_n_0\
    );
\L2[10].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => \L2[10].adders_i_1_n_0\,
      B => '0',
      Cin => temp_c_out_add_one_10,
      Cout => temp_c_out_add_one_11,
      Sum => Sum20_out
    );
\L2[10].adders_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(10),
      O => \L2[10].adders_i_1_n_0\
    );
\L2[11].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => \L2[11].adders_i_1_n_0\,
      B => '0',
      Cin => temp_c_out_add_one_11,
      Cout => temp_c_out_add_one_12,
      Sum => Sum19_out
    );
\L2[11].adders_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(11),
      O => \L2[11].adders_i_1_n_0\
    );
\L2[12].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => \L2[12].adders_i_1_n_0\,
      B => '0',
      Cin => temp_c_out_add_one_12,
      Cout => temp_c_out_add_one_13,
      Sum => Sum18_out
    );
\L2[12].adders_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(12),
      O => \L2[12].adders_i_1_n_0\
    );
\L2[13].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => \L2[13].adders_i_1_n_0\,
      B => '0',
      Cin => temp_c_out_add_one_13,
      Cout => temp_c_out_add_one_14,
      Sum => Sum17_out
    );
\L2[13].adders_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(13),
      O => \L2[13].adders_i_1_n_0\
    );
\L2[14].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => \L2[14].adders_i_1_n_0\,
      B => '0',
      Cin => temp_c_out_add_one_14,
      Cout => temp_c_out_add_one_15,
      Sum => Sum16_out
    );
\L2[14].adders_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(14),
      O => \L2[14].adders_i_1_n_0\
    );
\L2[15].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => \L2[15].adders_i_1_n_0\,
      B => '0',
      Cin => temp_c_out_add_one_15,
      Cout => temp_c_out_add_one_16,
      Sum => Sum15_out
    );
\L2[15].adders_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(15),
      O => \L2[15].adders_i_1_n_0\
    );
\L2[16].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => \L2[16].adders_i_1_n_0\,
      B => '0',
      Cin => temp_c_out_add_one_16,
      Cout => temp_c_out_add_one_17,
      Sum => Sum14_out
    );
\L2[16].adders_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(16),
      O => \L2[16].adders_i_1_n_0\
    );
\L2[17].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => \L2[17].adders_i_1_n_0\,
      B => '0',
      Cin => temp_c_out_add_one_17,
      Cout => temp_c_out_add_one_18,
      Sum => Sum13_out
    );
\L2[17].adders_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(17),
      O => \L2[17].adders_i_1_n_0\
    );
\L2[18].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => \L2[18].adders_i_1_n_0\,
      B => '0',
      Cin => temp_c_out_add_one_18,
      Cout => temp_c_out_add_one_19,
      Sum => Sum12_out
    );
\L2[18].adders_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(18),
      O => \L2[18].adders_i_1_n_0\
    );
\L2[19].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => \L2[19].adders_i_1_n_0\,
      B => '0',
      Cin => temp_c_out_add_one_19,
      Cout => temp_c_out_add_one_20,
      Sum => Sum11_out
    );
\L2[19].adders_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(19),
      O => \L2[19].adders_i_1_n_0\
    );
\L2[1].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => \L2[1].adders_i_1_n_0\,
      B => '0',
      Cin => temp_c_out_add_one_1,
      Cout => temp_c_out_add_one_2,
      Sum => Sum29_out
    );
\L2[1].adders_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(1),
      O => \L2[1].adders_i_1_n_0\
    );
\L2[20].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => \L2[20].adders_i_1_n_0\,
      B => '0',
      Cin => temp_c_out_add_one_20,
      Cout => temp_c_out_add_one_21,
      Sum => Sum10_out
    );
\L2[20].adders_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(20),
      O => \L2[20].adders_i_1_n_0\
    );
\L2[21].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => \L2[21].adders_i_1_n_0\,
      B => '0',
      Cin => temp_c_out_add_one_21,
      Cout => temp_c_out_add_one_22,
      Sum => Sum9_out
    );
\L2[21].adders_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(21),
      O => \L2[21].adders_i_1_n_0\
    );
\L2[22].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => \L2[22].adders_i_1_n_0\,
      B => '0',
      Cin => temp_c_out_add_one_22,
      Cout => temp_c_out_add_one_23,
      Sum => Sum8_out
    );
\L2[22].adders_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(22),
      O => \L2[22].adders_i_1_n_0\
    );
\L2[23].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => \L2[23].adders_i_1_n_0\,
      B => '0',
      Cin => temp_c_out_add_one_23,
      Cout => temp_c_out_add_one_24,
      Sum => Sum7_out
    );
\L2[23].adders_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(23),
      O => \L2[23].adders_i_1_n_0\
    );
\L2[24].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => \L2[24].adders_i_1_n_0\,
      B => '0',
      Cin => temp_c_out_add_one_24,
      Cout => temp_c_out_add_one_25,
      Sum => Sum6_out
    );
\L2[24].adders_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(24),
      O => \L2[24].adders_i_1_n_0\
    );
\L2[25].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => \L2[25].adders_i_1_n_0\,
      B => '0',
      Cin => temp_c_out_add_one_25,
      Cout => temp_c_out_add_one_26,
      Sum => Sum5_out
    );
\L2[25].adders_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(25),
      O => \L2[25].adders_i_1_n_0\
    );
\L2[26].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => \L2[26].adders_i_1_n_0\,
      B => '0',
      Cin => temp_c_out_add_one_26,
      Cout => temp_c_out_add_one_27,
      Sum => Sum4_out
    );
\L2[26].adders_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(26),
      O => \L2[26].adders_i_1_n_0\
    );
\L2[27].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => \L2[27].adders_i_1_n_0\,
      B => '0',
      Cin => temp_c_out_add_one_27,
      Cout => temp_c_out_add_one_28,
      Sum => Sum3_out
    );
\L2[27].adders_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(27),
      O => \L2[27].adders_i_1_n_0\
    );
\L2[28].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => \L2[28].adders_i_1_n_0\,
      B => '0',
      Cin => temp_c_out_add_one_28,
      Cout => temp_c_out_add_one_29,
      Sum => Sum2_out
    );
\L2[28].adders_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(28),
      O => \L2[28].adders_i_1_n_0\
    );
\L2[29].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => \L2[29].adders_i_1_n_0\,
      B => '0',
      Cin => temp_c_out_add_one_29,
      Cout => temp_c_out_add_one_30,
      Sum => Sum1_out
    );
\L2[29].adders_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(29),
      O => \L2[29].adders_i_1_n_0\
    );
\L2[2].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => \L2[2].adders_i_1_n_0\,
      B => '0',
      Cin => temp_c_out_add_one_2,
      Cout => temp_c_out_add_one_3,
      Sum => Sum28_out
    );
\L2[2].adders_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(2),
      O => \L2[2].adders_i_1_n_0\
    );
\L2[30].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => \L2[30].adders_i_1_n_0\,
      B => '0',
      Cin => temp_c_out_add_one_30,
      Cout => temp_c_out_add_one_31,
      Sum => Sum0_out
    );
\L2[30].adders_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(30),
      O => \L2[30].adders_i_1_n_0\
    );
\L2[31].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => \L2[31].adders_i_1_n_0\,
      B => '0',
      Cin => temp_c_out_add_one_31,
      Cout => \NLW_L2[31].adders_Cout_UNCONNECTED\,
      Sum => \L2[31].adders_n_0\
    );
\L2[31].adders_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(31),
      O => \L2[31].adders_i_1_n_0\
    );
\L2[3].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => \L2[3].adders_i_1_n_0\,
      B => '0',
      Cin => temp_c_out_add_one_3,
      Cout => temp_c_out_add_one_4,
      Sum => Sum27_out
    );
\L2[3].adders_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(3),
      O => \L2[3].adders_i_1_n_0\
    );
\L2[4].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => \L2[4].adders_i_1_n_0\,
      B => '0',
      Cin => temp_c_out_add_one_4,
      Cout => temp_c_out_add_one_5,
      Sum => Sum26_out
    );
\L2[4].adders_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(4),
      O => \L2[4].adders_i_1_n_0\
    );
\L2[5].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => \L2[5].adders_i_1_n_0\,
      B => '0',
      Cin => temp_c_out_add_one_5,
      Cout => temp_c_out_add_one_6,
      Sum => Sum25_out
    );
\L2[5].adders_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(5),
      O => \L2[5].adders_i_1_n_0\
    );
\L2[6].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => \L2[6].adders_i_1_n_0\,
      B => '0',
      Cin => temp_c_out_add_one_6,
      Cout => temp_c_out_add_one_7,
      Sum => Sum24_out
    );
\L2[6].adders_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(6),
      O => \L2[6].adders_i_1_n_0\
    );
\L2[7].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => \L2[7].adders_i_1_n_0\,
      B => '0',
      Cin => temp_c_out_add_one_7,
      Cout => temp_c_out_add_one_8,
      Sum => Sum23_out
    );
\L2[7].adders_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(7),
      O => \L2[7].adders_i_1_n_0\
    );
\L2[8].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => \L2[8].adders_i_1_n_0\,
      B => '0',
      Cin => temp_c_out_add_one_8,
      Cout => temp_c_out_add_one_9,
      Sum => Sum22_out
    );
\L2[8].adders_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(8),
      O => \L2[8].adders_i_1_n_0\
    );
\L2[9].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => \L2[9].adders_i_1_n_0\,
      B => '0',
      Cin => temp_c_out_add_one_9,
      Cout => temp_c_out_add_one_10,
      Sum => Sum21_out
    );
\L2[9].adders_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => B(9),
      O => \L2[9].adders_i_1_n_0\
    );
\L3[0].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => A(0),
      B => \L3[0].adders_i_1_n_0\,
      Cin => '0',
      Cout => temp_c_out_1,
      Sum => result(0)
    );
\L3[0].adders_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sum,
      I1 => B(0),
      I2 => k,
      O => \L3[0].adders_i_1_n_0\
    );
\L3[10].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => A(10),
      B => \L3[10].adders_i_1_n_0\,
      Cin => temp_c_out_10,
      Cout => temp_c_out_11,
      Sum => result(10)
    );
\L3[10].adders_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sum20_out,
      I1 => B(10),
      I2 => k,
      O => \L3[10].adders_i_1_n_0\
    );
\L3[11].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => A(11),
      B => \L3[11].adders_i_1_n_0\,
      Cin => temp_c_out_11,
      Cout => temp_c_out_12,
      Sum => result(11)
    );
\L3[11].adders_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sum19_out,
      I1 => B(11),
      I2 => k,
      O => \L3[11].adders_i_1_n_0\
    );
\L3[12].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => A(12),
      B => \L3[12].adders_i_1_n_0\,
      Cin => temp_c_out_12,
      Cout => temp_c_out_13,
      Sum => result(12)
    );
\L3[12].adders_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sum18_out,
      I1 => B(12),
      I2 => k,
      O => \L3[12].adders_i_1_n_0\
    );
\L3[13].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => A(13),
      B => \L3[13].adders_i_1_n_0\,
      Cin => temp_c_out_13,
      Cout => temp_c_out_14,
      Sum => result(13)
    );
\L3[13].adders_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sum17_out,
      I1 => B(13),
      I2 => k,
      O => \L3[13].adders_i_1_n_0\
    );
\L3[14].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => A(14),
      B => \L3[14].adders_i_1_n_0\,
      Cin => temp_c_out_14,
      Cout => temp_c_out_15,
      Sum => result(14)
    );
\L3[14].adders_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sum16_out,
      I1 => B(14),
      I2 => k,
      O => \L3[14].adders_i_1_n_0\
    );
\L3[15].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => A(15),
      B => \L3[15].adders_i_1_n_0\,
      Cin => temp_c_out_15,
      Cout => temp_c_out_16,
      Sum => result(15)
    );
\L3[15].adders_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sum15_out,
      I1 => B(15),
      I2 => k,
      O => \L3[15].adders_i_1_n_0\
    );
\L3[16].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => A(16),
      B => \L3[16].adders_i_1_n_0\,
      Cin => temp_c_out_16,
      Cout => temp_c_out_17,
      Sum => result(16)
    );
\L3[16].adders_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sum14_out,
      I1 => B(16),
      I2 => k,
      O => \L3[16].adders_i_1_n_0\
    );
\L3[17].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => A(17),
      B => \L3[17].adders_i_1_n_0\,
      Cin => temp_c_out_17,
      Cout => temp_c_out_18,
      Sum => result(17)
    );
\L3[17].adders_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sum13_out,
      I1 => B(17),
      I2 => k,
      O => \L3[17].adders_i_1_n_0\
    );
\L3[18].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => A(18),
      B => \L3[18].adders_i_1_n_0\,
      Cin => temp_c_out_18,
      Cout => temp_c_out_19,
      Sum => result(18)
    );
\L3[18].adders_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sum12_out,
      I1 => B(18),
      I2 => k,
      O => \L3[18].adders_i_1_n_0\
    );
\L3[19].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => A(19),
      B => \L3[19].adders_i_1_n_0\,
      Cin => temp_c_out_19,
      Cout => temp_c_out_20,
      Sum => result(19)
    );
\L3[19].adders_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sum11_out,
      I1 => B(19),
      I2 => k,
      O => \L3[19].adders_i_1_n_0\
    );
\L3[1].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => A(1),
      B => \L3[1].adders_i_1_n_0\,
      Cin => temp_c_out_1,
      Cout => temp_c_out_2,
      Sum => result(1)
    );
\L3[1].adders_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sum29_out,
      I1 => B(1),
      I2 => k,
      O => \L3[1].adders_i_1_n_0\
    );
\L3[20].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => A(20),
      B => \L3[20].adders_i_1_n_0\,
      Cin => temp_c_out_20,
      Cout => temp_c_out_21,
      Sum => result(20)
    );
\L3[20].adders_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sum10_out,
      I1 => B(20),
      I2 => k,
      O => \L3[20].adders_i_1_n_0\
    );
\L3[21].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => A(21),
      B => \L3[21].adders_i_1_n_0\,
      Cin => temp_c_out_21,
      Cout => temp_c_out_22,
      Sum => result(21)
    );
\L3[21].adders_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sum9_out,
      I1 => B(21),
      I2 => k,
      O => \L3[21].adders_i_1_n_0\
    );
\L3[22].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => A(22),
      B => \L3[22].adders_i_1_n_0\,
      Cin => temp_c_out_22,
      Cout => temp_c_out_23,
      Sum => result(22)
    );
\L3[22].adders_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sum8_out,
      I1 => B(22),
      I2 => k,
      O => \L3[22].adders_i_1_n_0\
    );
\L3[23].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => A(23),
      B => \L3[23].adders_i_1_n_0\,
      Cin => temp_c_out_23,
      Cout => temp_c_out_24,
      Sum => result(23)
    );
\L3[23].adders_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sum7_out,
      I1 => B(23),
      I2 => k,
      O => \L3[23].adders_i_1_n_0\
    );
\L3[24].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => A(24),
      B => \L3[24].adders_i_1_n_0\,
      Cin => temp_c_out_24,
      Cout => temp_c_out_25,
      Sum => result(24)
    );
\L3[24].adders_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sum6_out,
      I1 => B(24),
      I2 => k,
      O => \L3[24].adders_i_1_n_0\
    );
\L3[25].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => A(25),
      B => \L3[25].adders_i_1_n_0\,
      Cin => temp_c_out_25,
      Cout => temp_c_out_26,
      Sum => result(25)
    );
\L3[25].adders_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sum5_out,
      I1 => B(25),
      I2 => k,
      O => \L3[25].adders_i_1_n_0\
    );
\L3[26].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => A(26),
      B => \L3[26].adders_i_1_n_0\,
      Cin => temp_c_out_26,
      Cout => temp_c_out_27,
      Sum => result(26)
    );
\L3[26].adders_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sum4_out,
      I1 => B(26),
      I2 => k,
      O => \L3[26].adders_i_1_n_0\
    );
\L3[27].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => A(27),
      B => \L3[27].adders_i_1_n_0\,
      Cin => temp_c_out_27,
      Cout => temp_c_out_28,
      Sum => result(27)
    );
\L3[27].adders_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sum3_out,
      I1 => B(27),
      I2 => k,
      O => \L3[27].adders_i_1_n_0\
    );
\L3[28].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => A(28),
      B => \L3[28].adders_i_1_n_0\,
      Cin => temp_c_out_28,
      Cout => temp_c_out_29,
      Sum => result(28)
    );
\L3[28].adders_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sum2_out,
      I1 => B(28),
      I2 => k,
      O => \L3[28].adders_i_1_n_0\
    );
\L3[29].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => A(29),
      B => \L3[29].adders_i_1_n_0\,
      Cin => temp_c_out_29,
      Cout => temp_c_out_30,
      Sum => result(29)
    );
\L3[29].adders_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sum1_out,
      I1 => B(29),
      I2 => k,
      O => \L3[29].adders_i_1_n_0\
    );
\L3[2].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => A(2),
      B => \L3[2].adders_i_1_n_0\,
      Cin => temp_c_out_2,
      Cout => temp_c_out_3,
      Sum => result(2)
    );
\L3[2].adders_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sum28_out,
      I1 => B(2),
      I2 => k,
      O => \L3[2].adders_i_1_n_0\
    );
\L3[30].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => A(30),
      B => \L3[30].adders_i_1_n_0\,
      Cin => temp_c_out_30,
      Cout => temp_c_out_31,
      Sum => result(30)
    );
\L3[30].adders_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sum0_out,
      I1 => B(30),
      I2 => k,
      O => \L3[30].adders_i_1_n_0\
    );
\L3[31].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => A(31),
      B => \L3[31].adders_i_1_n_0\,
      Cin => temp_c_out_31,
      Cout => overflow,
      Sum => result(31)
    );
\L3[31].adders_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \L2[31].adders_n_0\,
      I1 => B(31),
      I2 => k,
      O => \L3[31].adders_i_1_n_0\
    );
\L3[3].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => A(3),
      B => \L3[3].adders_i_1_n_0\,
      Cin => temp_c_out_3,
      Cout => temp_c_out_4,
      Sum => result(3)
    );
\L3[3].adders_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sum27_out,
      I1 => B(3),
      I2 => k,
      O => \L3[3].adders_i_1_n_0\
    );
\L3[4].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => A(4),
      B => \L3[4].adders_i_1_n_0\,
      Cin => temp_c_out_4,
      Cout => temp_c_out_5,
      Sum => result(4)
    );
\L3[4].adders_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sum26_out,
      I1 => B(4),
      I2 => k,
      O => \L3[4].adders_i_1_n_0\
    );
\L3[5].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => A(5),
      B => \L3[5].adders_i_1_n_0\,
      Cin => temp_c_out_5,
      Cout => temp_c_out_6,
      Sum => result(5)
    );
\L3[5].adders_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sum25_out,
      I1 => B(5),
      I2 => k,
      O => \L3[5].adders_i_1_n_0\
    );
\L3[6].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => A(6),
      B => \L3[6].adders_i_1_n_0\,
      Cin => temp_c_out_6,
      Cout => temp_c_out_7,
      Sum => result(6)
    );
\L3[6].adders_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sum24_out,
      I1 => B(6),
      I2 => k,
      O => \L3[6].adders_i_1_n_0\
    );
\L3[7].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => A(7),
      B => \L3[7].adders_i_1_n_0\,
      Cin => temp_c_out_7,
      Cout => temp_c_out_8,
      Sum => result(7)
    );
\L3[7].adders_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sum23_out,
      I1 => B(7),
      I2 => k,
      O => \L3[7].adders_i_1_n_0\
    );
\L3[8].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => A(8),
      B => \L3[8].adders_i_1_n_0\,
      Cin => temp_c_out_8,
      Cout => temp_c_out_9,
      Sum => result(8)
    );
\L3[8].adders_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sum22_out,
      I1 => B(8),
      I2 => k,
      O => \L3[8].adders_i_1_n_0\
    );
\L3[9].adders\: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_adder_0
     port map (
      A => A(9),
      B => \L3[9].adders_i_1_n_0\,
      Cin => temp_c_out_9,
      Cout => temp_c_out_10,
      Sum => result(9)
    );
\L3[9].adders_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sum21_out,
      I1 => B(9),
      I2 => k,
      O => \L3[9].adders_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    k : in STD_LOGIC;
    result : out STD_LOGIC_VECTOR ( 31 downto 0 );
    overflow : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Lab_1_adder_subtractor_0_0,adder_subtractor,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "adder_subtractor,Vivado 2018.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_subtractor
     port map (
      A(31 downto 0) => A(31 downto 0),
      B(31 downto 0) => B(31 downto 0),
      k => k,
      overflow => overflow,
      result(31 downto 0) => result(31 downto 0)
    );
end STRUCTURE;
