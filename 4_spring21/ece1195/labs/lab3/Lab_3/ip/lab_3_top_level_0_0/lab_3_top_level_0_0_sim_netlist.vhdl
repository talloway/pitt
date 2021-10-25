-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Mar  8 11:06:05 2021
-- Host        : DESKTOP-9AE4DJD running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/ece1195/labs/lab3/lab_3/ip/lab_3_top_level_0_0/lab_3_top_level_0_0_sim_netlist.vhdl
-- Design      : lab_3_top_level_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_control is
  port (
    D : out STD_LOGIC_VECTOR ( 32 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    EN : out STD_LOGIC;
    EN_0 : out STD_LOGIC;
    \A[31]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    multiplicand_d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rst : in STD_LOGIC;
    multiplier_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    B : in STD_LOGIC_VECTOR ( 0 to 0 );
    A : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_control : entity is "control";
end lab_3_top_level_0_0_control;

architecture STRUCTURE of lab_3_top_level_0_0_control is
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal count : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal count0 : STD_LOGIC;
  signal \count0_carry__0_n_0\ : STD_LOGIC;
  signal \count0_carry__0_n_1\ : STD_LOGIC;
  signal \count0_carry__0_n_2\ : STD_LOGIC;
  signal \count0_carry__0_n_3\ : STD_LOGIC;
  signal \count0_carry__1_n_0\ : STD_LOGIC;
  signal \count0_carry__1_n_1\ : STD_LOGIC;
  signal \count0_carry__1_n_2\ : STD_LOGIC;
  signal \count0_carry__1_n_3\ : STD_LOGIC;
  signal \count0_carry__2_n_0\ : STD_LOGIC;
  signal \count0_carry__2_n_1\ : STD_LOGIC;
  signal \count0_carry__2_n_2\ : STD_LOGIC;
  signal \count0_carry__2_n_3\ : STD_LOGIC;
  signal \count0_carry__3_n_0\ : STD_LOGIC;
  signal \count0_carry__3_n_1\ : STD_LOGIC;
  signal \count0_carry__3_n_2\ : STD_LOGIC;
  signal \count0_carry__3_n_3\ : STD_LOGIC;
  signal \count0_carry__4_n_0\ : STD_LOGIC;
  signal \count0_carry__4_n_1\ : STD_LOGIC;
  signal \count0_carry__4_n_2\ : STD_LOGIC;
  signal \count0_carry__4_n_3\ : STD_LOGIC;
  signal \count0_carry__5_n_0\ : STD_LOGIC;
  signal \count0_carry__5_n_1\ : STD_LOGIC;
  signal \count0_carry__5_n_2\ : STD_LOGIC;
  signal \count0_carry__5_n_3\ : STD_LOGIC;
  signal \count0_carry__6_n_2\ : STD_LOGIC;
  signal \count0_carry__6_n_3\ : STD_LOGIC;
  signal count0_carry_n_0 : STD_LOGIC;
  signal count0_carry_n_1 : STD_LOGIC;
  signal count0_carry_n_2 : STD_LOGIC;
  signal count0_carry_n_3 : STD_LOGIC;
  signal \count1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \count1_carry__0_n_0\ : STD_LOGIC;
  signal \count1_carry__0_n_1\ : STD_LOGIC;
  signal \count1_carry__0_n_2\ : STD_LOGIC;
  signal \count1_carry__0_n_3\ : STD_LOGIC;
  signal \count1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \count1_carry__1_n_0\ : STD_LOGIC;
  signal \count1_carry__1_n_1\ : STD_LOGIC;
  signal \count1_carry__1_n_2\ : STD_LOGIC;
  signal \count1_carry__1_n_3\ : STD_LOGIC;
  signal \count1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \count1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \count1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \count1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \count1_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \count1_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \count1_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \count1_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \count1_carry__2_n_0\ : STD_LOGIC;
  signal \count1_carry__2_n_1\ : STD_LOGIC;
  signal \count1_carry__2_n_2\ : STD_LOGIC;
  signal \count1_carry__2_n_3\ : STD_LOGIC;
  signal count1_carry_i_1_n_0 : STD_LOGIC;
  signal count1_carry_i_2_n_0 : STD_LOGIC;
  signal count1_carry_i_3_n_0 : STD_LOGIC;
  signal count1_carry_i_4_n_0 : STD_LOGIC;
  signal count1_carry_i_5_n_0 : STD_LOGIC;
  signal count1_carry_n_0 : STD_LOGIC;
  signal count1_carry_n_1 : STD_LOGIC;
  signal count1_carry_n_2 : STD_LOGIC;
  signal count1_carry_n_3 : STD_LOGIC;
  signal \count[31]_i_1_n_0\ : STD_LOGIC;
  signal in6 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \in6__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal load : STD_LOGIC;
  signal \NLW_count0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_count0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_count1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \D_reg[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \D_reg[31]_i_1__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \D_reg[31]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \D_reg[32]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \D_reg[33]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \D_reg[34]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \D_reg[35]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \D_reg[36]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \D_reg[37]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \D_reg[38]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \D_reg[39]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \D_reg[40]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \D_reg[41]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \D_reg[42]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \D_reg[43]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \D_reg[44]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \D_reg[45]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \D_reg[46]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \D_reg[47]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \D_reg[48]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \D_reg[49]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \D_reg[50]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \D_reg[51]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \D_reg[52]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \D_reg[53]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \D_reg[54]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \D_reg[55]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \D_reg[56]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \D_reg[57]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \D_reg[58]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \D_reg[59]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \D_reg[60]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \D_reg[61]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \D_reg[62]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \D_reg[63]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \D_reg[63]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_state[5]_i_1\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "s0:000001,s1:000010,s3:001000,s4:010000,s2:000100,s5:100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "s0:000001,s1:000010,s3:001000,s4:010000,s2:000100,s5:100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "s0:000001,s1:000010,s3:001000,s4:010000,s2:000100,s5:100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "s0:000001,s1:000010,s3:001000,s4:010000,s2:000100,s5:100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "s0:000001,s1:000010,s3:001000,s4:010000,s2:000100,s5:100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[5]\ : label is "s0:000001,s1:000010,s3:001000,s4:010000,s2:000100,s5:100000";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
\D_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => B(0),
      I1 => \^q\(1),
      O => D(0)
    );
\D_reg[31]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => A(0),
      I1 => \^q\(1),
      O => \A[31]\(0)
    );
\D_reg[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \^q\(1),
      I1 => load,
      I2 => \^q\(2),
      O => EN_0
    );
\D_reg[32]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => multiplicand_d(0),
      O => D(1)
    );
\D_reg[33]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => multiplicand_d(1),
      O => D(2)
    );
\D_reg[34]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => multiplicand_d(2),
      O => D(3)
    );
\D_reg[35]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => multiplicand_d(3),
      O => D(4)
    );
\D_reg[36]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => multiplicand_d(4),
      O => D(5)
    );
\D_reg[37]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => multiplicand_d(5),
      O => D(6)
    );
\D_reg[38]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => multiplicand_d(6),
      O => D(7)
    );
\D_reg[39]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => multiplicand_d(7),
      O => D(8)
    );
\D_reg[40]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => multiplicand_d(8),
      O => D(9)
    );
\D_reg[41]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => multiplicand_d(9),
      O => D(10)
    );
\D_reg[42]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => multiplicand_d(10),
      O => D(11)
    );
\D_reg[43]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => multiplicand_d(11),
      O => D(12)
    );
\D_reg[44]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => multiplicand_d(12),
      O => D(13)
    );
\D_reg[45]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => multiplicand_d(13),
      O => D(14)
    );
\D_reg[46]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => multiplicand_d(14),
      O => D(15)
    );
\D_reg[47]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => multiplicand_d(15),
      O => D(16)
    );
\D_reg[48]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => multiplicand_d(16),
      O => D(17)
    );
\D_reg[49]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => multiplicand_d(17),
      O => D(18)
    );
\D_reg[50]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => multiplicand_d(18),
      O => D(19)
    );
\D_reg[51]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => multiplicand_d(19),
      O => D(20)
    );
\D_reg[52]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => multiplicand_d(20),
      O => D(21)
    );
\D_reg[53]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => multiplicand_d(21),
      O => D(22)
    );
\D_reg[54]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => multiplicand_d(22),
      O => D(23)
    );
\D_reg[55]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => multiplicand_d(23),
      O => D(24)
    );
\D_reg[56]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => multiplicand_d(24),
      O => D(25)
    );
\D_reg[57]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => multiplicand_d(25),
      O => D(26)
    );
\D_reg[58]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => multiplicand_d(26),
      O => D(27)
    );
\D_reg[59]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => multiplicand_d(27),
      O => D(28)
    );
\D_reg[60]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => multiplicand_d(28),
      O => D(29)
    );
\D_reg[61]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => multiplicand_d(29),
      O => D(30)
    );
\D_reg[62]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => multiplicand_d(30),
      O => D(31)
    );
\D_reg[63]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => multiplicand_d(31),
      O => D(32)
    );
\D_reg[63]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => load,
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => EN
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => load,
      I1 => \count1_carry__2_n_0\,
      I2 => \^q\(1),
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => multiplier_d(0),
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^q\(0),
      I1 => multiplier_d(0),
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \FSM_onehot_state[4]_i_1_n_0\
    );
\FSM_onehot_state[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => \count1_carry__2_n_0\,
      O => \FSM_onehot_state[5]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^q\(2),
      PRE => rst,
      Q => \FSM_onehot_state_reg_n_0_[0]\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_state_reg_n_0_[0]\,
      Q => load
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => \^q\(0)
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_state[4]_i_1_n_0\,
      Q => \^q\(1)
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_state[5]_i_1_n_0\,
      Q => \^q\(2)
    );
count0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count0_carry_n_0,
      CO(2) => count0_carry_n_1,
      CO(1) => count0_carry_n_2,
      CO(0) => count0_carry_n_3,
      CYINIT => count(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in6(4 downto 1),
      S(3 downto 0) => count(4 downto 1)
    );
\count0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count0_carry_n_0,
      CO(3) => \count0_carry__0_n_0\,
      CO(2) => \count0_carry__0_n_1\,
      CO(1) => \count0_carry__0_n_2\,
      CO(0) => \count0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in6(8 downto 5),
      S(3 downto 0) => count(8 downto 5)
    );
\count0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__0_n_0\,
      CO(3) => \count0_carry__1_n_0\,
      CO(2) => \count0_carry__1_n_1\,
      CO(1) => \count0_carry__1_n_2\,
      CO(0) => \count0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in6(12 downto 9),
      S(3 downto 0) => count(12 downto 9)
    );
\count0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__1_n_0\,
      CO(3) => \count0_carry__2_n_0\,
      CO(2) => \count0_carry__2_n_1\,
      CO(1) => \count0_carry__2_n_2\,
      CO(0) => \count0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in6(16 downto 13),
      S(3 downto 0) => count(16 downto 13)
    );
\count0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__2_n_0\,
      CO(3) => \count0_carry__3_n_0\,
      CO(2) => \count0_carry__3_n_1\,
      CO(1) => \count0_carry__3_n_2\,
      CO(0) => \count0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in6(20 downto 17),
      S(3 downto 0) => count(20 downto 17)
    );
\count0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__3_n_0\,
      CO(3) => \count0_carry__4_n_0\,
      CO(2) => \count0_carry__4_n_1\,
      CO(1) => \count0_carry__4_n_2\,
      CO(0) => \count0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in6(24 downto 21),
      S(3 downto 0) => count(24 downto 21)
    );
\count0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__4_n_0\,
      CO(3) => \count0_carry__5_n_0\,
      CO(2) => \count0_carry__5_n_1\,
      CO(1) => \count0_carry__5_n_2\,
      CO(0) => \count0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in6(28 downto 25),
      S(3 downto 0) => count(28 downto 25)
    );
\count0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_count0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \count0_carry__6_n_2\,
      CO(0) => \count0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_count0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => in6(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => count(31 downto 29)
    );
count1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count1_carry_n_0,
      CO(2) => count1_carry_n_1,
      CO(1) => count1_carry_n_2,
      CO(0) => count1_carry_n_3,
      CYINIT => '1',
      DI(3) => count1_carry_i_1_n_0,
      DI(2) => count(5),
      DI(1 downto 0) => B"00",
      O(3 downto 0) => NLW_count1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => count1_carry_i_2_n_0,
      S(2) => count1_carry_i_3_n_0,
      S(1) => count1_carry_i_4_n_0,
      S(0) => count1_carry_i_5_n_0
    );
\count1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count1_carry_n_0,
      CO(3) => \count1_carry__0_n_0\,
      CO(2) => \count1_carry__0_n_1\,
      CO(1) => \count1_carry__0_n_2\,
      CO(0) => \count1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \count1_carry__0_i_1_n_0\,
      DI(2) => \count1_carry__0_i_2_n_0\,
      DI(1) => \count1_carry__0_i_3_n_0\,
      DI(0) => \count1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_count1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \count1_carry__0_i_5_n_0\,
      S(2) => \count1_carry__0_i_6_n_0\,
      S(1) => \count1_carry__0_i_7_n_0\,
      S(0) => \count1_carry__0_i_8_n_0\
    );
\count1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => count(14),
      I1 => count(15),
      O => \count1_carry__0_i_1_n_0\
    );
\count1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => count(12),
      I1 => count(13),
      O => \count1_carry__0_i_2_n_0\
    );
\count1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => count(10),
      I1 => count(11),
      O => \count1_carry__0_i_3_n_0\
    );
\count1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => count(8),
      I1 => count(9),
      O => \count1_carry__0_i_4_n_0\
    );
\count1_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count(14),
      I1 => count(15),
      O => \count1_carry__0_i_5_n_0\
    );
\count1_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count(12),
      I1 => count(13),
      O => \count1_carry__0_i_6_n_0\
    );
\count1_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count(10),
      I1 => count(11),
      O => \count1_carry__0_i_7_n_0\
    );
\count1_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count(8),
      I1 => count(9),
      O => \count1_carry__0_i_8_n_0\
    );
\count1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count1_carry__0_n_0\,
      CO(3) => \count1_carry__1_n_0\,
      CO(2) => \count1_carry__1_n_1\,
      CO(1) => \count1_carry__1_n_2\,
      CO(0) => \count1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \count1_carry__1_i_1_n_0\,
      DI(2) => \count1_carry__1_i_2_n_0\,
      DI(1) => \count1_carry__1_i_3_n_0\,
      DI(0) => \count1_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_count1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \count1_carry__1_i_5_n_0\,
      S(2) => \count1_carry__1_i_6_n_0\,
      S(1) => \count1_carry__1_i_7_n_0\,
      S(0) => \count1_carry__1_i_8_n_0\
    );
\count1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => count(22),
      I1 => count(23),
      O => \count1_carry__1_i_1_n_0\
    );
\count1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => count(20),
      I1 => count(21),
      O => \count1_carry__1_i_2_n_0\
    );
\count1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => count(18),
      I1 => count(19),
      O => \count1_carry__1_i_3_n_0\
    );
\count1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => count(16),
      I1 => count(17),
      O => \count1_carry__1_i_4_n_0\
    );
\count1_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count(22),
      I1 => count(23),
      O => \count1_carry__1_i_5_n_0\
    );
\count1_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count(20),
      I1 => count(21),
      O => \count1_carry__1_i_6_n_0\
    );
\count1_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count(18),
      I1 => count(19),
      O => \count1_carry__1_i_7_n_0\
    );
\count1_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count(16),
      I1 => count(17),
      O => \count1_carry__1_i_8_n_0\
    );
\count1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count1_carry__1_n_0\,
      CO(3) => \count1_carry__2_n_0\,
      CO(2) => \count1_carry__2_n_1\,
      CO(1) => \count1_carry__2_n_2\,
      CO(0) => \count1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \count1_carry__2_i_1_n_0\,
      DI(2) => \count1_carry__2_i_2_n_0\,
      DI(1) => \count1_carry__2_i_3_n_0\,
      DI(0) => \count1_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_count1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \count1_carry__2_i_5_n_0\,
      S(2) => \count1_carry__2_i_6_n_0\,
      S(1) => \count1_carry__2_i_7_n_0\,
      S(0) => \count1_carry__2_i_8_n_0\
    );
\count1_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count(30),
      I1 => count(31),
      O => \count1_carry__2_i_1_n_0\
    );
\count1_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => count(28),
      I1 => count(29),
      O => \count1_carry__2_i_2_n_0\
    );
\count1_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => count(26),
      I1 => count(27),
      O => \count1_carry__2_i_3_n_0\
    );
\count1_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => count(24),
      I1 => count(25),
      O => \count1_carry__2_i_4_n_0\
    );
\count1_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count(30),
      I1 => count(31),
      O => \count1_carry__2_i_5_n_0\
    );
\count1_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count(28),
      I1 => count(29),
      O => \count1_carry__2_i_6_n_0\
    );
\count1_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count(26),
      I1 => count(27),
      O => \count1_carry__2_i_7_n_0\
    );
\count1_carry__2_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count(24),
      I1 => count(25),
      O => \count1_carry__2_i_8_n_0\
    );
count1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => count(6),
      I1 => count(7),
      O => count1_carry_i_1_n_0
    );
count1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count(6),
      I1 => count(7),
      O => count1_carry_i_2_n_0
    );
count1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count(4),
      I1 => count(5),
      O => count1_carry_i_3_n_0
    );
count1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count(2),
      I1 => count(3),
      O => count1_carry_i_4_n_0
    );
count1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count(0),
      I1 => count(1),
      O => count1_carry_i_5_n_0
    );
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count(0),
      O => \in6__0\(0)
    );
\count[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => rst,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \^q\(1),
      O => \count[31]_i_1_n_0\
    );
\count[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F2"
    )
        port map (
      I0 => \^q\(1),
      I1 => \count1_carry__2_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => rst,
      O => count0
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0,
      D => \in6__0\(0),
      Q => count(0),
      R => \count[31]_i_1_n_0\
    );
\count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0,
      D => in6(10),
      Q => count(10),
      R => \count[31]_i_1_n_0\
    );
\count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0,
      D => in6(11),
      Q => count(11),
      R => \count[31]_i_1_n_0\
    );
\count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0,
      D => in6(12),
      Q => count(12),
      R => \count[31]_i_1_n_0\
    );
\count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0,
      D => in6(13),
      Q => count(13),
      R => \count[31]_i_1_n_0\
    );
\count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0,
      D => in6(14),
      Q => count(14),
      R => \count[31]_i_1_n_0\
    );
\count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0,
      D => in6(15),
      Q => count(15),
      R => \count[31]_i_1_n_0\
    );
\count_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0,
      D => in6(16),
      Q => count(16),
      R => \count[31]_i_1_n_0\
    );
\count_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0,
      D => in6(17),
      Q => count(17),
      R => \count[31]_i_1_n_0\
    );
\count_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0,
      D => in6(18),
      Q => count(18),
      R => \count[31]_i_1_n_0\
    );
\count_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0,
      D => in6(19),
      Q => count(19),
      R => \count[31]_i_1_n_0\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0,
      D => in6(1),
      Q => count(1),
      R => \count[31]_i_1_n_0\
    );
\count_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0,
      D => in6(20),
      Q => count(20),
      R => \count[31]_i_1_n_0\
    );
\count_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0,
      D => in6(21),
      Q => count(21),
      R => \count[31]_i_1_n_0\
    );
\count_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0,
      D => in6(22),
      Q => count(22),
      R => \count[31]_i_1_n_0\
    );
\count_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0,
      D => in6(23),
      Q => count(23),
      R => \count[31]_i_1_n_0\
    );
\count_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0,
      D => in6(24),
      Q => count(24),
      R => \count[31]_i_1_n_0\
    );
\count_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0,
      D => in6(25),
      Q => count(25),
      R => \count[31]_i_1_n_0\
    );
\count_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0,
      D => in6(26),
      Q => count(26),
      R => \count[31]_i_1_n_0\
    );
\count_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0,
      D => in6(27),
      Q => count(27),
      R => \count[31]_i_1_n_0\
    );
\count_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0,
      D => in6(28),
      Q => count(28),
      R => \count[31]_i_1_n_0\
    );
\count_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0,
      D => in6(29),
      Q => count(29),
      R => \count[31]_i_1_n_0\
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0,
      D => in6(2),
      Q => count(2),
      R => \count[31]_i_1_n_0\
    );
\count_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0,
      D => in6(30),
      Q => count(30),
      R => \count[31]_i_1_n_0\
    );
\count_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0,
      D => in6(31),
      Q => count(31),
      R => \count[31]_i_1_n_0\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0,
      D => in6(3),
      Q => count(3),
      R => \count[31]_i_1_n_0\
    );
\count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0,
      D => in6(4),
      Q => count(4),
      R => \count[31]_i_1_n_0\
    );
\count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0,
      D => in6(5),
      Q => count(5),
      R => \count[31]_i_1_n_0\
    );
\count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0,
      D => in6(6),
      Q => count(6),
      R => \count[31]_i_1_n_0\
    );
\count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0,
      D => in6(7),
      Q => count(7),
      R => \count[31]_i_1_n_0\
    );
\count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0,
      D => in6(8),
      Q => count(8),
      R => \count[31]_i_1_n_0\
    );
\count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count0,
      D => in6(9),
      Q => count(9),
      R => \count[31]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_0 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_0 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_0;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_0 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_1 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_1 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_1;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_1 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_10 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_10 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_10;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_10 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_100 is
  port (
    multiplicand_d : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    product : in STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_13 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_100 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_100;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_100 is
  signal \^multiplicand_d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \D_reg[14]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \Q_i_1__50\ : label is "soft_lutpair24";
begin
  multiplicand_d(0) <= \^multiplicand_d\(0);
\D_reg[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^multiplicand_d\(0),
      I1 => B(0),
      I2 => Q_reg_0(0),
      O => D(0)
    );
\Q_i_1__50\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^multiplicand_d\(0),
      I1 => product(0),
      I2 => temp_c_out_13,
      O => sum(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => \^multiplicand_d\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_101 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_15 : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    product : in STD_LOGIC_VECTOR ( 1 downto 0 );
    temp_c_out_13 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_101 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_101;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_101 is
  signal multiplicand_d : STD_LOGIC_VECTOR ( 14 to 14 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Q_i_1__49\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \Q_i_2__23\ : label is "soft_lutpair25";
begin
\D_reg[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => multiplicand_d(14),
      I1 => B(0),
      I2 => Q_reg_1(0),
      O => D(0)
    );
\Q_i_1__49\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => multiplicand_d(14),
      I1 => product(1),
      I2 => Q_reg_0(0),
      I3 => temp_c_out_13,
      I4 => product(0),
      O => sum(0)
    );
\Q_i_2__23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEAA880"
    )
        port map (
      I0 => multiplicand_d(14),
      I1 => product(0),
      I2 => temp_c_out_13,
      I3 => Q_reg_0(0),
      I4 => product(1),
      O => temp_c_out_15
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => multiplicand_d(14)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_102 is
  port (
    multiplicand_d : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    product : in STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_15 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_102 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_102;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_102 is
  signal \^multiplicand_d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \D_reg[16]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \Q_i_1__48\ : label is "soft_lutpair26";
begin
  multiplicand_d(0) <= \^multiplicand_d\(0);
\D_reg[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^multiplicand_d\(0),
      I1 => B(0),
      I2 => Q_reg_0(0),
      O => D(0)
    );
\Q_i_1__48\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^multiplicand_d\(0),
      I1 => product(0),
      I2 => temp_c_out_15,
      O => sum(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => \^multiplicand_d\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_103 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_17 : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    product : in STD_LOGIC_VECTOR ( 1 downto 0 );
    temp_c_out_15 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_103 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_103;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_103 is
  signal multiplicand_d : STD_LOGIC_VECTOR ( 16 to 16 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Q_i_1__47\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \Q_i_2__22\ : label is "soft_lutpair27";
begin
\D_reg[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => multiplicand_d(16),
      I1 => B(0),
      I2 => Q_reg_1(0),
      O => D(0)
    );
\Q_i_1__47\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => multiplicand_d(16),
      I1 => product(1),
      I2 => Q_reg_0(0),
      I3 => temp_c_out_15,
      I4 => product(0),
      O => sum(0)
    );
\Q_i_2__22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEAA880"
    )
        port map (
      I0 => multiplicand_d(16),
      I1 => product(0),
      I2 => temp_c_out_15,
      I3 => Q_reg_0(0),
      I4 => product(1),
      O => temp_c_out_17
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => multiplicand_d(16)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_104 is
  port (
    multiplicand_d : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    product : in STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_17 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_104 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_104;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_104 is
  signal \^multiplicand_d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \D_reg[18]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \Q_i_1__46\ : label is "soft_lutpair28";
begin
  multiplicand_d(0) <= \^multiplicand_d\(0);
\D_reg[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^multiplicand_d\(0),
      I1 => B(0),
      I2 => Q_reg_0(0),
      O => D(0)
    );
\Q_i_1__46\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^multiplicand_d\(0),
      I1 => product(0),
      I2 => temp_c_out_17,
      O => sum(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => \^multiplicand_d\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_105 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_19 : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    product : in STD_LOGIC_VECTOR ( 1 downto 0 );
    temp_c_out_17 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_105 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_105;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_105 is
  signal multiplicand_d : STD_LOGIC_VECTOR ( 18 to 18 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Q_i_1__45\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \Q_i_2__21\ : label is "soft_lutpair29";
begin
\D_reg[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => multiplicand_d(18),
      I1 => B(0),
      I2 => Q_reg_1(0),
      O => D(0)
    );
\Q_i_1__45\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => multiplicand_d(18),
      I1 => product(1),
      I2 => Q_reg_0(0),
      I3 => temp_c_out_17,
      I4 => product(0),
      O => sum(0)
    );
\Q_i_2__21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEAA880"
    )
        port map (
      I0 => multiplicand_d(18),
      I1 => product(0),
      I2 => temp_c_out_17,
      I3 => Q_reg_0(0),
      I4 => product(1),
      O => temp_c_out_19
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => multiplicand_d(18)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_106 is
  port (
    multiplicand_d : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    product : in STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_19 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_106 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_106;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_106 is
  signal \^multiplicand_d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \D_reg[20]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \Q_i_1__44\ : label is "soft_lutpair30";
begin
  multiplicand_d(0) <= \^multiplicand_d\(0);
\D_reg[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^multiplicand_d\(0),
      I1 => B(0),
      I2 => Q_reg_0(0),
      O => D(0)
    );
\Q_i_1__44\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^multiplicand_d\(0),
      I1 => product(0),
      I2 => temp_c_out_19,
      O => sum(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => \^multiplicand_d\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_107 is
  port (
    multiplicand_d : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    product : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_1 : in STD_LOGIC;
    Q_reg_2 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_107 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_107;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_107 is
  signal \^multiplicand_d\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  multiplicand_d(0) <= \^multiplicand_d\(0);
\D_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^multiplicand_d\(0),
      I1 => B(0),
      I2 => Q_reg_0(0),
      O => D(0)
    );
\Q_i_1__62\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9666"
    )
        port map (
      I0 => \^multiplicand_d\(0),
      I1 => product(0),
      I2 => Q_reg_1,
      I3 => Q_reg_2(0),
      O => sum(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => \^multiplicand_d\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_108 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_21 : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    product : in STD_LOGIC_VECTOR ( 1 downto 0 );
    temp_c_out_19 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_108 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_108;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_108 is
  signal multiplicand_d : STD_LOGIC_VECTOR ( 20 to 20 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Q_i_1__43\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \Q_i_2__20\ : label is "soft_lutpair31";
begin
\D_reg[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => multiplicand_d(20),
      I1 => B(0),
      I2 => Q_reg_1(0),
      O => D(0)
    );
\Q_i_1__43\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => multiplicand_d(20),
      I1 => product(1),
      I2 => Q_reg_0(0),
      I3 => temp_c_out_19,
      I4 => product(0),
      O => sum(0)
    );
\Q_i_2__20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEAA880"
    )
        port map (
      I0 => multiplicand_d(20),
      I1 => product(0),
      I2 => temp_c_out_19,
      I3 => Q_reg_0(0),
      I4 => product(1),
      O => temp_c_out_21
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => multiplicand_d(20)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_109 is
  port (
    multiplicand_d : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    product : in STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_21 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_109 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_109;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_109 is
  signal \^multiplicand_d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \D_reg[22]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \Q_i_1__42\ : label is "soft_lutpair32";
begin
  multiplicand_d(0) <= \^multiplicand_d\(0);
\D_reg[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^multiplicand_d\(0),
      I1 => B(0),
      I2 => Q_reg_0(0),
      O => D(0)
    );
\Q_i_1__42\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^multiplicand_d\(0),
      I1 => product(0),
      I2 => temp_c_out_21,
      O => sum(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => \^multiplicand_d\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_11 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_11 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_11;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_11 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_110 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_23 : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    product : in STD_LOGIC_VECTOR ( 1 downto 0 );
    temp_c_out_21 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_110 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_110;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_110 is
  signal multiplicand_d : STD_LOGIC_VECTOR ( 22 to 22 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Q_i_1__41\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \Q_i_2__19\ : label is "soft_lutpair33";
begin
\D_reg[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => multiplicand_d(22),
      I1 => B(0),
      I2 => Q_reg_1(0),
      O => D(0)
    );
\Q_i_1__41\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => multiplicand_d(22),
      I1 => product(1),
      I2 => Q_reg_0(0),
      I3 => temp_c_out_21,
      I4 => product(0),
      O => sum(0)
    );
\Q_i_2__19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEAA880"
    )
        port map (
      I0 => multiplicand_d(22),
      I1 => product(0),
      I2 => temp_c_out_21,
      I3 => Q_reg_0(0),
      I4 => product(1),
      O => temp_c_out_23
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => multiplicand_d(22)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_111 is
  port (
    multiplicand_d : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    product : in STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_23 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_111 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_111;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_111 is
  signal \^multiplicand_d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \D_reg[24]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \Q_i_1__40\ : label is "soft_lutpair34";
begin
  multiplicand_d(0) <= \^multiplicand_d\(0);
\D_reg[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^multiplicand_d\(0),
      I1 => B(0),
      I2 => Q_reg_0(0),
      O => D(0)
    );
\Q_i_1__40\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^multiplicand_d\(0),
      I1 => product(0),
      I2 => temp_c_out_23,
      O => sum(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => \^multiplicand_d\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_112 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_25 : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    product : in STD_LOGIC_VECTOR ( 1 downto 0 );
    temp_c_out_23 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_112 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_112;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_112 is
  signal multiplicand_d : STD_LOGIC_VECTOR ( 24 to 24 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Q_i_1__39\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \Q_i_2__18\ : label is "soft_lutpair35";
begin
\D_reg[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => multiplicand_d(24),
      I1 => B(0),
      I2 => Q_reg_1(0),
      O => D(0)
    );
\Q_i_1__39\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => multiplicand_d(24),
      I1 => product(1),
      I2 => Q_reg_0(0),
      I3 => temp_c_out_23,
      I4 => product(0),
      O => sum(0)
    );
\Q_i_2__18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEAA880"
    )
        port map (
      I0 => multiplicand_d(24),
      I1 => product(0),
      I2 => temp_c_out_23,
      I3 => Q_reg_0(0),
      I4 => product(1),
      O => temp_c_out_25
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => multiplicand_d(24)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_113 is
  port (
    multiplicand_d : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    product : in STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_25 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_113 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_113;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_113 is
  signal \^multiplicand_d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \D_reg[26]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \Q_i_1__38\ : label is "soft_lutpair36";
begin
  multiplicand_d(0) <= \^multiplicand_d\(0);
\D_reg[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^multiplicand_d\(0),
      I1 => B(0),
      I2 => Q_reg_0(0),
      O => D(0)
    );
\Q_i_1__38\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^multiplicand_d\(0),
      I1 => product(0),
      I2 => temp_c_out_25,
      O => sum(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => \^multiplicand_d\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_114 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_27 : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    product : in STD_LOGIC_VECTOR ( 1 downto 0 );
    temp_c_out_25 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_114 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_114;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_114 is
  signal multiplicand_d : STD_LOGIC_VECTOR ( 26 to 26 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Q_i_1__37\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \Q_i_2__17\ : label is "soft_lutpair37";
begin
\D_reg[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => multiplicand_d(26),
      I1 => B(0),
      I2 => Q_reg_1(0),
      O => D(0)
    );
\Q_i_1__37\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => multiplicand_d(26),
      I1 => product(1),
      I2 => Q_reg_0(0),
      I3 => temp_c_out_25,
      I4 => product(0),
      O => sum(0)
    );
\Q_i_2__17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEAA880"
    )
        port map (
      I0 => multiplicand_d(26),
      I1 => product(0),
      I2 => temp_c_out_25,
      I3 => Q_reg_0(0),
      I4 => product(1),
      O => temp_c_out_27
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => multiplicand_d(26)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_115 is
  port (
    multiplicand_d : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    product : in STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_27 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_115 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_115;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_115 is
  signal \^multiplicand_d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \D_reg[28]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \Q_i_1__36\ : label is "soft_lutpair38";
begin
  multiplicand_d(0) <= \^multiplicand_d\(0);
\D_reg[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^multiplicand_d\(0),
      I1 => B(0),
      I2 => Q_reg_0(0),
      O => D(0)
    );
\Q_i_1__36\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^multiplicand_d\(0),
      I1 => product(0),
      I2 => temp_c_out_27,
      O => sum(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => \^multiplicand_d\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_116 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_29 : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    product : in STD_LOGIC_VECTOR ( 1 downto 0 );
    temp_c_out_27 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_116 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_116;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_116 is
  signal multiplicand_d : STD_LOGIC_VECTOR ( 28 to 28 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Q_i_1__35\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \Q_i_2__16\ : label is "soft_lutpair39";
begin
\D_reg[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => multiplicand_d(28),
      I1 => B(0),
      I2 => Q_reg_1(0),
      O => D(0)
    );
\Q_i_1__35\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => multiplicand_d(28),
      I1 => product(1),
      I2 => Q_reg_0(0),
      I3 => temp_c_out_27,
      I4 => product(0),
      O => sum(0)
    );
\Q_i_2__16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEAA880"
    )
        port map (
      I0 => multiplicand_d(28),
      I1 => product(0),
      I2 => temp_c_out_27,
      I3 => Q_reg_0(0),
      I4 => product(1),
      O => temp_c_out_29
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => multiplicand_d(28)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_117 is
  port (
    multiplicand_d : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    product : in STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_29 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_117 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_117;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_117 is
  signal \^multiplicand_d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \D_reg[30]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \Q_i_1__34\ : label is "soft_lutpair40";
begin
  multiplicand_d(0) <= \^multiplicand_d\(0);
\D_reg[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^multiplicand_d\(0),
      I1 => B(0),
      I2 => Q_reg_0(0),
      O => D(0)
    );
\Q_i_1__34\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^multiplicand_d\(0),
      I1 => product(0),
      I2 => temp_c_out_29,
      O => sum(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => \^multiplicand_d\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_118 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_3 : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    product : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q_reg_2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_118 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_118;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_118 is
  signal multiplicand_d : STD_LOGIC_VECTOR ( 2 to 2 );
begin
\D_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => multiplicand_d(2),
      I1 => B(0),
      I2 => Q_reg_1(0),
      O => D(0)
    );
\Q_i_1__61\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9996969696666666"
    )
        port map (
      I0 => multiplicand_d(2),
      I1 => product(1),
      I2 => Q_reg_0(1),
      I3 => Q_reg_0(0),
      I4 => Q_reg_2,
      I5 => product(0),
      O => sum(0)
    );
\Q_i_2__29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEEAAAA8888000"
    )
        port map (
      I0 => multiplicand_d(2),
      I1 => product(0),
      I2 => Q_reg_2,
      I3 => Q_reg_0(0),
      I4 => Q_reg_0(1),
      I5 => product(1),
      O => temp_c_out_3
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => multiplicand_d(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_119 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_31 : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    product : in STD_LOGIC_VECTOR ( 1 downto 0 );
    temp_c_out_29 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_119 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_119;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_119 is
  signal multiplicand_d : STD_LOGIC_VECTOR ( 30 to 30 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Q_i_1__33\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \Q_i_2__15\ : label is "soft_lutpair41";
begin
\D_reg[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => multiplicand_d(30),
      I1 => B(0),
      I2 => Q_reg_1(0),
      O => D(0)
    );
\Q_i_1__33\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => multiplicand_d(30),
      I1 => product(1),
      I2 => Q_reg_0(0),
      I3 => temp_c_out_29,
      I4 => product(0),
      O => sum(0)
    );
\Q_i_2__15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEAA880"
    )
        port map (
      I0 => multiplicand_d(30),
      I1 => product(0),
      I2 => temp_c_out_29,
      I3 => Q_reg_0(0),
      I4 => product(1),
      O => temp_c_out_31
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => multiplicand_d(30)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_12 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_12 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_12;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_12 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_120 is
  port (
    Q_reg_0 : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    product : in STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_31 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_120 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_120;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_120 is
  signal \^q_reg_0\ : STD_LOGIC;
begin
  Q_reg_0 <= \^q_reg_0\;
\Q_i_1__32\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^q_reg_0\,
      I1 => product(0),
      I2 => temp_c_out_31,
      O => sum(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => \^q_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_121 is
  port (
    Q_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_33 : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    product : in STD_LOGIC_VECTOR ( 1 downto 0 );
    temp_c_out_31 : in STD_LOGIC;
    Q_reg_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_121 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_121;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_121 is
  signal \^q_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Q_i_1__31\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \Q_i_2__14\ : label is "soft_lutpair42";
begin
  Q_reg_0(0) <= \^q_reg_0\(0);
\Q_i_1__31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => \^q_reg_0\(0),
      I1 => product(1),
      I2 => Q_reg_1,
      I3 => temp_c_out_31,
      I4 => product(0),
      O => sum(0)
    );
\Q_i_2__14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEAA880"
    )
        port map (
      I0 => \^q_reg_0\(0),
      I1 => product(0),
      I2 => temp_c_out_31,
      I3 => Q_reg_1,
      I4 => product(1),
      O => temp_c_out_33
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => \^q_reg_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_122 is
  port (
    Q_reg_0 : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    product : in STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_33 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_122 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_122;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_122 is
  signal \^q_reg_0\ : STD_LOGIC;
begin
  Q_reg_0 <= \^q_reg_0\;
\Q_i_1__30\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^q_reg_0\,
      I1 => product(0),
      I2 => temp_c_out_33,
      O => sum(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => \^q_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_123 is
  port (
    Q_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_35 : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    product : in STD_LOGIC_VECTOR ( 1 downto 0 );
    temp_c_out_33 : in STD_LOGIC;
    Q_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_123 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_123;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_123 is
  signal \^q_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Q_i_1__29\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \Q_i_2__13\ : label is "soft_lutpair43";
begin
  Q_reg_0(0) <= \^q_reg_0\(0);
\Q_i_1__29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => \^q_reg_0\(0),
      I1 => product(1),
      I2 => Q_reg_1(0),
      I3 => temp_c_out_33,
      I4 => product(0),
      O => sum(0)
    );
\Q_i_2__13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEAA880"
    )
        port map (
      I0 => \^q_reg_0\(0),
      I1 => product(0),
      I2 => temp_c_out_33,
      I3 => Q_reg_1(0),
      I4 => product(1),
      O => temp_c_out_35
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => \^q_reg_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_124 is
  port (
    Q_reg_0 : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    product : in STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_35 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_124 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_124;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_124 is
  signal \^q_reg_0\ : STD_LOGIC;
begin
  Q_reg_0 <= \^q_reg_0\;
\Q_i_1__28\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^q_reg_0\,
      I1 => product(0),
      I2 => temp_c_out_35,
      O => sum(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => \^q_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_125 is
  port (
    Q_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_37 : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    product : in STD_LOGIC_VECTOR ( 1 downto 0 );
    temp_c_out_35 : in STD_LOGIC;
    Q_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_125 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_125;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_125 is
  signal \^q_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Q_i_1__27\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \Q_i_2__12\ : label is "soft_lutpair44";
begin
  Q_reg_0(0) <= \^q_reg_0\(0);
\Q_i_1__27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => \^q_reg_0\(0),
      I1 => product(1),
      I2 => Q_reg_1(0),
      I3 => temp_c_out_35,
      I4 => product(0),
      O => sum(0)
    );
\Q_i_2__12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEAA880"
    )
        port map (
      I0 => \^q_reg_0\(0),
      I1 => product(0),
      I2 => temp_c_out_35,
      I3 => Q_reg_1(0),
      I4 => product(1),
      O => temp_c_out_37
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => \^q_reg_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_126 is
  port (
    Q_reg_0 : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    product : in STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_37 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_126 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_126;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_126 is
  signal \^q_reg_0\ : STD_LOGIC;
begin
  Q_reg_0 <= \^q_reg_0\;
\Q_i_1__26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^q_reg_0\,
      I1 => product(0),
      I2 => temp_c_out_37,
      O => sum(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => \^q_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_127 is
  port (
    Q_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_39 : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    product : in STD_LOGIC_VECTOR ( 1 downto 0 );
    temp_c_out_37 : in STD_LOGIC;
    Q_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_127 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_127;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_127 is
  signal \^q_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Q_i_1__25\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \Q_i_2__11\ : label is "soft_lutpair45";
begin
  Q_reg_0(0) <= \^q_reg_0\(0);
\Q_i_1__25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => \^q_reg_0\(0),
      I1 => product(1),
      I2 => Q_reg_1(0),
      I3 => temp_c_out_37,
      I4 => product(0),
      O => sum(0)
    );
\Q_i_2__11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEAA880"
    )
        port map (
      I0 => \^q_reg_0\(0),
      I1 => product(0),
      I2 => temp_c_out_37,
      I3 => Q_reg_1(0),
      I4 => product(1),
      O => temp_c_out_39
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => \^q_reg_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_128 is
  port (
    Q_reg_0 : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    product : in STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_39 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_128 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_128;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_128 is
  signal \^q_reg_0\ : STD_LOGIC;
begin
  Q_reg_0 <= \^q_reg_0\;
\Q_i_1__24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^q_reg_0\,
      I1 => product(0),
      I2 => temp_c_out_39,
      O => sum(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => \^q_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_129 is
  port (
    multiplicand_d : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    product : in STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_3 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_129 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_129;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_129 is
  signal \^multiplicand_d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \D_reg[4]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \Q_i_1__60\ : label is "soft_lutpair46";
begin
  multiplicand_d(0) <= \^multiplicand_d\(0);
\D_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^multiplicand_d\(0),
      I1 => B(0),
      I2 => Q_reg_0(0),
      O => D(0)
    );
\Q_i_1__60\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^multiplicand_d\(0),
      I1 => product(0),
      I2 => temp_c_out_3,
      O => sum(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => \^multiplicand_d\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_13 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_13 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_13;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_13 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_130 is
  port (
    Q_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_41 : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    product : in STD_LOGIC_VECTOR ( 1 downto 0 );
    temp_c_out_39 : in STD_LOGIC;
    Q_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_130 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_130;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_130 is
  signal \^q_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Q_i_1__23\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \Q_i_2__10\ : label is "soft_lutpair47";
begin
  Q_reg_0(0) <= \^q_reg_0\(0);
\Q_i_1__23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => \^q_reg_0\(0),
      I1 => product(1),
      I2 => Q_reg_1(0),
      I3 => temp_c_out_39,
      I4 => product(0),
      O => sum(0)
    );
\Q_i_2__10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEAA880"
    )
        port map (
      I0 => \^q_reg_0\(0),
      I1 => product(0),
      I2 => temp_c_out_39,
      I3 => Q_reg_1(0),
      I4 => product(1),
      O => temp_c_out_41
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => \^q_reg_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_131 is
  port (
    Q_reg_0 : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    product : in STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_41 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_131 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_131;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_131 is
  signal \^q_reg_0\ : STD_LOGIC;
begin
  Q_reg_0 <= \^q_reg_0\;
\Q_i_1__22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^q_reg_0\,
      I1 => product(0),
      I2 => temp_c_out_41,
      O => sum(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => \^q_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_132 is
  port (
    Q_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_43 : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    product : in STD_LOGIC_VECTOR ( 1 downto 0 );
    temp_c_out_41 : in STD_LOGIC;
    Q_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_132 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_132;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_132 is
  signal \^q_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Q_i_1__21\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \Q_i_2__9\ : label is "soft_lutpair48";
begin
  Q_reg_0(0) <= \^q_reg_0\(0);
\Q_i_1__21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => \^q_reg_0\(0),
      I1 => product(1),
      I2 => Q_reg_1(0),
      I3 => temp_c_out_41,
      I4 => product(0),
      O => sum(0)
    );
\Q_i_2__9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEAA880"
    )
        port map (
      I0 => \^q_reg_0\(0),
      I1 => product(0),
      I2 => temp_c_out_41,
      I3 => Q_reg_1(0),
      I4 => product(1),
      O => temp_c_out_43
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => \^q_reg_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_133 is
  port (
    Q_reg_0 : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    product : in STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_43 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_133 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_133;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_133 is
  signal \^q_reg_0\ : STD_LOGIC;
begin
  Q_reg_0 <= \^q_reg_0\;
\Q_i_1__20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^q_reg_0\,
      I1 => product(0),
      I2 => temp_c_out_43,
      O => sum(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => \^q_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_134 is
  port (
    Q_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_45 : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    product : in STD_LOGIC_VECTOR ( 1 downto 0 );
    temp_c_out_43 : in STD_LOGIC;
    Q_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_134 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_134;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_134 is
  signal \^q_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Q_i_1__19\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \Q_i_2__8\ : label is "soft_lutpair49";
begin
  Q_reg_0(0) <= \^q_reg_0\(0);
\Q_i_1__19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => \^q_reg_0\(0),
      I1 => product(1),
      I2 => Q_reg_1(0),
      I3 => temp_c_out_43,
      I4 => product(0),
      O => sum(0)
    );
\Q_i_2__8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEAA880"
    )
        port map (
      I0 => \^q_reg_0\(0),
      I1 => product(0),
      I2 => temp_c_out_43,
      I3 => Q_reg_1(0),
      I4 => product(1),
      O => temp_c_out_45
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => \^q_reg_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_135 is
  port (
    Q_reg_0 : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    product : in STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_45 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_135 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_135;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_135 is
  signal \^q_reg_0\ : STD_LOGIC;
begin
  Q_reg_0 <= \^q_reg_0\;
\Q_i_1__18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^q_reg_0\,
      I1 => product(0),
      I2 => temp_c_out_45,
      O => sum(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => \^q_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_136 is
  port (
    Q_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_47 : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    product : in STD_LOGIC_VECTOR ( 1 downto 0 );
    temp_c_out_45 : in STD_LOGIC;
    Q_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_136 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_136;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_136 is
  signal \^q_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Q_i_1__17\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \Q_i_2__7\ : label is "soft_lutpair50";
begin
  Q_reg_0(0) <= \^q_reg_0\(0);
\Q_i_1__17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => \^q_reg_0\(0),
      I1 => product(1),
      I2 => Q_reg_1(0),
      I3 => temp_c_out_45,
      I4 => product(0),
      O => sum(0)
    );
\Q_i_2__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEAA880"
    )
        port map (
      I0 => \^q_reg_0\(0),
      I1 => product(0),
      I2 => temp_c_out_45,
      I3 => Q_reg_1(0),
      I4 => product(1),
      O => temp_c_out_47
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => \^q_reg_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_137 is
  port (
    Q_reg_0 : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    product : in STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_47 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_137 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_137;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_137 is
  signal \^q_reg_0\ : STD_LOGIC;
begin
  Q_reg_0 <= \^q_reg_0\;
\Q_i_1__16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^q_reg_0\,
      I1 => product(0),
      I2 => temp_c_out_47,
      O => sum(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => \^q_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_138 is
  port (
    Q_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_49 : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    product : in STD_LOGIC_VECTOR ( 1 downto 0 );
    temp_c_out_47 : in STD_LOGIC;
    Q_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_138 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_138;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_138 is
  signal \^q_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Q_i_1__15\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \Q_i_2__6\ : label is "soft_lutpair51";
begin
  Q_reg_0(0) <= \^q_reg_0\(0);
\Q_i_1__15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => \^q_reg_0\(0),
      I1 => product(1),
      I2 => Q_reg_1(0),
      I3 => temp_c_out_47,
      I4 => product(0),
      O => sum(0)
    );
\Q_i_2__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEAA880"
    )
        port map (
      I0 => \^q_reg_0\(0),
      I1 => product(0),
      I2 => temp_c_out_47,
      I3 => Q_reg_1(0),
      I4 => product(1),
      O => temp_c_out_49
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => \^q_reg_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_139 is
  port (
    Q_reg_0 : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    product : in STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_49 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_139 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_139;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_139 is
  signal \^q_reg_0\ : STD_LOGIC;
begin
  Q_reg_0 <= \^q_reg_0\;
\Q_i_1__14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^q_reg_0\,
      I1 => product(0),
      I2 => temp_c_out_49,
      O => sum(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => \^q_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_14 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_14 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_14;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_14 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_140 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_5 : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    product : in STD_LOGIC_VECTOR ( 1 downto 0 );
    temp_c_out_3 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_140 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_140;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_140 is
  signal multiplicand_d : STD_LOGIC_VECTOR ( 4 to 4 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Q_i_1__59\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \Q_i_2__28\ : label is "soft_lutpair52";
begin
\D_reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => multiplicand_d(4),
      I1 => B(0),
      I2 => Q_reg_1(0),
      O => D(0)
    );
\Q_i_1__59\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => multiplicand_d(4),
      I1 => product(1),
      I2 => Q_reg_0(0),
      I3 => temp_c_out_3,
      I4 => product(0),
      O => sum(0)
    );
\Q_i_2__28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEAA880"
    )
        port map (
      I0 => multiplicand_d(4),
      I1 => product(0),
      I2 => temp_c_out_3,
      I3 => Q_reg_0(0),
      I4 => product(1),
      O => temp_c_out_5
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => multiplicand_d(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_141 is
  port (
    Q_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_51 : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    product : in STD_LOGIC_VECTOR ( 1 downto 0 );
    temp_c_out_49 : in STD_LOGIC;
    Q_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_141 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_141;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_141 is
  signal \^q_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Q_i_1__13\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \Q_i_2__5\ : label is "soft_lutpair53";
begin
  Q_reg_0(0) <= \^q_reg_0\(0);
\Q_i_1__13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => \^q_reg_0\(0),
      I1 => product(1),
      I2 => Q_reg_1(0),
      I3 => temp_c_out_49,
      I4 => product(0),
      O => sum(0)
    );
\Q_i_2__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEAA880"
    )
        port map (
      I0 => \^q_reg_0\(0),
      I1 => product(0),
      I2 => temp_c_out_49,
      I3 => Q_reg_1(0),
      I4 => product(1),
      O => temp_c_out_51
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => \^q_reg_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_142 is
  port (
    Q_reg_0 : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    product : in STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_51 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_142 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_142;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_142 is
  signal \^q_reg_0\ : STD_LOGIC;
begin
  Q_reg_0 <= \^q_reg_0\;
\Q_i_1__12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^q_reg_0\,
      I1 => product(0),
      I2 => temp_c_out_51,
      O => sum(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => \^q_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_143 is
  port (
    Q_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_53 : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    product : in STD_LOGIC_VECTOR ( 1 downto 0 );
    temp_c_out_51 : in STD_LOGIC;
    Q_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_143 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_143;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_143 is
  signal \^q_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Q_i_1__11\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \Q_i_2__4\ : label is "soft_lutpair54";
begin
  Q_reg_0(0) <= \^q_reg_0\(0);
\Q_i_1__11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => \^q_reg_0\(0),
      I1 => product(1),
      I2 => Q_reg_1(0),
      I3 => temp_c_out_51,
      I4 => product(0),
      O => sum(0)
    );
\Q_i_2__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEAA880"
    )
        port map (
      I0 => \^q_reg_0\(0),
      I1 => product(0),
      I2 => temp_c_out_51,
      I3 => Q_reg_1(0),
      I4 => product(1),
      O => temp_c_out_53
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => \^q_reg_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_144 is
  port (
    Q_reg_0 : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    product : in STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_53 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_144 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_144;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_144 is
  signal \^q_reg_0\ : STD_LOGIC;
begin
  Q_reg_0 <= \^q_reg_0\;
\Q_i_1__10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^q_reg_0\,
      I1 => product(0),
      I2 => temp_c_out_53,
      O => sum(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => \^q_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_145 is
  port (
    Q_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_55 : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    product : in STD_LOGIC_VECTOR ( 1 downto 0 );
    temp_c_out_53 : in STD_LOGIC;
    Q_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_145 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_145;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_145 is
  signal \^q_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Q_i_1__9\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \Q_i_2__3\ : label is "soft_lutpair55";
begin
  Q_reg_0(0) <= \^q_reg_0\(0);
\Q_i_1__9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => \^q_reg_0\(0),
      I1 => product(1),
      I2 => Q_reg_1(0),
      I3 => temp_c_out_53,
      I4 => product(0),
      O => sum(0)
    );
\Q_i_2__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEAA880"
    )
        port map (
      I0 => \^q_reg_0\(0),
      I1 => product(0),
      I2 => temp_c_out_53,
      I3 => Q_reg_1(0),
      I4 => product(1),
      O => temp_c_out_55
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => \^q_reg_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_146 is
  port (
    Q_reg_0 : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    product : in STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_55 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_146 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_146;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_146 is
  signal \^q_reg_0\ : STD_LOGIC;
begin
  Q_reg_0 <= \^q_reg_0\;
\Q_i_1__8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^q_reg_0\,
      I1 => product(0),
      I2 => temp_c_out_55,
      O => sum(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => \^q_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_147 is
  port (
    Q_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_57 : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    product : in STD_LOGIC_VECTOR ( 1 downto 0 );
    temp_c_out_55 : in STD_LOGIC;
    Q_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_147 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_147;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_147 is
  signal \^q_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Q_i_1__7\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \Q_i_2__2\ : label is "soft_lutpair56";
begin
  Q_reg_0(0) <= \^q_reg_0\(0);
\Q_i_1__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => \^q_reg_0\(0),
      I1 => product(1),
      I2 => Q_reg_1(0),
      I3 => temp_c_out_55,
      I4 => product(0),
      O => sum(0)
    );
\Q_i_2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEAA880"
    )
        port map (
      I0 => \^q_reg_0\(0),
      I1 => product(0),
      I2 => temp_c_out_55,
      I3 => Q_reg_1(0),
      I4 => product(1),
      O => temp_c_out_57
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => \^q_reg_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_148 is
  port (
    Q_reg_0 : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    product : in STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_57 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_148 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_148;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_148 is
  signal \^q_reg_0\ : STD_LOGIC;
begin
  Q_reg_0 <= \^q_reg_0\;
\Q_i_1__6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^q_reg_0\,
      I1 => product(0),
      I2 => temp_c_out_57,
      O => sum(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => \^q_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_149 is
  port (
    Q_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_59 : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    product : in STD_LOGIC_VECTOR ( 1 downto 0 );
    temp_c_out_57 : in STD_LOGIC;
    Q_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_149 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_149;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_149 is
  signal \^q_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Q_i_1__5\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \Q_i_2__1\ : label is "soft_lutpair57";
begin
  Q_reg_0(0) <= \^q_reg_0\(0);
\Q_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => \^q_reg_0\(0),
      I1 => product(1),
      I2 => Q_reg_1(0),
      I3 => temp_c_out_57,
      I4 => product(0),
      O => sum(0)
    );
\Q_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEAA880"
    )
        port map (
      I0 => \^q_reg_0\(0),
      I1 => product(0),
      I2 => temp_c_out_57,
      I3 => Q_reg_1(0),
      I4 => product(1),
      O => temp_c_out_59
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => \^q_reg_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_15 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_15 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_15;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_15 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_150 is
  port (
    Q_reg_0 : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    product : in STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_59 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_150 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_150;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_150 is
  signal \^q_reg_0\ : STD_LOGIC;
begin
  Q_reg_0 <= \^q_reg_0\;
\Q_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^q_reg_0\,
      I1 => product(0),
      I2 => temp_c_out_59,
      O => sum(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => \^q_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_151 is
  port (
    multiplicand_d : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    product : in STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_5 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_151 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_151;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_151 is
  signal \^multiplicand_d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \D_reg[6]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \Q_i_1__58\ : label is "soft_lutpair58";
begin
  multiplicand_d(0) <= \^multiplicand_d\(0);
\D_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^multiplicand_d\(0),
      I1 => B(0),
      I2 => Q_reg_0(0),
      O => D(0)
    );
\Q_i_1__58\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^multiplicand_d\(0),
      I1 => product(0),
      I2 => temp_c_out_5,
      O => sum(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => \^multiplicand_d\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_152 is
  port (
    Q_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_61 : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    product : in STD_LOGIC_VECTOR ( 1 downto 0 );
    temp_c_out_59 : in STD_LOGIC;
    Q_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_152 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_152;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_152 is
  signal \^q_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Q_i_1__3\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \Q_i_2__0\ : label is "soft_lutpair59";
begin
  Q_reg_0(0) <= \^q_reg_0\(0);
\Q_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => \^q_reg_0\(0),
      I1 => product(1),
      I2 => Q_reg_1(0),
      I3 => temp_c_out_59,
      I4 => product(0),
      O => sum(0)
    );
\Q_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEAA880"
    )
        port map (
      I0 => \^q_reg_0\(0),
      I1 => product(0),
      I2 => temp_c_out_59,
      I3 => Q_reg_1(0),
      I4 => product(1),
      O => temp_c_out_61
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => \^q_reg_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_153 is
  port (
    Q_reg_0 : out STD_LOGIC;
    temp_c_out_62 : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    temp_c_out_61 : in STD_LOGIC;
    product : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_153 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_153;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_153 is
  signal \^q_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Q_i_1__2\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of Q_i_2 : label is "soft_lutpair60";
begin
  Q_reg_0 <= \^q_reg_0\;
\Q_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^q_reg_0\,
      I1 => product(0),
      I2 => temp_c_out_61,
      O => sum(0)
    );
Q_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \^q_reg_0\,
      I1 => temp_c_out_61,
      I2 => product(0),
      O => temp_c_out_62
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => \^q_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_154 is
  port (
    Q_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    product : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_61 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_154 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_154;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_154 is
  signal \^q_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  Q_reg_0(0) <= \^q_reg_0\(0);
\Q_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => \^q_reg_0\(0),
      I1 => product(1),
      I2 => Q_reg_1(0),
      I3 => temp_c_out_61,
      I4 => product(0),
      O => sum(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => \^q_reg_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_155 is
  port (
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    product : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_62 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_155 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_155;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_155 is
  signal multiplicand_d : STD_LOGIC_VECTOR ( 63 to 63 );
begin
\Q_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => multiplicand_d(63),
      I1 => product(1),
      I2 => Q_reg_0(0),
      I3 => temp_c_out_62,
      I4 => product(0),
      O => sum(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => multiplicand_d(63)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_156 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_7 : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    product : in STD_LOGIC_VECTOR ( 1 downto 0 );
    temp_c_out_5 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_156 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_156;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_156 is
  signal multiplicand_d : STD_LOGIC_VECTOR ( 6 to 6 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Q_i_1__57\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \Q_i_2__27\ : label is "soft_lutpair61";
begin
\D_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => multiplicand_d(6),
      I1 => B(0),
      I2 => Q_reg_1(0),
      O => D(0)
    );
\Q_i_1__57\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => multiplicand_d(6),
      I1 => product(1),
      I2 => Q_reg_0(0),
      I3 => temp_c_out_5,
      I4 => product(0),
      O => sum(0)
    );
\Q_i_2__27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEAA880"
    )
        port map (
      I0 => multiplicand_d(6),
      I1 => product(0),
      I2 => temp_c_out_5,
      I3 => Q_reg_0(0),
      I4 => product(1),
      O => temp_c_out_7
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => multiplicand_d(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_157 is
  port (
    multiplicand_d : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    product : in STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_7 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_157 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_157;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_157 is
  signal \^multiplicand_d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \D_reg[8]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \Q_i_1__56\ : label is "soft_lutpair62";
begin
  multiplicand_d(0) <= \^multiplicand_d\(0);
\D_reg[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^multiplicand_d\(0),
      I1 => B(0),
      I2 => Q_reg_0(0),
      O => D(0)
    );
\Q_i_1__56\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^multiplicand_d\(0),
      I1 => product(0),
      I2 => temp_c_out_7,
      O => sum(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => \^multiplicand_d\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_158 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_9 : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    product : in STD_LOGIC_VECTOR ( 1 downto 0 );
    temp_c_out_7 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_158 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_158;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_158 is
  signal multiplicand_d : STD_LOGIC_VECTOR ( 8 to 8 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Q_i_1__55\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \Q_i_2__26\ : label is "soft_lutpair63";
begin
\D_reg[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => multiplicand_d(8),
      I1 => B(0),
      I2 => Q_reg_1(0),
      O => D(0)
    );
\Q_i_1__55\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => multiplicand_d(8),
      I1 => product(1),
      I2 => Q_reg_0(0),
      I3 => temp_c_out_7,
      I4 => product(0),
      O => sum(0)
    );
\Q_i_2__26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEAA880"
    )
        port map (
      I0 => multiplicand_d(8),
      I1 => product(0),
      I2 => temp_c_out_7,
      I3 => Q_reg_0(0),
      I4 => product(1),
      O => temp_c_out_9
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => multiplicand_d(8)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_159 is
  port (
    Q_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    product : in STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_9 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_159 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_159;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_159 is
  signal \^q_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \D_reg[10]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \Q_i_1__54\ : label is "soft_lutpair64";
begin
  Q_reg_0(0) <= \^q_reg_0\(0);
\D_reg[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^q_reg_0\(0),
      I1 => B(0),
      I2 => Q_reg_1(0),
      O => D(0)
    );
\Q_i_1__54\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^q_reg_0\(0),
      I1 => product(0),
      I2 => temp_c_out_9,
      O => sum(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => \^q_reg_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_16 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_16 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_16;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_16 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_17 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_17 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_17;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_17 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_18 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_18 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_18;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_18 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_19 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_19 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_19;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_19 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_2 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_2 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_2;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_2 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_20 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_20 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_20;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_20 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_21 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_21 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_21;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_21 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_22 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_22 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_22;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_22 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_23 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_23 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_23;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_23 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_24 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_24 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_24;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_24 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_25 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_25 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_25;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_25 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_26 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_26 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_26;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_26 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_27 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_27 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_27;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_27 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_28 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_28 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_28;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_28 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_29 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_29 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_29;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_29 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_3 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_3 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_3;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_3 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_30 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_30 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_30;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_30 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_31 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_31 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_31;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_31 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_32 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_32 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_32;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_32 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_33 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_33 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_33;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_33 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_34 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_34 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_34;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_34 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_35 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_35 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_35;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_35 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_36 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_36 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_36;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_36 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_37 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_37 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_37;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_37 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_38 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_38 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_38;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_38 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_39 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_39 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_39;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_39 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_4 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_4 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_4;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_4 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_40 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_40 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_40;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_40 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_41 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_41 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_41;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_41 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_42 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_42 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_42;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_42 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_43 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_43 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_43;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_43 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_44 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_44 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_44;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_44 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_45 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_45 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_45;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_45 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_46 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_46 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_46;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_46 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_47 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_47 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_47;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_47 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_48 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_48 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_48;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_48 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_49 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_49 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_49;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_49 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_5 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_5 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_5;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_5 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_50 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_50 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_50;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_50 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_51 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_51 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_51;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_51 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_52 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_52 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_52;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_52 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_53 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_53 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_53;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_53 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_54 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_54 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_54;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_54 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_55 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_55 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_55;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_55 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_56 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_56 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_56;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_56 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_57 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_57 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_57;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_57 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_58 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_58 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_58;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_58 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_59 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_59 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_59;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_59 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_6 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_6 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_6;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_6 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_60 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_60 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_60;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_60 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_61 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_61 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_61;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_61 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_62 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_62 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_62;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_62 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_63 is
  port (
    multiplier_d : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_63 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_63;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_63 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => multiplier_d(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_64 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    A : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_64 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_64;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_64 is
  signal Q_reg_n_0 : STD_LOGIC;
begin
\D_reg[9]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q_reg_n_0,
      I1 => Q_reg_0(0),
      I2 => A(0),
      O => D(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => Q_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_65 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    A : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_65 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_65;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_65 is
  signal Q_reg_n_0 : STD_LOGIC;
begin
\D_reg[10]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q_reg_n_0,
      I1 => Q_reg_0(0),
      I2 => A(0),
      O => D(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => Q_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_66 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    A : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_66 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_66;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_66 is
  signal Q_reg_n_0 : STD_LOGIC;
begin
\D_reg[11]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q_reg_n_0,
      I1 => Q_reg_0(0),
      I2 => A(0),
      O => D(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => Q_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_67 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    A : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_67 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_67;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_67 is
  signal Q_reg_n_0 : STD_LOGIC;
begin
\D_reg[12]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q_reg_n_0,
      I1 => Q_reg_0(0),
      I2 => A(0),
      O => D(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => Q_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_68 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    A : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_68 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_68;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_68 is
  signal Q_reg_n_0 : STD_LOGIC;
begin
\D_reg[13]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q_reg_n_0,
      I1 => Q_reg_0(0),
      I2 => A(0),
      O => D(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => Q_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_69 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    A : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_69 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_69;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_69 is
  signal Q_reg_n_0 : STD_LOGIC;
begin
\D_reg[14]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q_reg_n_0,
      I1 => Q_reg_0(0),
      I2 => A(0),
      O => D(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => Q_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_7 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_7 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_7;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_7 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_70 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    A : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_70 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_70;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_70 is
  signal Q_reg_n_0 : STD_LOGIC;
begin
\D_reg[15]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q_reg_n_0,
      I1 => Q_reg_0(0),
      I2 => A(0),
      O => D(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => Q_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_71 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    A : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_71 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_71;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_71 is
  signal Q_reg_n_0 : STD_LOGIC;
begin
\D_reg[16]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q_reg_n_0,
      I1 => Q_reg_0(0),
      I2 => A(0),
      O => D(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => Q_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_72 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    A : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_72 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_72;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_72 is
  signal Q_reg_n_0 : STD_LOGIC;
begin
\D_reg[17]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q_reg_n_0,
      I1 => Q_reg_0(0),
      I2 => A(0),
      O => D(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => Q_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_73 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    A : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_73 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_73;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_73 is
  signal Q_reg_n_0 : STD_LOGIC;
begin
\D_reg[18]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q_reg_n_0,
      I1 => Q_reg_0(0),
      I2 => A(0),
      O => D(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => Q_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_74 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    A : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_74 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_74;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_74 is
  signal Q_reg_n_0 : STD_LOGIC;
begin
\D_reg[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q_reg_n_0,
      I1 => Q_reg_0(0),
      I2 => A(0),
      O => D(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => Q_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_75 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    A : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_75 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_75;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_75 is
  signal Q_reg_n_0 : STD_LOGIC;
begin
\D_reg[19]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q_reg_n_0,
      I1 => Q_reg_0(0),
      I2 => A(0),
      O => D(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => Q_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_76 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    A : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_76 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_76;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_76 is
  signal Q_reg_n_0 : STD_LOGIC;
begin
\D_reg[20]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q_reg_n_0,
      I1 => Q_reg_0(0),
      I2 => A(0),
      O => D(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => Q_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_77 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    A : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_77 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_77;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_77 is
  signal Q_reg_n_0 : STD_LOGIC;
begin
\D_reg[21]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q_reg_n_0,
      I1 => Q_reg_0(0),
      I2 => A(0),
      O => D(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => Q_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_78 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    A : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_78 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_78;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_78 is
  signal Q_reg_n_0 : STD_LOGIC;
begin
\D_reg[22]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q_reg_n_0,
      I1 => Q_reg_0(0),
      I2 => A(0),
      O => D(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => Q_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_79 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    A : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_79 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_79;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_79 is
  signal Q_reg_n_0 : STD_LOGIC;
begin
\D_reg[23]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q_reg_n_0,
      I1 => Q_reg_0(0),
      I2 => A(0),
      O => D(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => Q_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_8 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_8 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_8;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_8 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_80 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    A : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_80 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_80;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_80 is
  signal Q_reg_n_0 : STD_LOGIC;
begin
\D_reg[24]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q_reg_n_0,
      I1 => Q_reg_0(0),
      I2 => A(0),
      O => D(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => Q_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_81 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    A : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_81 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_81;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_81 is
  signal Q_reg_n_0 : STD_LOGIC;
begin
\D_reg[25]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q_reg_n_0,
      I1 => Q_reg_0(0),
      I2 => A(0),
      O => D(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => Q_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_82 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    A : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_82 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_82;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_82 is
  signal Q_reg_n_0 : STD_LOGIC;
begin
\D_reg[26]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q_reg_n_0,
      I1 => Q_reg_0(0),
      I2 => A(0),
      O => D(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => Q_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_83 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    A : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_83 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_83;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_83 is
  signal Q_reg_n_0 : STD_LOGIC;
begin
\D_reg[27]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q_reg_n_0,
      I1 => Q_reg_0(0),
      I2 => A(0),
      O => D(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => Q_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_84 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    A : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_84 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_84;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_84 is
  signal Q_reg_n_0 : STD_LOGIC;
begin
\D_reg[28]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q_reg_n_0,
      I1 => Q_reg_0(0),
      I2 => A(0),
      O => D(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => Q_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_85 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    A : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_85 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_85;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_85 is
  signal Q_reg_n_0 : STD_LOGIC;
begin
\D_reg[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q_reg_n_0,
      I1 => Q_reg_0(0),
      I2 => A(0),
      O => D(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => Q_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_86 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    A : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_86 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_86;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_86 is
  signal Q_reg_n_0 : STD_LOGIC;
begin
\D_reg[29]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q_reg_n_0,
      I1 => Q_reg_0(0),
      I2 => A(0),
      O => D(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => Q_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_87 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    A : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_87 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_87;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_87 is
  signal Q_reg_n_0 : STD_LOGIC;
begin
\D_reg[30]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q_reg_n_0,
      I1 => Q_reg_0(0),
      I2 => A(0),
      O => D(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => Q_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_88 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    A : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_88 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_88;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_88 is
  signal Q_reg_n_0 : STD_LOGIC;
begin
\D_reg[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q_reg_n_0,
      I1 => Q_reg_0(0),
      I2 => A(0),
      O => D(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => Q_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_89 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    A : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_89 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_89;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_89 is
  signal Q_reg_n_0 : STD_LOGIC;
begin
\D_reg[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q_reg_n_0,
      I1 => Q_reg_0(0),
      I2 => A(0),
      O => D(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => Q_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_9 is
  port (
    product : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_9 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_9;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_9 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => sum(0),
      Q => product(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_90 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    A : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_90 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_90;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_90 is
  signal Q_reg_n_0 : STD_LOGIC;
begin
\D_reg[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q_reg_n_0,
      I1 => Q_reg_0(0),
      I2 => A(0),
      O => D(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => Q_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_91 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    A : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_91 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_91;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_91 is
  signal Q_reg_n_0 : STD_LOGIC;
begin
\D_reg[5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q_reg_n_0,
      I1 => Q_reg_0(0),
      I2 => A(0),
      O => D(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => Q_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_92 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    A : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_92 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_92;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_92 is
  signal Q_reg_n_0 : STD_LOGIC;
begin
\D_reg[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q_reg_n_0,
      I1 => Q_reg_0(0),
      I2 => A(0),
      O => D(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => Q_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_93 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    A : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_93 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_93;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_93 is
  signal Q_reg_n_0 : STD_LOGIC;
begin
\D_reg[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q_reg_n_0,
      I1 => Q_reg_0(0),
      I2 => A(0),
      O => D(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => Q_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_94 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    A : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_94 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_94;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_94 is
  signal Q_reg_n_0 : STD_LOGIC;
begin
\D_reg[8]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q_reg_n_0,
      I1 => Q_reg_0(0),
      I2 => A(0),
      O => D(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => Q_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_96 is
  port (
    multiplicand_d : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_96 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_96;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_96 is
  signal \^multiplicand_d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \D_reg[1]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of Q_i_1 : label is "soft_lutpair20";
begin
  multiplicand_d(0) <= \^multiplicand_d\(0);
\D_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^multiplicand_d\(0),
      I1 => B(0),
      I2 => Q_reg_0(0),
      O => D(0)
    );
Q_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^multiplicand_d\(0),
      I1 => Q_reg_1,
      O => sum(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => \^multiplicand_d\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_97 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_11 : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    product : in STD_LOGIC_VECTOR ( 1 downto 0 );
    temp_c_out_9 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_97 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_97;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_97 is
  signal multiplicand_d : STD_LOGIC_VECTOR ( 10 to 10 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Q_i_1__53\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \Q_i_2__25\ : label is "soft_lutpair21";
begin
\D_reg[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => multiplicand_d(10),
      I1 => B(0),
      I2 => Q_reg_1(0),
      O => D(0)
    );
\Q_i_1__53\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => multiplicand_d(10),
      I1 => product(1),
      I2 => Q_reg_0(0),
      I3 => temp_c_out_9,
      I4 => product(0),
      O => sum(0)
    );
\Q_i_2__25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEAA880"
    )
        port map (
      I0 => multiplicand_d(10),
      I1 => product(0),
      I2 => temp_c_out_9,
      I3 => Q_reg_0(0),
      I4 => product(1),
      O => temp_c_out_11
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => multiplicand_d(10)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_98 is
  port (
    multiplicand_d : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    product : in STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_11 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_98 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_98;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_98 is
  signal \^multiplicand_d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \D_reg[12]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \Q_i_1__52\ : label is "soft_lutpair22";
begin
  multiplicand_d(0) <= \^multiplicand_d\(0);
\D_reg[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^multiplicand_d\(0),
      I1 => B(0),
      I2 => Q_reg_0(0),
      O => D(0)
    );
\Q_i_1__52\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^multiplicand_d\(0),
      I1 => product(0),
      I2 => temp_c_out_11,
      O => sum(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => \^multiplicand_d\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_1_99 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    temp_c_out_13 : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    product : in STD_LOGIC_VECTOR ( 1 downto 0 );
    temp_c_out_11 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_1_99 : entity is "reg_1";
end lab_3_top_level_0_0_reg_1_99;

architecture STRUCTURE of lab_3_top_level_0_0_reg_1_99 is
  signal multiplicand_d : STD_LOGIC_VECTOR ( 12 to 12 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Q_i_1__51\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \Q_i_2__24\ : label is "soft_lutpair23";
begin
\D_reg[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => multiplicand_d(12),
      I1 => B(0),
      I2 => Q_reg_1(0),
      O => D(0)
    );
\Q_i_1__51\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => multiplicand_d(12),
      I1 => product(1),
      I2 => Q_reg_0(0),
      I3 => temp_c_out_11,
      I4 => product(0),
      O => sum(0)
    );
\Q_i_2__24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEAA880"
    )
        port map (
      I0 => multiplicand_d(12),
      I1 => product(0),
      I2 => temp_c_out_11,
      I3 => Q_reg_0(0),
      I4 => product(1),
      O => temp_c_out_13
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => EN,
      CLR => rst,
      D => Q(0),
      Q => multiplicand_d(12)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_32 is
  port (
    multiplier_d : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 30 downto 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Q_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    A : in STD_LOGIC_VECTOR ( 30 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_32 : entity is "reg_32";
end lab_3_top_level_0_0_reg_32;

architecture STRUCTURE of lab_3_top_level_0_0_reg_32 is
begin
\L1[0].regs_1\: entity work.lab_3_top_level_0_0_reg_1_63
     port map (
      EN => EN,
      Q(0) => Q(0),
      clk => clk,
      multiplier_d(0) => multiplier_d(0),
      rst => rst
    );
\L1[10].regs_1\: entity work.lab_3_top_level_0_0_reg_1_64
     port map (
      A(0) => A(9),
      D(0) => D(9),
      EN => EN,
      Q(0) => Q(10),
      Q_reg_0(0) => Q_reg(0),
      clk => clk,
      rst => rst
    );
\L1[11].regs_1\: entity work.lab_3_top_level_0_0_reg_1_65
     port map (
      A(0) => A(10),
      D(0) => D(10),
      EN => EN,
      Q(0) => Q(11),
      Q_reg_0(0) => Q_reg(0),
      clk => clk,
      rst => rst
    );
\L1[12].regs_1\: entity work.lab_3_top_level_0_0_reg_1_66
     port map (
      A(0) => A(11),
      D(0) => D(11),
      EN => EN,
      Q(0) => Q(12),
      Q_reg_0(0) => Q_reg(0),
      clk => clk,
      rst => rst
    );
\L1[13].regs_1\: entity work.lab_3_top_level_0_0_reg_1_67
     port map (
      A(0) => A(12),
      D(0) => D(12),
      EN => EN,
      Q(0) => Q(13),
      Q_reg_0(0) => Q_reg(0),
      clk => clk,
      rst => rst
    );
\L1[14].regs_1\: entity work.lab_3_top_level_0_0_reg_1_68
     port map (
      A(0) => A(13),
      D(0) => D(13),
      EN => EN,
      Q(0) => Q(14),
      Q_reg_0(0) => Q_reg(0),
      clk => clk,
      rst => rst
    );
\L1[15].regs_1\: entity work.lab_3_top_level_0_0_reg_1_69
     port map (
      A(0) => A(14),
      D(0) => D(14),
      EN => EN,
      Q(0) => Q(15),
      Q_reg_0(0) => Q_reg(0),
      clk => clk,
      rst => rst
    );
\L1[16].regs_1\: entity work.lab_3_top_level_0_0_reg_1_70
     port map (
      A(0) => A(15),
      D(0) => D(15),
      EN => EN,
      Q(0) => Q(16),
      Q_reg_0(0) => Q_reg(0),
      clk => clk,
      rst => rst
    );
\L1[17].regs_1\: entity work.lab_3_top_level_0_0_reg_1_71
     port map (
      A(0) => A(16),
      D(0) => D(16),
      EN => EN,
      Q(0) => Q(17),
      Q_reg_0(0) => Q_reg(0),
      clk => clk,
      rst => rst
    );
\L1[18].regs_1\: entity work.lab_3_top_level_0_0_reg_1_72
     port map (
      A(0) => A(17),
      D(0) => D(17),
      EN => EN,
      Q(0) => Q(18),
      Q_reg_0(0) => Q_reg(0),
      clk => clk,
      rst => rst
    );
\L1[19].regs_1\: entity work.lab_3_top_level_0_0_reg_1_73
     port map (
      A(0) => A(18),
      D(0) => D(18),
      EN => EN,
      Q(0) => Q(19),
      Q_reg_0(0) => Q_reg(0),
      clk => clk,
      rst => rst
    );
\L1[1].regs_1\: entity work.lab_3_top_level_0_0_reg_1_74
     port map (
      A(0) => A(0),
      D(0) => D(0),
      EN => EN,
      Q(0) => Q(1),
      Q_reg_0(0) => Q_reg(0),
      clk => clk,
      rst => rst
    );
\L1[20].regs_1\: entity work.lab_3_top_level_0_0_reg_1_75
     port map (
      A(0) => A(19),
      D(0) => D(19),
      EN => EN,
      Q(0) => Q(20),
      Q_reg_0(0) => Q_reg(0),
      clk => clk,
      rst => rst
    );
\L1[21].regs_1\: entity work.lab_3_top_level_0_0_reg_1_76
     port map (
      A(0) => A(20),
      D(0) => D(20),
      EN => EN,
      Q(0) => Q(21),
      Q_reg_0(0) => Q_reg(0),
      clk => clk,
      rst => rst
    );
\L1[22].regs_1\: entity work.lab_3_top_level_0_0_reg_1_77
     port map (
      A(0) => A(21),
      D(0) => D(21),
      EN => EN,
      Q(0) => Q(22),
      Q_reg_0(0) => Q_reg(0),
      clk => clk,
      rst => rst
    );
\L1[23].regs_1\: entity work.lab_3_top_level_0_0_reg_1_78
     port map (
      A(0) => A(22),
      D(0) => D(22),
      EN => EN,
      Q(0) => Q(23),
      Q_reg_0(0) => Q_reg(0),
      clk => clk,
      rst => rst
    );
\L1[24].regs_1\: entity work.lab_3_top_level_0_0_reg_1_79
     port map (
      A(0) => A(23),
      D(0) => D(23),
      EN => EN,
      Q(0) => Q(24),
      Q_reg_0(0) => Q_reg(0),
      clk => clk,
      rst => rst
    );
\L1[25].regs_1\: entity work.lab_3_top_level_0_0_reg_1_80
     port map (
      A(0) => A(24),
      D(0) => D(24),
      EN => EN,
      Q(0) => Q(25),
      Q_reg_0(0) => Q_reg(0),
      clk => clk,
      rst => rst
    );
\L1[26].regs_1\: entity work.lab_3_top_level_0_0_reg_1_81
     port map (
      A(0) => A(25),
      D(0) => D(25),
      EN => EN,
      Q(0) => Q(26),
      Q_reg_0(0) => Q_reg(0),
      clk => clk,
      rst => rst
    );
\L1[27].regs_1\: entity work.lab_3_top_level_0_0_reg_1_82
     port map (
      A(0) => A(26),
      D(0) => D(26),
      EN => EN,
      Q(0) => Q(27),
      Q_reg_0(0) => Q_reg(0),
      clk => clk,
      rst => rst
    );
\L1[28].regs_1\: entity work.lab_3_top_level_0_0_reg_1_83
     port map (
      A(0) => A(27),
      D(0) => D(27),
      EN => EN,
      Q(0) => Q(28),
      Q_reg_0(0) => Q_reg(0),
      clk => clk,
      rst => rst
    );
\L1[29].regs_1\: entity work.lab_3_top_level_0_0_reg_1_84
     port map (
      A(0) => A(28),
      D(0) => D(28),
      EN => EN,
      Q(0) => Q(29),
      Q_reg_0(0) => Q_reg(0),
      clk => clk,
      rst => rst
    );
\L1[2].regs_1\: entity work.lab_3_top_level_0_0_reg_1_85
     port map (
      A(0) => A(1),
      D(0) => D(1),
      EN => EN,
      Q(0) => Q(2),
      Q_reg_0(0) => Q_reg(0),
      clk => clk,
      rst => rst
    );
\L1[30].regs_1\: entity work.lab_3_top_level_0_0_reg_1_86
     port map (
      A(0) => A(29),
      D(0) => D(29),
      EN => EN,
      Q(0) => Q(30),
      Q_reg_0(0) => Q_reg(0),
      clk => clk,
      rst => rst
    );
\L1[31].regs_1\: entity work.lab_3_top_level_0_0_reg_1_87
     port map (
      A(0) => A(30),
      D(0) => D(30),
      EN => EN,
      Q(0) => Q(31),
      Q_reg_0(0) => Q_reg(0),
      clk => clk,
      rst => rst
    );
\L1[3].regs_1\: entity work.lab_3_top_level_0_0_reg_1_88
     port map (
      A(0) => A(2),
      D(0) => D(2),
      EN => EN,
      Q(0) => Q(3),
      Q_reg_0(0) => Q_reg(0),
      clk => clk,
      rst => rst
    );
\L1[4].regs_1\: entity work.lab_3_top_level_0_0_reg_1_89
     port map (
      A(0) => A(3),
      D(0) => D(3),
      EN => EN,
      Q(0) => Q(4),
      Q_reg_0(0) => Q_reg(0),
      clk => clk,
      rst => rst
    );
\L1[5].regs_1\: entity work.lab_3_top_level_0_0_reg_1_90
     port map (
      A(0) => A(4),
      D(0) => D(4),
      EN => EN,
      Q(0) => Q(5),
      Q_reg_0(0) => Q_reg(0),
      clk => clk,
      rst => rst
    );
\L1[6].regs_1\: entity work.lab_3_top_level_0_0_reg_1_91
     port map (
      A(0) => A(5),
      D(0) => D(5),
      EN => EN,
      Q(0) => Q(6),
      Q_reg_0(0) => Q_reg(0),
      clk => clk,
      rst => rst
    );
\L1[7].regs_1\: entity work.lab_3_top_level_0_0_reg_1_92
     port map (
      A(0) => A(6),
      D(0) => D(6),
      EN => EN,
      Q(0) => Q(7),
      Q_reg_0(0) => Q_reg(0),
      clk => clk,
      rst => rst
    );
\L1[8].regs_1\: entity work.lab_3_top_level_0_0_reg_1_93
     port map (
      A(0) => A(7),
      D(0) => D(7),
      EN => EN,
      Q(0) => Q(8),
      Q_reg_0(0) => Q_reg(0),
      clk => clk,
      rst => rst
    );
\L1[9].regs_1\: entity work.lab_3_top_level_0_0_reg_1_94
     port map (
      A(0) => A(8),
      D(0) => D(8),
      EN => EN,
      Q(0) => Q(9),
      Q_reg_0(0) => Q_reg(0),
      clk => clk,
      rst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_64 is
  port (
    product : out STD_LOGIC_VECTOR ( 63 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    sum : in STD_LOGIC_VECTOR ( 63 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_64 : entity is "reg_64";
end lab_3_top_level_0_0_reg_64;

architecture STRUCTURE of lab_3_top_level_0_0_reg_64 is
begin
\L1[0].regs\: entity work.lab_3_top_level_0_0_reg_1
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(0),
      rst => rst,
      sum(0) => sum(0)
    );
\L1[10].regs\: entity work.lab_3_top_level_0_0_reg_1_0
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(10),
      rst => rst,
      sum(0) => sum(10)
    );
\L1[11].regs\: entity work.lab_3_top_level_0_0_reg_1_1
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(11),
      rst => rst,
      sum(0) => sum(11)
    );
\L1[12].regs\: entity work.lab_3_top_level_0_0_reg_1_2
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(12),
      rst => rst,
      sum(0) => sum(12)
    );
\L1[13].regs\: entity work.lab_3_top_level_0_0_reg_1_3
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(13),
      rst => rst,
      sum(0) => sum(13)
    );
\L1[14].regs\: entity work.lab_3_top_level_0_0_reg_1_4
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(14),
      rst => rst,
      sum(0) => sum(14)
    );
\L1[15].regs\: entity work.lab_3_top_level_0_0_reg_1_5
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(15),
      rst => rst,
      sum(0) => sum(15)
    );
\L1[16].regs\: entity work.lab_3_top_level_0_0_reg_1_6
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(16),
      rst => rst,
      sum(0) => sum(16)
    );
\L1[17].regs\: entity work.lab_3_top_level_0_0_reg_1_7
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(17),
      rst => rst,
      sum(0) => sum(17)
    );
\L1[18].regs\: entity work.lab_3_top_level_0_0_reg_1_8
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(18),
      rst => rst,
      sum(0) => sum(18)
    );
\L1[19].regs\: entity work.lab_3_top_level_0_0_reg_1_9
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(19),
      rst => rst,
      sum(0) => sum(19)
    );
\L1[1].regs\: entity work.lab_3_top_level_0_0_reg_1_10
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(1),
      rst => rst,
      sum(0) => sum(1)
    );
\L1[20].regs\: entity work.lab_3_top_level_0_0_reg_1_11
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(20),
      rst => rst,
      sum(0) => sum(20)
    );
\L1[21].regs\: entity work.lab_3_top_level_0_0_reg_1_12
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(21),
      rst => rst,
      sum(0) => sum(21)
    );
\L1[22].regs\: entity work.lab_3_top_level_0_0_reg_1_13
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(22),
      rst => rst,
      sum(0) => sum(22)
    );
\L1[23].regs\: entity work.lab_3_top_level_0_0_reg_1_14
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(23),
      rst => rst,
      sum(0) => sum(23)
    );
\L1[24].regs\: entity work.lab_3_top_level_0_0_reg_1_15
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(24),
      rst => rst,
      sum(0) => sum(24)
    );
\L1[25].regs\: entity work.lab_3_top_level_0_0_reg_1_16
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(25),
      rst => rst,
      sum(0) => sum(25)
    );
\L1[26].regs\: entity work.lab_3_top_level_0_0_reg_1_17
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(26),
      rst => rst,
      sum(0) => sum(26)
    );
\L1[27].regs\: entity work.lab_3_top_level_0_0_reg_1_18
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(27),
      rst => rst,
      sum(0) => sum(27)
    );
\L1[28].regs\: entity work.lab_3_top_level_0_0_reg_1_19
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(28),
      rst => rst,
      sum(0) => sum(28)
    );
\L1[29].regs\: entity work.lab_3_top_level_0_0_reg_1_20
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(29),
      rst => rst,
      sum(0) => sum(29)
    );
\L1[2].regs\: entity work.lab_3_top_level_0_0_reg_1_21
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(2),
      rst => rst,
      sum(0) => sum(2)
    );
\L1[30].regs\: entity work.lab_3_top_level_0_0_reg_1_22
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(30),
      rst => rst,
      sum(0) => sum(30)
    );
\L1[31].regs\: entity work.lab_3_top_level_0_0_reg_1_23
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(31),
      rst => rst,
      sum(0) => sum(31)
    );
\L1[32].regs\: entity work.lab_3_top_level_0_0_reg_1_24
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(32),
      rst => rst,
      sum(0) => sum(32)
    );
\L1[33].regs\: entity work.lab_3_top_level_0_0_reg_1_25
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(33),
      rst => rst,
      sum(0) => sum(33)
    );
\L1[34].regs\: entity work.lab_3_top_level_0_0_reg_1_26
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(34),
      rst => rst,
      sum(0) => sum(34)
    );
\L1[35].regs\: entity work.lab_3_top_level_0_0_reg_1_27
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(35),
      rst => rst,
      sum(0) => sum(35)
    );
\L1[36].regs\: entity work.lab_3_top_level_0_0_reg_1_28
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(36),
      rst => rst,
      sum(0) => sum(36)
    );
\L1[37].regs\: entity work.lab_3_top_level_0_0_reg_1_29
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(37),
      rst => rst,
      sum(0) => sum(37)
    );
\L1[38].regs\: entity work.lab_3_top_level_0_0_reg_1_30
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(38),
      rst => rst,
      sum(0) => sum(38)
    );
\L1[39].regs\: entity work.lab_3_top_level_0_0_reg_1_31
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(39),
      rst => rst,
      sum(0) => sum(39)
    );
\L1[3].regs\: entity work.lab_3_top_level_0_0_reg_1_32
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(3),
      rst => rst,
      sum(0) => sum(3)
    );
\L1[40].regs\: entity work.lab_3_top_level_0_0_reg_1_33
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(40),
      rst => rst,
      sum(0) => sum(40)
    );
\L1[41].regs\: entity work.lab_3_top_level_0_0_reg_1_34
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(41),
      rst => rst,
      sum(0) => sum(41)
    );
\L1[42].regs\: entity work.lab_3_top_level_0_0_reg_1_35
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(42),
      rst => rst,
      sum(0) => sum(42)
    );
\L1[43].regs\: entity work.lab_3_top_level_0_0_reg_1_36
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(43),
      rst => rst,
      sum(0) => sum(43)
    );
\L1[44].regs\: entity work.lab_3_top_level_0_0_reg_1_37
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(44),
      rst => rst,
      sum(0) => sum(44)
    );
\L1[45].regs\: entity work.lab_3_top_level_0_0_reg_1_38
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(45),
      rst => rst,
      sum(0) => sum(45)
    );
\L1[46].regs\: entity work.lab_3_top_level_0_0_reg_1_39
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(46),
      rst => rst,
      sum(0) => sum(46)
    );
\L1[47].regs\: entity work.lab_3_top_level_0_0_reg_1_40
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(47),
      rst => rst,
      sum(0) => sum(47)
    );
\L1[48].regs\: entity work.lab_3_top_level_0_0_reg_1_41
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(48),
      rst => rst,
      sum(0) => sum(48)
    );
\L1[49].regs\: entity work.lab_3_top_level_0_0_reg_1_42
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(49),
      rst => rst,
      sum(0) => sum(49)
    );
\L1[4].regs\: entity work.lab_3_top_level_0_0_reg_1_43
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(4),
      rst => rst,
      sum(0) => sum(4)
    );
\L1[50].regs\: entity work.lab_3_top_level_0_0_reg_1_44
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(50),
      rst => rst,
      sum(0) => sum(50)
    );
\L1[51].regs\: entity work.lab_3_top_level_0_0_reg_1_45
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(51),
      rst => rst,
      sum(0) => sum(51)
    );
\L1[52].regs\: entity work.lab_3_top_level_0_0_reg_1_46
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(52),
      rst => rst,
      sum(0) => sum(52)
    );
\L1[53].regs\: entity work.lab_3_top_level_0_0_reg_1_47
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(53),
      rst => rst,
      sum(0) => sum(53)
    );
\L1[54].regs\: entity work.lab_3_top_level_0_0_reg_1_48
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(54),
      rst => rst,
      sum(0) => sum(54)
    );
\L1[55].regs\: entity work.lab_3_top_level_0_0_reg_1_49
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(55),
      rst => rst,
      sum(0) => sum(55)
    );
\L1[56].regs\: entity work.lab_3_top_level_0_0_reg_1_50
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(56),
      rst => rst,
      sum(0) => sum(56)
    );
\L1[57].regs\: entity work.lab_3_top_level_0_0_reg_1_51
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(57),
      rst => rst,
      sum(0) => sum(57)
    );
\L1[58].regs\: entity work.lab_3_top_level_0_0_reg_1_52
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(58),
      rst => rst,
      sum(0) => sum(58)
    );
\L1[59].regs\: entity work.lab_3_top_level_0_0_reg_1_53
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(59),
      rst => rst,
      sum(0) => sum(59)
    );
\L1[5].regs\: entity work.lab_3_top_level_0_0_reg_1_54
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(5),
      rst => rst,
      sum(0) => sum(5)
    );
\L1[60].regs\: entity work.lab_3_top_level_0_0_reg_1_55
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(60),
      rst => rst,
      sum(0) => sum(60)
    );
\L1[61].regs\: entity work.lab_3_top_level_0_0_reg_1_56
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(61),
      rst => rst,
      sum(0) => sum(61)
    );
\L1[62].regs\: entity work.lab_3_top_level_0_0_reg_1_57
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(62),
      rst => rst,
      sum(0) => sum(62)
    );
\L1[63].regs\: entity work.lab_3_top_level_0_0_reg_1_58
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(63),
      rst => rst,
      sum(0) => sum(63)
    );
\L1[6].regs\: entity work.lab_3_top_level_0_0_reg_1_59
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(6),
      rst => rst,
      sum(0) => sum(6)
    );
\L1[7].regs\: entity work.lab_3_top_level_0_0_reg_1_60
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(7),
      rst => rst,
      sum(0) => sum(7)
    );
\L1[8].regs\: entity work.lab_3_top_level_0_0_reg_1_61
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(8),
      rst => rst,
      sum(0) => sum(8)
    );
\L1[9].regs\: entity work.lab_3_top_level_0_0_reg_1_62
     port map (
      Q(0) => Q(0),
      clk => clk,
      product(0) => product(9),
      rst => rst,
      sum(0) => sum(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_reg_64_95 is
  port (
    Q_reg : out STD_LOGIC;
    Q_reg_0 : out STD_LOGIC_VECTOR ( 30 downto 0 );
    D : out STD_LOGIC_VECTOR ( 30 downto 0 );
    sum : out STD_LOGIC_VECTOR ( 63 downto 0 );
    EN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 63 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 30 downto 0 );
    Q_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_2 : in STD_LOGIC;
    product : in STD_LOGIC_VECTOR ( 62 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_reg_64_95 : entity is "reg_64";
end lab_3_top_level_0_0_reg_64_95;

architecture STRUCTURE of lab_3_top_level_0_0_reg_64_95 is
  signal \^q_reg\ : STD_LOGIC;
  signal \^q_reg_0\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \adder/temp_c_out_11\ : STD_LOGIC;
  signal \adder/temp_c_out_13\ : STD_LOGIC;
  signal \adder/temp_c_out_15\ : STD_LOGIC;
  signal \adder/temp_c_out_17\ : STD_LOGIC;
  signal \adder/temp_c_out_19\ : STD_LOGIC;
  signal \adder/temp_c_out_21\ : STD_LOGIC;
  signal \adder/temp_c_out_23\ : STD_LOGIC;
  signal \adder/temp_c_out_25\ : STD_LOGIC;
  signal \adder/temp_c_out_27\ : STD_LOGIC;
  signal \adder/temp_c_out_29\ : STD_LOGIC;
  signal \adder/temp_c_out_3\ : STD_LOGIC;
  signal \adder/temp_c_out_31\ : STD_LOGIC;
  signal \adder/temp_c_out_33\ : STD_LOGIC;
  signal \adder/temp_c_out_35\ : STD_LOGIC;
  signal \adder/temp_c_out_37\ : STD_LOGIC;
  signal \adder/temp_c_out_39\ : STD_LOGIC;
  signal \adder/temp_c_out_41\ : STD_LOGIC;
  signal \adder/temp_c_out_43\ : STD_LOGIC;
  signal \adder/temp_c_out_45\ : STD_LOGIC;
  signal \adder/temp_c_out_47\ : STD_LOGIC;
  signal \adder/temp_c_out_49\ : STD_LOGIC;
  signal \adder/temp_c_out_5\ : STD_LOGIC;
  signal \adder/temp_c_out_51\ : STD_LOGIC;
  signal \adder/temp_c_out_53\ : STD_LOGIC;
  signal \adder/temp_c_out_55\ : STD_LOGIC;
  signal \adder/temp_c_out_57\ : STD_LOGIC;
  signal \adder/temp_c_out_59\ : STD_LOGIC;
  signal \adder/temp_c_out_61\ : STD_LOGIC;
  signal \adder/temp_c_out_62\ : STD_LOGIC;
  signal \adder/temp_c_out_7\ : STD_LOGIC;
  signal \adder/temp_c_out_9\ : STD_LOGIC;
  signal multiplicand_d : STD_LOGIC_VECTOR ( 29 downto 0 );
begin
  Q_reg <= \^q_reg\;
  Q_reg_0(30 downto 0) <= \^q_reg_0\(30 downto 0);
\L1[0].regs\: entity work.lab_3_top_level_0_0_reg_1_96
     port map (
      B(0) => B(0),
      D(0) => D(0),
      EN => EN,
      Q(0) => Q(0),
      Q_reg_0(0) => Q_reg_1(0),
      Q_reg_1 => Q_reg_2,
      clk => clk,
      multiplicand_d(0) => multiplicand_d(0),
      rst => rst,
      sum(0) => sum(0)
    );
\L1[10].regs\: entity work.lab_3_top_level_0_0_reg_1_97
     port map (
      B(0) => B(10),
      D(0) => D(10),
      EN => EN,
      Q(0) => Q(10),
      Q_reg_0(0) => multiplicand_d(9),
      Q_reg_1(0) => Q_reg_1(0),
      clk => clk,
      product(1 downto 0) => product(9 downto 8),
      rst => rst,
      sum(0) => sum(10),
      temp_c_out_11 => \adder/temp_c_out_11\,
      temp_c_out_9 => \adder/temp_c_out_9\
    );
\L1[11].regs\: entity work.lab_3_top_level_0_0_reg_1_98
     port map (
      B(0) => B(11),
      D(0) => D(11),
      EN => EN,
      Q(0) => Q(11),
      Q_reg_0(0) => Q_reg_1(0),
      clk => clk,
      multiplicand_d(0) => multiplicand_d(11),
      product(0) => product(10),
      rst => rst,
      sum(0) => sum(11),
      temp_c_out_11 => \adder/temp_c_out_11\
    );
\L1[12].regs\: entity work.lab_3_top_level_0_0_reg_1_99
     port map (
      B(0) => B(12),
      D(0) => D(12),
      EN => EN,
      Q(0) => Q(12),
      Q_reg_0(0) => multiplicand_d(11),
      Q_reg_1(0) => Q_reg_1(0),
      clk => clk,
      product(1 downto 0) => product(11 downto 10),
      rst => rst,
      sum(0) => sum(12),
      temp_c_out_11 => \adder/temp_c_out_11\,
      temp_c_out_13 => \adder/temp_c_out_13\
    );
\L1[13].regs\: entity work.lab_3_top_level_0_0_reg_1_100
     port map (
      B(0) => B(13),
      D(0) => D(13),
      EN => EN,
      Q(0) => Q(13),
      Q_reg_0(0) => Q_reg_1(0),
      clk => clk,
      multiplicand_d(0) => multiplicand_d(13),
      product(0) => product(12),
      rst => rst,
      sum(0) => sum(13),
      temp_c_out_13 => \adder/temp_c_out_13\
    );
\L1[14].regs\: entity work.lab_3_top_level_0_0_reg_1_101
     port map (
      B(0) => B(14),
      D(0) => D(14),
      EN => EN,
      Q(0) => Q(14),
      Q_reg_0(0) => multiplicand_d(13),
      Q_reg_1(0) => Q_reg_1(0),
      clk => clk,
      product(1 downto 0) => product(13 downto 12),
      rst => rst,
      sum(0) => sum(14),
      temp_c_out_13 => \adder/temp_c_out_13\,
      temp_c_out_15 => \adder/temp_c_out_15\
    );
\L1[15].regs\: entity work.lab_3_top_level_0_0_reg_1_102
     port map (
      B(0) => B(15),
      D(0) => D(15),
      EN => EN,
      Q(0) => Q(15),
      Q_reg_0(0) => Q_reg_1(0),
      clk => clk,
      multiplicand_d(0) => multiplicand_d(15),
      product(0) => product(14),
      rst => rst,
      sum(0) => sum(15),
      temp_c_out_15 => \adder/temp_c_out_15\
    );
\L1[16].regs\: entity work.lab_3_top_level_0_0_reg_1_103
     port map (
      B(0) => B(16),
      D(0) => D(16),
      EN => EN,
      Q(0) => Q(16),
      Q_reg_0(0) => multiplicand_d(15),
      Q_reg_1(0) => Q_reg_1(0),
      clk => clk,
      product(1 downto 0) => product(15 downto 14),
      rst => rst,
      sum(0) => sum(16),
      temp_c_out_15 => \adder/temp_c_out_15\,
      temp_c_out_17 => \adder/temp_c_out_17\
    );
\L1[17].regs\: entity work.lab_3_top_level_0_0_reg_1_104
     port map (
      B(0) => B(17),
      D(0) => D(17),
      EN => EN,
      Q(0) => Q(17),
      Q_reg_0(0) => Q_reg_1(0),
      clk => clk,
      multiplicand_d(0) => multiplicand_d(17),
      product(0) => product(16),
      rst => rst,
      sum(0) => sum(17),
      temp_c_out_17 => \adder/temp_c_out_17\
    );
\L1[18].regs\: entity work.lab_3_top_level_0_0_reg_1_105
     port map (
      B(0) => B(18),
      D(0) => D(18),
      EN => EN,
      Q(0) => Q(18),
      Q_reg_0(0) => multiplicand_d(17),
      Q_reg_1(0) => Q_reg_1(0),
      clk => clk,
      product(1 downto 0) => product(17 downto 16),
      rst => rst,
      sum(0) => sum(18),
      temp_c_out_17 => \adder/temp_c_out_17\,
      temp_c_out_19 => \adder/temp_c_out_19\
    );
\L1[19].regs\: entity work.lab_3_top_level_0_0_reg_1_106
     port map (
      B(0) => B(19),
      D(0) => D(19),
      EN => EN,
      Q(0) => Q(19),
      Q_reg_0(0) => Q_reg_1(0),
      clk => clk,
      multiplicand_d(0) => multiplicand_d(19),
      product(0) => product(18),
      rst => rst,
      sum(0) => sum(19),
      temp_c_out_19 => \adder/temp_c_out_19\
    );
\L1[1].regs\: entity work.lab_3_top_level_0_0_reg_1_107
     port map (
      B(0) => B(1),
      D(0) => D(1),
      EN => EN,
      Q(0) => Q(1),
      Q_reg_0(0) => Q_reg_1(0),
      Q_reg_1 => Q_reg_2,
      Q_reg_2(0) => multiplicand_d(0),
      clk => clk,
      multiplicand_d(0) => multiplicand_d(1),
      product(0) => product(0),
      rst => rst,
      sum(0) => sum(1)
    );
\L1[20].regs\: entity work.lab_3_top_level_0_0_reg_1_108
     port map (
      B(0) => B(20),
      D(0) => D(20),
      EN => EN,
      Q(0) => Q(20),
      Q_reg_0(0) => multiplicand_d(19),
      Q_reg_1(0) => Q_reg_1(0),
      clk => clk,
      product(1 downto 0) => product(19 downto 18),
      rst => rst,
      sum(0) => sum(20),
      temp_c_out_19 => \adder/temp_c_out_19\,
      temp_c_out_21 => \adder/temp_c_out_21\
    );
\L1[21].regs\: entity work.lab_3_top_level_0_0_reg_1_109
     port map (
      B(0) => B(21),
      D(0) => D(21),
      EN => EN,
      Q(0) => Q(21),
      Q_reg_0(0) => Q_reg_1(0),
      clk => clk,
      multiplicand_d(0) => multiplicand_d(21),
      product(0) => product(20),
      rst => rst,
      sum(0) => sum(21),
      temp_c_out_21 => \adder/temp_c_out_21\
    );
\L1[22].regs\: entity work.lab_3_top_level_0_0_reg_1_110
     port map (
      B(0) => B(22),
      D(0) => D(22),
      EN => EN,
      Q(0) => Q(22),
      Q_reg_0(0) => multiplicand_d(21),
      Q_reg_1(0) => Q_reg_1(0),
      clk => clk,
      product(1 downto 0) => product(21 downto 20),
      rst => rst,
      sum(0) => sum(22),
      temp_c_out_21 => \adder/temp_c_out_21\,
      temp_c_out_23 => \adder/temp_c_out_23\
    );
\L1[23].regs\: entity work.lab_3_top_level_0_0_reg_1_111
     port map (
      B(0) => B(23),
      D(0) => D(23),
      EN => EN,
      Q(0) => Q(23),
      Q_reg_0(0) => Q_reg_1(0),
      clk => clk,
      multiplicand_d(0) => multiplicand_d(23),
      product(0) => product(22),
      rst => rst,
      sum(0) => sum(23),
      temp_c_out_23 => \adder/temp_c_out_23\
    );
\L1[24].regs\: entity work.lab_3_top_level_0_0_reg_1_112
     port map (
      B(0) => B(24),
      D(0) => D(24),
      EN => EN,
      Q(0) => Q(24),
      Q_reg_0(0) => multiplicand_d(23),
      Q_reg_1(0) => Q_reg_1(0),
      clk => clk,
      product(1 downto 0) => product(23 downto 22),
      rst => rst,
      sum(0) => sum(24),
      temp_c_out_23 => \adder/temp_c_out_23\,
      temp_c_out_25 => \adder/temp_c_out_25\
    );
\L1[25].regs\: entity work.lab_3_top_level_0_0_reg_1_113
     port map (
      B(0) => B(25),
      D(0) => D(25),
      EN => EN,
      Q(0) => Q(25),
      Q_reg_0(0) => Q_reg_1(0),
      clk => clk,
      multiplicand_d(0) => multiplicand_d(25),
      product(0) => product(24),
      rst => rst,
      sum(0) => sum(25),
      temp_c_out_25 => \adder/temp_c_out_25\
    );
\L1[26].regs\: entity work.lab_3_top_level_0_0_reg_1_114
     port map (
      B(0) => B(26),
      D(0) => D(26),
      EN => EN,
      Q(0) => Q(26),
      Q_reg_0(0) => multiplicand_d(25),
      Q_reg_1(0) => Q_reg_1(0),
      clk => clk,
      product(1 downto 0) => product(25 downto 24),
      rst => rst,
      sum(0) => sum(26),
      temp_c_out_25 => \adder/temp_c_out_25\,
      temp_c_out_27 => \adder/temp_c_out_27\
    );
\L1[27].regs\: entity work.lab_3_top_level_0_0_reg_1_115
     port map (
      B(0) => B(27),
      D(0) => D(27),
      EN => EN,
      Q(0) => Q(27),
      Q_reg_0(0) => Q_reg_1(0),
      clk => clk,
      multiplicand_d(0) => multiplicand_d(27),
      product(0) => product(26),
      rst => rst,
      sum(0) => sum(27),
      temp_c_out_27 => \adder/temp_c_out_27\
    );
\L1[28].regs\: entity work.lab_3_top_level_0_0_reg_1_116
     port map (
      B(0) => B(28),
      D(0) => D(28),
      EN => EN,
      Q(0) => Q(28),
      Q_reg_0(0) => multiplicand_d(27),
      Q_reg_1(0) => Q_reg_1(0),
      clk => clk,
      product(1 downto 0) => product(27 downto 26),
      rst => rst,
      sum(0) => sum(28),
      temp_c_out_27 => \adder/temp_c_out_27\,
      temp_c_out_29 => \adder/temp_c_out_29\
    );
\L1[29].regs\: entity work.lab_3_top_level_0_0_reg_1_117
     port map (
      B(0) => B(29),
      D(0) => D(29),
      EN => EN,
      Q(0) => Q(29),
      Q_reg_0(0) => Q_reg_1(0),
      clk => clk,
      multiplicand_d(0) => multiplicand_d(29),
      product(0) => product(28),
      rst => rst,
      sum(0) => sum(29),
      temp_c_out_29 => \adder/temp_c_out_29\
    );
\L1[2].regs\: entity work.lab_3_top_level_0_0_reg_1_118
     port map (
      B(0) => B(2),
      D(0) => D(2),
      EN => EN,
      Q(0) => Q(2),
      Q_reg_0(1 downto 0) => multiplicand_d(1 downto 0),
      Q_reg_1(0) => Q_reg_1(0),
      Q_reg_2 => Q_reg_2,
      clk => clk,
      product(1 downto 0) => product(1 downto 0),
      rst => rst,
      sum(0) => sum(2),
      temp_c_out_3 => \adder/temp_c_out_3\
    );
\L1[30].regs\: entity work.lab_3_top_level_0_0_reg_1_119
     port map (
      B(0) => B(30),
      D(0) => D(30),
      EN => EN,
      Q(0) => Q(30),
      Q_reg_0(0) => multiplicand_d(29),
      Q_reg_1(0) => Q_reg_1(0),
      clk => clk,
      product(1 downto 0) => product(29 downto 28),
      rst => rst,
      sum(0) => sum(30),
      temp_c_out_29 => \adder/temp_c_out_29\,
      temp_c_out_31 => \adder/temp_c_out_31\
    );
\L1[31].regs\: entity work.lab_3_top_level_0_0_reg_1_120
     port map (
      EN => EN,
      Q(0) => Q(31),
      Q_reg_0 => \^q_reg\,
      clk => clk,
      product(0) => product(30),
      rst => rst,
      sum(0) => sum(31),
      temp_c_out_31 => \adder/temp_c_out_31\
    );
\L1[32].regs\: entity work.lab_3_top_level_0_0_reg_1_121
     port map (
      EN => EN,
      Q(0) => Q(32),
      Q_reg_0(0) => \^q_reg_0\(0),
      Q_reg_1 => \^q_reg\,
      clk => clk,
      product(1 downto 0) => product(31 downto 30),
      rst => rst,
      sum(0) => sum(32),
      temp_c_out_31 => \adder/temp_c_out_31\,
      temp_c_out_33 => \adder/temp_c_out_33\
    );
\L1[33].regs\: entity work.lab_3_top_level_0_0_reg_1_122
     port map (
      EN => EN,
      Q(0) => Q(33),
      Q_reg_0 => \^q_reg_0\(1),
      clk => clk,
      product(0) => product(32),
      rst => rst,
      sum(0) => sum(33),
      temp_c_out_33 => \adder/temp_c_out_33\
    );
\L1[34].regs\: entity work.lab_3_top_level_0_0_reg_1_123
     port map (
      EN => EN,
      Q(0) => Q(34),
      Q_reg_0(0) => \^q_reg_0\(2),
      Q_reg_1(0) => \^q_reg_0\(1),
      clk => clk,
      product(1 downto 0) => product(33 downto 32),
      rst => rst,
      sum(0) => sum(34),
      temp_c_out_33 => \adder/temp_c_out_33\,
      temp_c_out_35 => \adder/temp_c_out_35\
    );
\L1[35].regs\: entity work.lab_3_top_level_0_0_reg_1_124
     port map (
      EN => EN,
      Q(0) => Q(35),
      Q_reg_0 => \^q_reg_0\(3),
      clk => clk,
      product(0) => product(34),
      rst => rst,
      sum(0) => sum(35),
      temp_c_out_35 => \adder/temp_c_out_35\
    );
\L1[36].regs\: entity work.lab_3_top_level_0_0_reg_1_125
     port map (
      EN => EN,
      Q(0) => Q(36),
      Q_reg_0(0) => \^q_reg_0\(4),
      Q_reg_1(0) => \^q_reg_0\(3),
      clk => clk,
      product(1 downto 0) => product(35 downto 34),
      rst => rst,
      sum(0) => sum(36),
      temp_c_out_35 => \adder/temp_c_out_35\,
      temp_c_out_37 => \adder/temp_c_out_37\
    );
\L1[37].regs\: entity work.lab_3_top_level_0_0_reg_1_126
     port map (
      EN => EN,
      Q(0) => Q(37),
      Q_reg_0 => \^q_reg_0\(5),
      clk => clk,
      product(0) => product(36),
      rst => rst,
      sum(0) => sum(37),
      temp_c_out_37 => \adder/temp_c_out_37\
    );
\L1[38].regs\: entity work.lab_3_top_level_0_0_reg_1_127
     port map (
      EN => EN,
      Q(0) => Q(38),
      Q_reg_0(0) => \^q_reg_0\(6),
      Q_reg_1(0) => \^q_reg_0\(5),
      clk => clk,
      product(1 downto 0) => product(37 downto 36),
      rst => rst,
      sum(0) => sum(38),
      temp_c_out_37 => \adder/temp_c_out_37\,
      temp_c_out_39 => \adder/temp_c_out_39\
    );
\L1[39].regs\: entity work.lab_3_top_level_0_0_reg_1_128
     port map (
      EN => EN,
      Q(0) => Q(39),
      Q_reg_0 => \^q_reg_0\(7),
      clk => clk,
      product(0) => product(38),
      rst => rst,
      sum(0) => sum(39),
      temp_c_out_39 => \adder/temp_c_out_39\
    );
\L1[3].regs\: entity work.lab_3_top_level_0_0_reg_1_129
     port map (
      B(0) => B(3),
      D(0) => D(3),
      EN => EN,
      Q(0) => Q(3),
      Q_reg_0(0) => Q_reg_1(0),
      clk => clk,
      multiplicand_d(0) => multiplicand_d(3),
      product(0) => product(2),
      rst => rst,
      sum(0) => sum(3),
      temp_c_out_3 => \adder/temp_c_out_3\
    );
\L1[40].regs\: entity work.lab_3_top_level_0_0_reg_1_130
     port map (
      EN => EN,
      Q(0) => Q(40),
      Q_reg_0(0) => \^q_reg_0\(8),
      Q_reg_1(0) => \^q_reg_0\(7),
      clk => clk,
      product(1 downto 0) => product(39 downto 38),
      rst => rst,
      sum(0) => sum(40),
      temp_c_out_39 => \adder/temp_c_out_39\,
      temp_c_out_41 => \adder/temp_c_out_41\
    );
\L1[41].regs\: entity work.lab_3_top_level_0_0_reg_1_131
     port map (
      EN => EN,
      Q(0) => Q(41),
      Q_reg_0 => \^q_reg_0\(9),
      clk => clk,
      product(0) => product(40),
      rst => rst,
      sum(0) => sum(41),
      temp_c_out_41 => \adder/temp_c_out_41\
    );
\L1[42].regs\: entity work.lab_3_top_level_0_0_reg_1_132
     port map (
      EN => EN,
      Q(0) => Q(42),
      Q_reg_0(0) => \^q_reg_0\(10),
      Q_reg_1(0) => \^q_reg_0\(9),
      clk => clk,
      product(1 downto 0) => product(41 downto 40),
      rst => rst,
      sum(0) => sum(42),
      temp_c_out_41 => \adder/temp_c_out_41\,
      temp_c_out_43 => \adder/temp_c_out_43\
    );
\L1[43].regs\: entity work.lab_3_top_level_0_0_reg_1_133
     port map (
      EN => EN,
      Q(0) => Q(43),
      Q_reg_0 => \^q_reg_0\(11),
      clk => clk,
      product(0) => product(42),
      rst => rst,
      sum(0) => sum(43),
      temp_c_out_43 => \adder/temp_c_out_43\
    );
\L1[44].regs\: entity work.lab_3_top_level_0_0_reg_1_134
     port map (
      EN => EN,
      Q(0) => Q(44),
      Q_reg_0(0) => \^q_reg_0\(12),
      Q_reg_1(0) => \^q_reg_0\(11),
      clk => clk,
      product(1 downto 0) => product(43 downto 42),
      rst => rst,
      sum(0) => sum(44),
      temp_c_out_43 => \adder/temp_c_out_43\,
      temp_c_out_45 => \adder/temp_c_out_45\
    );
\L1[45].regs\: entity work.lab_3_top_level_0_0_reg_1_135
     port map (
      EN => EN,
      Q(0) => Q(45),
      Q_reg_0 => \^q_reg_0\(13),
      clk => clk,
      product(0) => product(44),
      rst => rst,
      sum(0) => sum(45),
      temp_c_out_45 => \adder/temp_c_out_45\
    );
\L1[46].regs\: entity work.lab_3_top_level_0_0_reg_1_136
     port map (
      EN => EN,
      Q(0) => Q(46),
      Q_reg_0(0) => \^q_reg_0\(14),
      Q_reg_1(0) => \^q_reg_0\(13),
      clk => clk,
      product(1 downto 0) => product(45 downto 44),
      rst => rst,
      sum(0) => sum(46),
      temp_c_out_45 => \adder/temp_c_out_45\,
      temp_c_out_47 => \adder/temp_c_out_47\
    );
\L1[47].regs\: entity work.lab_3_top_level_0_0_reg_1_137
     port map (
      EN => EN,
      Q(0) => Q(47),
      Q_reg_0 => \^q_reg_0\(15),
      clk => clk,
      product(0) => product(46),
      rst => rst,
      sum(0) => sum(47),
      temp_c_out_47 => \adder/temp_c_out_47\
    );
\L1[48].regs\: entity work.lab_3_top_level_0_0_reg_1_138
     port map (
      EN => EN,
      Q(0) => Q(48),
      Q_reg_0(0) => \^q_reg_0\(16),
      Q_reg_1(0) => \^q_reg_0\(15),
      clk => clk,
      product(1 downto 0) => product(47 downto 46),
      rst => rst,
      sum(0) => sum(48),
      temp_c_out_47 => \adder/temp_c_out_47\,
      temp_c_out_49 => \adder/temp_c_out_49\
    );
\L1[49].regs\: entity work.lab_3_top_level_0_0_reg_1_139
     port map (
      EN => EN,
      Q(0) => Q(49),
      Q_reg_0 => \^q_reg_0\(17),
      clk => clk,
      product(0) => product(48),
      rst => rst,
      sum(0) => sum(49),
      temp_c_out_49 => \adder/temp_c_out_49\
    );
\L1[4].regs\: entity work.lab_3_top_level_0_0_reg_1_140
     port map (
      B(0) => B(4),
      D(0) => D(4),
      EN => EN,
      Q(0) => Q(4),
      Q_reg_0(0) => multiplicand_d(3),
      Q_reg_1(0) => Q_reg_1(0),
      clk => clk,
      product(1 downto 0) => product(3 downto 2),
      rst => rst,
      sum(0) => sum(4),
      temp_c_out_3 => \adder/temp_c_out_3\,
      temp_c_out_5 => \adder/temp_c_out_5\
    );
\L1[50].regs\: entity work.lab_3_top_level_0_0_reg_1_141
     port map (
      EN => EN,
      Q(0) => Q(50),
      Q_reg_0(0) => \^q_reg_0\(18),
      Q_reg_1(0) => \^q_reg_0\(17),
      clk => clk,
      product(1 downto 0) => product(49 downto 48),
      rst => rst,
      sum(0) => sum(50),
      temp_c_out_49 => \adder/temp_c_out_49\,
      temp_c_out_51 => \adder/temp_c_out_51\
    );
\L1[51].regs\: entity work.lab_3_top_level_0_0_reg_1_142
     port map (
      EN => EN,
      Q(0) => Q(51),
      Q_reg_0 => \^q_reg_0\(19),
      clk => clk,
      product(0) => product(50),
      rst => rst,
      sum(0) => sum(51),
      temp_c_out_51 => \adder/temp_c_out_51\
    );
\L1[52].regs\: entity work.lab_3_top_level_0_0_reg_1_143
     port map (
      EN => EN,
      Q(0) => Q(52),
      Q_reg_0(0) => \^q_reg_0\(20),
      Q_reg_1(0) => \^q_reg_0\(19),
      clk => clk,
      product(1 downto 0) => product(51 downto 50),
      rst => rst,
      sum(0) => sum(52),
      temp_c_out_51 => \adder/temp_c_out_51\,
      temp_c_out_53 => \adder/temp_c_out_53\
    );
\L1[53].regs\: entity work.lab_3_top_level_0_0_reg_1_144
     port map (
      EN => EN,
      Q(0) => Q(53),
      Q_reg_0 => \^q_reg_0\(21),
      clk => clk,
      product(0) => product(52),
      rst => rst,
      sum(0) => sum(53),
      temp_c_out_53 => \adder/temp_c_out_53\
    );
\L1[54].regs\: entity work.lab_3_top_level_0_0_reg_1_145
     port map (
      EN => EN,
      Q(0) => Q(54),
      Q_reg_0(0) => \^q_reg_0\(22),
      Q_reg_1(0) => \^q_reg_0\(21),
      clk => clk,
      product(1 downto 0) => product(53 downto 52),
      rst => rst,
      sum(0) => sum(54),
      temp_c_out_53 => \adder/temp_c_out_53\,
      temp_c_out_55 => \adder/temp_c_out_55\
    );
\L1[55].regs\: entity work.lab_3_top_level_0_0_reg_1_146
     port map (
      EN => EN,
      Q(0) => Q(55),
      Q_reg_0 => \^q_reg_0\(23),
      clk => clk,
      product(0) => product(54),
      rst => rst,
      sum(0) => sum(55),
      temp_c_out_55 => \adder/temp_c_out_55\
    );
\L1[56].regs\: entity work.lab_3_top_level_0_0_reg_1_147
     port map (
      EN => EN,
      Q(0) => Q(56),
      Q_reg_0(0) => \^q_reg_0\(24),
      Q_reg_1(0) => \^q_reg_0\(23),
      clk => clk,
      product(1 downto 0) => product(55 downto 54),
      rst => rst,
      sum(0) => sum(56),
      temp_c_out_55 => \adder/temp_c_out_55\,
      temp_c_out_57 => \adder/temp_c_out_57\
    );
\L1[57].regs\: entity work.lab_3_top_level_0_0_reg_1_148
     port map (
      EN => EN,
      Q(0) => Q(57),
      Q_reg_0 => \^q_reg_0\(25),
      clk => clk,
      product(0) => product(56),
      rst => rst,
      sum(0) => sum(57),
      temp_c_out_57 => \adder/temp_c_out_57\
    );
\L1[58].regs\: entity work.lab_3_top_level_0_0_reg_1_149
     port map (
      EN => EN,
      Q(0) => Q(58),
      Q_reg_0(0) => \^q_reg_0\(26),
      Q_reg_1(0) => \^q_reg_0\(25),
      clk => clk,
      product(1 downto 0) => product(57 downto 56),
      rst => rst,
      sum(0) => sum(58),
      temp_c_out_57 => \adder/temp_c_out_57\,
      temp_c_out_59 => \adder/temp_c_out_59\
    );
\L1[59].regs\: entity work.lab_3_top_level_0_0_reg_1_150
     port map (
      EN => EN,
      Q(0) => Q(59),
      Q_reg_0 => \^q_reg_0\(27),
      clk => clk,
      product(0) => product(58),
      rst => rst,
      sum(0) => sum(59),
      temp_c_out_59 => \adder/temp_c_out_59\
    );
\L1[5].regs\: entity work.lab_3_top_level_0_0_reg_1_151
     port map (
      B(0) => B(5),
      D(0) => D(5),
      EN => EN,
      Q(0) => Q(5),
      Q_reg_0(0) => Q_reg_1(0),
      clk => clk,
      multiplicand_d(0) => multiplicand_d(5),
      product(0) => product(4),
      rst => rst,
      sum(0) => sum(5),
      temp_c_out_5 => \adder/temp_c_out_5\
    );
\L1[60].regs\: entity work.lab_3_top_level_0_0_reg_1_152
     port map (
      EN => EN,
      Q(0) => Q(60),
      Q_reg_0(0) => \^q_reg_0\(28),
      Q_reg_1(0) => \^q_reg_0\(27),
      clk => clk,
      product(1 downto 0) => product(59 downto 58),
      rst => rst,
      sum(0) => sum(60),
      temp_c_out_59 => \adder/temp_c_out_59\,
      temp_c_out_61 => \adder/temp_c_out_61\
    );
\L1[61].regs\: entity work.lab_3_top_level_0_0_reg_1_153
     port map (
      EN => EN,
      Q(0) => Q(61),
      Q_reg_0 => \^q_reg_0\(29),
      clk => clk,
      product(0) => product(60),
      rst => rst,
      sum(0) => sum(61),
      temp_c_out_61 => \adder/temp_c_out_61\,
      temp_c_out_62 => \adder/temp_c_out_62\
    );
\L1[62].regs\: entity work.lab_3_top_level_0_0_reg_1_154
     port map (
      EN => EN,
      Q(0) => Q(62),
      Q_reg_0(0) => \^q_reg_0\(30),
      Q_reg_1(0) => \^q_reg_0\(29),
      clk => clk,
      product(1 downto 0) => product(61 downto 60),
      rst => rst,
      sum(0) => sum(62),
      temp_c_out_61 => \adder/temp_c_out_61\
    );
\L1[63].regs\: entity work.lab_3_top_level_0_0_reg_1_155
     port map (
      EN => EN,
      Q(0) => Q(63),
      Q_reg_0(0) => \^q_reg_0\(30),
      clk => clk,
      product(1 downto 0) => product(62 downto 61),
      rst => rst,
      sum(0) => sum(63),
      temp_c_out_62 => \adder/temp_c_out_62\
    );
\L1[6].regs\: entity work.lab_3_top_level_0_0_reg_1_156
     port map (
      B(0) => B(6),
      D(0) => D(6),
      EN => EN,
      Q(0) => Q(6),
      Q_reg_0(0) => multiplicand_d(5),
      Q_reg_1(0) => Q_reg_1(0),
      clk => clk,
      product(1 downto 0) => product(5 downto 4),
      rst => rst,
      sum(0) => sum(6),
      temp_c_out_5 => \adder/temp_c_out_5\,
      temp_c_out_7 => \adder/temp_c_out_7\
    );
\L1[7].regs\: entity work.lab_3_top_level_0_0_reg_1_157
     port map (
      B(0) => B(7),
      D(0) => D(7),
      EN => EN,
      Q(0) => Q(7),
      Q_reg_0(0) => Q_reg_1(0),
      clk => clk,
      multiplicand_d(0) => multiplicand_d(7),
      product(0) => product(6),
      rst => rst,
      sum(0) => sum(7),
      temp_c_out_7 => \adder/temp_c_out_7\
    );
\L1[8].regs\: entity work.lab_3_top_level_0_0_reg_1_158
     port map (
      B(0) => B(8),
      D(0) => D(8),
      EN => EN,
      Q(0) => Q(8),
      Q_reg_0(0) => multiplicand_d(7),
      Q_reg_1(0) => Q_reg_1(0),
      clk => clk,
      product(1 downto 0) => product(7 downto 6),
      rst => rst,
      sum(0) => sum(8),
      temp_c_out_7 => \adder/temp_c_out_7\,
      temp_c_out_9 => \adder/temp_c_out_9\
    );
\L1[9].regs\: entity work.lab_3_top_level_0_0_reg_1_159
     port map (
      B(0) => B(9),
      D(0) => D(9),
      EN => EN,
      Q(0) => Q(9),
      Q_reg_0(0) => multiplicand_d(9),
      Q_reg_1(0) => Q_reg_1(0),
      clk => clk,
      product(0) => product(8),
      rst => rst,
      sum(0) => sum(9),
      temp_c_out_9 => \adder/temp_c_out_9\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_shift_multiplicand is
  port (
    Q_reg : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sum : out STD_LOGIC_VECTOR ( 63 downto 0 );
    EN : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 30 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg_0 : in STD_LOGIC;
    product : in STD_LOGIC_VECTOR ( 62 downto 0 );
    D : in STD_LOGIC_VECTOR ( 32 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_shift_multiplicand : entity is "shift_multiplicand";
end lab_3_top_level_0_0_shift_multiplicand;

architecture STRUCTURE of lab_3_top_level_0_0_shift_multiplicand is
  signal D_0 : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal sample_reg_n_32 : STD_LOGIC;
  signal sample_reg_n_33 : STD_LOGIC;
  signal sample_reg_n_34 : STD_LOGIC;
  signal sample_reg_n_35 : STD_LOGIC;
  signal sample_reg_n_36 : STD_LOGIC;
  signal sample_reg_n_37 : STD_LOGIC;
  signal sample_reg_n_38 : STD_LOGIC;
  signal sample_reg_n_39 : STD_LOGIC;
  signal sample_reg_n_40 : STD_LOGIC;
  signal sample_reg_n_41 : STD_LOGIC;
  signal sample_reg_n_42 : STD_LOGIC;
  signal sample_reg_n_43 : STD_LOGIC;
  signal sample_reg_n_44 : STD_LOGIC;
  signal sample_reg_n_45 : STD_LOGIC;
  signal sample_reg_n_46 : STD_LOGIC;
  signal sample_reg_n_47 : STD_LOGIC;
  signal sample_reg_n_48 : STD_LOGIC;
  signal sample_reg_n_49 : STD_LOGIC;
  signal sample_reg_n_50 : STD_LOGIC;
  signal sample_reg_n_51 : STD_LOGIC;
  signal sample_reg_n_52 : STD_LOGIC;
  signal sample_reg_n_53 : STD_LOGIC;
  signal sample_reg_n_54 : STD_LOGIC;
  signal sample_reg_n_55 : STD_LOGIC;
  signal sample_reg_n_56 : STD_LOGIC;
  signal sample_reg_n_57 : STD_LOGIC;
  signal sample_reg_n_58 : STD_LOGIC;
  signal sample_reg_n_59 : STD_LOGIC;
  signal sample_reg_n_60 : STD_LOGIC;
  signal sample_reg_n_61 : STD_LOGIC;
  signal sample_reg_n_62 : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \D_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[10]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[11]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[12]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[13]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[14]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[15]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[16]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[17]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[18]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[19]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[20]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[21]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[22]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[23]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[24]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[25]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[26]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[27]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[28]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[29]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[30]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[31]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[32]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[33]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[34]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[35]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[36]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[37]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[38]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[39]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[40]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[41]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[42]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[43]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[44]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[45]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[46]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[47]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[48]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[49]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[50]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[51]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[52]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[53]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[54]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[55]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[56]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[57]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[58]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[59]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[60]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[61]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[62]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[63]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[8]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[9]\ : label is "LD";
begin
\D_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => EN,
      GE => '1',
      Q => D_0(0)
    );
\D_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_53,
      G => EN,
      GE => '1',
      Q => D_0(10)
    );
\D_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_52,
      G => EN,
      GE => '1',
      Q => D_0(11)
    );
\D_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_51,
      G => EN,
      GE => '1',
      Q => D_0(12)
    );
\D_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_50,
      G => EN,
      GE => '1',
      Q => D_0(13)
    );
\D_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_49,
      G => EN,
      GE => '1',
      Q => D_0(14)
    );
\D_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_48,
      G => EN,
      GE => '1',
      Q => D_0(15)
    );
\D_reg[16]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_47,
      G => EN,
      GE => '1',
      Q => D_0(16)
    );
\D_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_46,
      G => EN,
      GE => '1',
      Q => D_0(17)
    );
\D_reg[18]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_45,
      G => EN,
      GE => '1',
      Q => D_0(18)
    );
\D_reg[19]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_44,
      G => EN,
      GE => '1',
      Q => D_0(19)
    );
\D_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_62,
      G => EN,
      GE => '1',
      Q => D_0(1)
    );
\D_reg[20]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_43,
      G => EN,
      GE => '1',
      Q => D_0(20)
    );
\D_reg[21]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_42,
      G => EN,
      GE => '1',
      Q => D_0(21)
    );
\D_reg[22]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_41,
      G => EN,
      GE => '1',
      Q => D_0(22)
    );
\D_reg[23]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_40,
      G => EN,
      GE => '1',
      Q => D_0(23)
    );
\D_reg[24]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_39,
      G => EN,
      GE => '1',
      Q => D_0(24)
    );
\D_reg[25]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_38,
      G => EN,
      GE => '1',
      Q => D_0(25)
    );
\D_reg[26]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_37,
      G => EN,
      GE => '1',
      Q => D_0(26)
    );
\D_reg[27]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_36,
      G => EN,
      GE => '1',
      Q => D_0(27)
    );
\D_reg[28]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_35,
      G => EN,
      GE => '1',
      Q => D_0(28)
    );
\D_reg[29]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_34,
      G => EN,
      GE => '1',
      Q => D_0(29)
    );
\D_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_61,
      G => EN,
      GE => '1',
      Q => D_0(2)
    );
\D_reg[30]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_33,
      G => EN,
      GE => '1',
      Q => D_0(30)
    );
\D_reg[31]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_32,
      G => EN,
      GE => '1',
      Q => D_0(31)
    );
\D_reg[32]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(1),
      G => EN,
      GE => '1',
      Q => D_0(32)
    );
\D_reg[33]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(2),
      G => EN,
      GE => '1',
      Q => D_0(33)
    );
\D_reg[34]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(3),
      G => EN,
      GE => '1',
      Q => D_0(34)
    );
\D_reg[35]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(4),
      G => EN,
      GE => '1',
      Q => D_0(35)
    );
\D_reg[36]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(5),
      G => EN,
      GE => '1',
      Q => D_0(36)
    );
\D_reg[37]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(6),
      G => EN,
      GE => '1',
      Q => D_0(37)
    );
\D_reg[38]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(7),
      G => EN,
      GE => '1',
      Q => D_0(38)
    );
\D_reg[39]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(8),
      G => EN,
      GE => '1',
      Q => D_0(39)
    );
\D_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_60,
      G => EN,
      GE => '1',
      Q => D_0(3)
    );
\D_reg[40]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(9),
      G => EN,
      GE => '1',
      Q => D_0(40)
    );
\D_reg[41]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(10),
      G => EN,
      GE => '1',
      Q => D_0(41)
    );
\D_reg[42]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(11),
      G => EN,
      GE => '1',
      Q => D_0(42)
    );
\D_reg[43]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(12),
      G => EN,
      GE => '1',
      Q => D_0(43)
    );
\D_reg[44]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(13),
      G => EN,
      GE => '1',
      Q => D_0(44)
    );
\D_reg[45]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(14),
      G => EN,
      GE => '1',
      Q => D_0(45)
    );
\D_reg[46]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(15),
      G => EN,
      GE => '1',
      Q => D_0(46)
    );
\D_reg[47]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(16),
      G => EN,
      GE => '1',
      Q => D_0(47)
    );
\D_reg[48]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(17),
      G => EN,
      GE => '1',
      Q => D_0(48)
    );
\D_reg[49]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(18),
      G => EN,
      GE => '1',
      Q => D_0(49)
    );
\D_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_59,
      G => EN,
      GE => '1',
      Q => D_0(4)
    );
\D_reg[50]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(19),
      G => EN,
      GE => '1',
      Q => D_0(50)
    );
\D_reg[51]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(20),
      G => EN,
      GE => '1',
      Q => D_0(51)
    );
\D_reg[52]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(21),
      G => EN,
      GE => '1',
      Q => D_0(52)
    );
\D_reg[53]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(22),
      G => EN,
      GE => '1',
      Q => D_0(53)
    );
\D_reg[54]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(23),
      G => EN,
      GE => '1',
      Q => D_0(54)
    );
\D_reg[55]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(24),
      G => EN,
      GE => '1',
      Q => D_0(55)
    );
\D_reg[56]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(25),
      G => EN,
      GE => '1',
      Q => D_0(56)
    );
\D_reg[57]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(26),
      G => EN,
      GE => '1',
      Q => D_0(57)
    );
\D_reg[58]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(27),
      G => EN,
      GE => '1',
      Q => D_0(58)
    );
\D_reg[59]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(28),
      G => EN,
      GE => '1',
      Q => D_0(59)
    );
\D_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_58,
      G => EN,
      GE => '1',
      Q => D_0(5)
    );
\D_reg[60]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(29),
      G => EN,
      GE => '1',
      Q => D_0(60)
    );
\D_reg[61]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(30),
      G => EN,
      GE => '1',
      Q => D_0(61)
    );
\D_reg[62]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(31),
      G => EN,
      GE => '1',
      Q => D_0(62)
    );
\D_reg[63]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(32),
      G => EN,
      GE => '1',
      Q => D_0(63)
    );
\D_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_57,
      G => EN,
      GE => '1',
      Q => D_0(6)
    );
\D_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_56,
      G => EN,
      GE => '1',
      Q => D_0(7)
    );
\D_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_55,
      G => EN,
      GE => '1',
      Q => D_0(8)
    );
\D_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_54,
      G => EN,
      GE => '1',
      Q => D_0(9)
    );
sample_reg: entity work.lab_3_top_level_0_0_reg_64_95
     port map (
      B(30 downto 0) => B(30 downto 0),
      D(30) => sample_reg_n_32,
      D(29) => sample_reg_n_33,
      D(28) => sample_reg_n_34,
      D(27) => sample_reg_n_35,
      D(26) => sample_reg_n_36,
      D(25) => sample_reg_n_37,
      D(24) => sample_reg_n_38,
      D(23) => sample_reg_n_39,
      D(22) => sample_reg_n_40,
      D(21) => sample_reg_n_41,
      D(20) => sample_reg_n_42,
      D(19) => sample_reg_n_43,
      D(18) => sample_reg_n_44,
      D(17) => sample_reg_n_45,
      D(16) => sample_reg_n_46,
      D(15) => sample_reg_n_47,
      D(14) => sample_reg_n_48,
      D(13) => sample_reg_n_49,
      D(12) => sample_reg_n_50,
      D(11) => sample_reg_n_51,
      D(10) => sample_reg_n_52,
      D(9) => sample_reg_n_53,
      D(8) => sample_reg_n_54,
      D(7) => sample_reg_n_55,
      D(6) => sample_reg_n_56,
      D(5) => sample_reg_n_57,
      D(4) => sample_reg_n_58,
      D(3) => sample_reg_n_59,
      D(2) => sample_reg_n_60,
      D(1) => sample_reg_n_61,
      D(0) => sample_reg_n_62,
      EN => EN,
      Q(63 downto 0) => D_0(63 downto 0),
      Q_reg => Q_reg(0),
      Q_reg_0(30 downto 0) => Q_reg(31 downto 1),
      Q_reg_1(0) => Q(0),
      Q_reg_2 => Q_reg_0,
      clk => clk,
      product(62 downto 0) => product(62 downto 0),
      rst => rst,
      sum(63 downto 0) => sum(63 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_shift_multiplier is
  port (
    multiplier_d : out STD_LOGIC_VECTOR ( 0 to 0 );
    EN : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    A : in STD_LOGIC_VECTOR ( 30 downto 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_shift_multiplier : entity is "shift_multiplier";
end lab_3_top_level_0_0_shift_multiplier;

architecture STRUCTURE of lab_3_top_level_0_0_shift_multiplier is
  signal D_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal sample_reg_n_1 : STD_LOGIC;
  signal sample_reg_n_10 : STD_LOGIC;
  signal sample_reg_n_11 : STD_LOGIC;
  signal sample_reg_n_12 : STD_LOGIC;
  signal sample_reg_n_13 : STD_LOGIC;
  signal sample_reg_n_14 : STD_LOGIC;
  signal sample_reg_n_15 : STD_LOGIC;
  signal sample_reg_n_16 : STD_LOGIC;
  signal sample_reg_n_17 : STD_LOGIC;
  signal sample_reg_n_18 : STD_LOGIC;
  signal sample_reg_n_19 : STD_LOGIC;
  signal sample_reg_n_2 : STD_LOGIC;
  signal sample_reg_n_20 : STD_LOGIC;
  signal sample_reg_n_21 : STD_LOGIC;
  signal sample_reg_n_22 : STD_LOGIC;
  signal sample_reg_n_23 : STD_LOGIC;
  signal sample_reg_n_24 : STD_LOGIC;
  signal sample_reg_n_25 : STD_LOGIC;
  signal sample_reg_n_26 : STD_LOGIC;
  signal sample_reg_n_27 : STD_LOGIC;
  signal sample_reg_n_28 : STD_LOGIC;
  signal sample_reg_n_29 : STD_LOGIC;
  signal sample_reg_n_3 : STD_LOGIC;
  signal sample_reg_n_30 : STD_LOGIC;
  signal sample_reg_n_31 : STD_LOGIC;
  signal sample_reg_n_4 : STD_LOGIC;
  signal sample_reg_n_5 : STD_LOGIC;
  signal sample_reg_n_6 : STD_LOGIC;
  signal sample_reg_n_7 : STD_LOGIC;
  signal sample_reg_n_8 : STD_LOGIC;
  signal sample_reg_n_9 : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \D_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[10]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[11]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[12]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[13]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[14]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[15]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[16]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[17]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[18]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[19]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[20]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[21]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[22]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[23]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[24]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[25]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[26]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[27]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[28]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[29]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[30]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[31]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[8]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \D_reg[9]\ : label is "LD";
begin
\D_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_31,
      G => EN,
      GE => '1',
      Q => D_0(0)
    );
\D_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_21,
      G => EN,
      GE => '1',
      Q => D_0(10)
    );
\D_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_20,
      G => EN,
      GE => '1',
      Q => D_0(11)
    );
\D_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_19,
      G => EN,
      GE => '1',
      Q => D_0(12)
    );
\D_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_18,
      G => EN,
      GE => '1',
      Q => D_0(13)
    );
\D_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_17,
      G => EN,
      GE => '1',
      Q => D_0(14)
    );
\D_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_16,
      G => EN,
      GE => '1',
      Q => D_0(15)
    );
\D_reg[16]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_15,
      G => EN,
      GE => '1',
      Q => D_0(16)
    );
\D_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_14,
      G => EN,
      GE => '1',
      Q => D_0(17)
    );
\D_reg[18]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_13,
      G => EN,
      GE => '1',
      Q => D_0(18)
    );
\D_reg[19]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_12,
      G => EN,
      GE => '1',
      Q => D_0(19)
    );
\D_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_30,
      G => EN,
      GE => '1',
      Q => D_0(1)
    );
\D_reg[20]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_11,
      G => EN,
      GE => '1',
      Q => D_0(20)
    );
\D_reg[21]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_10,
      G => EN,
      GE => '1',
      Q => D_0(21)
    );
\D_reg[22]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_9,
      G => EN,
      GE => '1',
      Q => D_0(22)
    );
\D_reg[23]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_8,
      G => EN,
      GE => '1',
      Q => D_0(23)
    );
\D_reg[24]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_7,
      G => EN,
      GE => '1',
      Q => D_0(24)
    );
\D_reg[25]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_6,
      G => EN,
      GE => '1',
      Q => D_0(25)
    );
\D_reg[26]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_5,
      G => EN,
      GE => '1',
      Q => D_0(26)
    );
\D_reg[27]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_4,
      G => EN,
      GE => '1',
      Q => D_0(27)
    );
\D_reg[28]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_3,
      G => EN,
      GE => '1',
      Q => D_0(28)
    );
\D_reg[29]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_2,
      G => EN,
      GE => '1',
      Q => D_0(29)
    );
\D_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_29,
      G => EN,
      GE => '1',
      Q => D_0(2)
    );
\D_reg[30]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_1,
      G => EN,
      GE => '1',
      Q => D_0(30)
    );
\D_reg[31]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => EN,
      GE => '1',
      Q => D_0(31)
    );
\D_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_28,
      G => EN,
      GE => '1',
      Q => D_0(3)
    );
\D_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_27,
      G => EN,
      GE => '1',
      Q => D_0(4)
    );
\D_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_26,
      G => EN,
      GE => '1',
      Q => D_0(5)
    );
\D_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_25,
      G => EN,
      GE => '1',
      Q => D_0(6)
    );
\D_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_24,
      G => EN,
      GE => '1',
      Q => D_0(7)
    );
\D_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_23,
      G => EN,
      GE => '1',
      Q => D_0(8)
    );
\D_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sample_reg_n_22,
      G => EN,
      GE => '1',
      Q => D_0(9)
    );
sample_reg: entity work.lab_3_top_level_0_0_reg_32
     port map (
      A(30 downto 0) => A(30 downto 0),
      D(30) => sample_reg_n_1,
      D(29) => sample_reg_n_2,
      D(28) => sample_reg_n_3,
      D(27) => sample_reg_n_4,
      D(26) => sample_reg_n_5,
      D(25) => sample_reg_n_6,
      D(24) => sample_reg_n_7,
      D(23) => sample_reg_n_8,
      D(22) => sample_reg_n_9,
      D(21) => sample_reg_n_10,
      D(20) => sample_reg_n_11,
      D(19) => sample_reg_n_12,
      D(18) => sample_reg_n_13,
      D(17) => sample_reg_n_14,
      D(16) => sample_reg_n_15,
      D(15) => sample_reg_n_16,
      D(14) => sample_reg_n_17,
      D(13) => sample_reg_n_18,
      D(12) => sample_reg_n_19,
      D(11) => sample_reg_n_20,
      D(10) => sample_reg_n_21,
      D(9) => sample_reg_n_22,
      D(8) => sample_reg_n_23,
      D(7) => sample_reg_n_24,
      D(6) => sample_reg_n_25,
      D(5) => sample_reg_n_26,
      D(4) => sample_reg_n_27,
      D(3) => sample_reg_n_28,
      D(2) => sample_reg_n_29,
      D(1) => sample_reg_n_30,
      D(0) => sample_reg_n_31,
      EN => EN,
      Q(31 downto 0) => D_0(31 downto 0),
      Q_reg(0) => Q(0),
      clk => clk,
      multiplier_d(0) => multiplier_d(0),
      rst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_mult is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    product : out STD_LOGIC_VECTOR ( 63 downto 0 );
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    A : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_mult : entity is "mult";
end lab_3_top_level_0_0_mult;

architecture STRUCTURE of lab_3_top_level_0_0_mult is
  signal EN : STD_LOGIC;
  signal EN_0 : STD_LOGIC;
  signal c_n_0 : STD_LOGIC;
  signal c_n_1 : STD_LOGIC;
  signal c_n_10 : STD_LOGIC;
  signal c_n_11 : STD_LOGIC;
  signal c_n_12 : STD_LOGIC;
  signal c_n_13 : STD_LOGIC;
  signal c_n_14 : STD_LOGIC;
  signal c_n_15 : STD_LOGIC;
  signal c_n_16 : STD_LOGIC;
  signal c_n_17 : STD_LOGIC;
  signal c_n_18 : STD_LOGIC;
  signal c_n_19 : STD_LOGIC;
  signal c_n_2 : STD_LOGIC;
  signal c_n_20 : STD_LOGIC;
  signal c_n_21 : STD_LOGIC;
  signal c_n_22 : STD_LOGIC;
  signal c_n_23 : STD_LOGIC;
  signal c_n_24 : STD_LOGIC;
  signal c_n_25 : STD_LOGIC;
  signal c_n_26 : STD_LOGIC;
  signal c_n_27 : STD_LOGIC;
  signal c_n_28 : STD_LOGIC;
  signal c_n_29 : STD_LOGIC;
  signal c_n_3 : STD_LOGIC;
  signal c_n_30 : STD_LOGIC;
  signal c_n_31 : STD_LOGIC;
  signal c_n_32 : STD_LOGIC;
  signal c_n_38 : STD_LOGIC;
  signal c_n_4 : STD_LOGIC;
  signal c_n_5 : STD_LOGIC;
  signal c_n_6 : STD_LOGIC;
  signal c_n_7 : STD_LOGIC;
  signal c_n_8 : STD_LOGIC;
  signal c_n_9 : STD_LOGIC;
  signal multiplicand_d : STD_LOGIC_VECTOR ( 62 downto 31 );
  signal multiplier_d : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^product\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal shift : STD_LOGIC;
  signal sum : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal write : STD_LOGIC;
begin
  product(63 downto 0) <= \^product\(63 downto 0);
c: entity work.lab_3_top_level_0_0_control
     port map (
      A(0) => A(31),
      \A[31]\(0) => c_n_38,
      B(0) => B(0),
      D(32) => c_n_0,
      D(31) => c_n_1,
      D(30) => c_n_2,
      D(29) => c_n_3,
      D(28) => c_n_4,
      D(27) => c_n_5,
      D(26) => c_n_6,
      D(25) => c_n_7,
      D(24) => c_n_8,
      D(23) => c_n_9,
      D(22) => c_n_10,
      D(21) => c_n_11,
      D(20) => c_n_12,
      D(19) => c_n_13,
      D(18) => c_n_14,
      D(17) => c_n_15,
      D(16) => c_n_16,
      D(15) => c_n_17,
      D(14) => c_n_18,
      D(13) => c_n_19,
      D(12) => c_n_20,
      D(11) => c_n_21,
      D(10) => c_n_22,
      D(9) => c_n_23,
      D(8) => c_n_24,
      D(7) => c_n_25,
      D(6) => c_n_26,
      D(5) => c_n_27,
      D(4) => c_n_28,
      D(3) => c_n_29,
      D(2) => c_n_30,
      D(1) => c_n_31,
      D(0) => c_n_32,
      EN => EN_0,
      EN_0 => EN,
      Q(2) => Q(0),
      Q(1) => shift,
      Q(0) => write,
      clk => clk,
      multiplicand_d(31 downto 0) => multiplicand_d(62 downto 31),
      multiplier_d(0) => multiplier_d(0),
      rst => rst
    );
multiplicand_reg: entity work.lab_3_top_level_0_0_shift_multiplicand
     port map (
      B(30 downto 0) => B(31 downto 1),
      D(32) => c_n_0,
      D(31) => c_n_1,
      D(30) => c_n_2,
      D(29) => c_n_3,
      D(28) => c_n_4,
      D(27) => c_n_5,
      D(26) => c_n_6,
      D(25) => c_n_7,
      D(24) => c_n_8,
      D(23) => c_n_9,
      D(22) => c_n_10,
      D(21) => c_n_11,
      D(20) => c_n_12,
      D(19) => c_n_13,
      D(18) => c_n_14,
      D(17) => c_n_15,
      D(16) => c_n_16,
      D(15) => c_n_17,
      D(14) => c_n_18,
      D(13) => c_n_19,
      D(12) => c_n_20,
      D(11) => c_n_21,
      D(10) => c_n_22,
      D(9) => c_n_23,
      D(8) => c_n_24,
      D(7) => c_n_25,
      D(6) => c_n_26,
      D(5) => c_n_27,
      D(4) => c_n_28,
      D(3) => c_n_29,
      D(2) => c_n_30,
      D(1) => c_n_31,
      D(0) => c_n_32,
      EN => EN_0,
      Q(0) => shift,
      Q_reg(31 downto 0) => multiplicand_d(62 downto 31),
      Q_reg_0 => \^product\(0),
      clk => clk,
      product(62 downto 0) => \^product\(63 downto 1),
      rst => rst,
      sum(63 downto 0) => sum(63 downto 0)
    );
multiplier_reg: entity work.lab_3_top_level_0_0_shift_multiplier
     port map (
      A(30 downto 0) => A(30 downto 0),
      D(0) => c_n_38,
      EN => EN,
      Q(0) => shift,
      clk => clk,
      multiplier_d(0) => multiplier_d(0),
      rst => rst
    );
reg: entity work.lab_3_top_level_0_0_reg_64
     port map (
      Q(0) => write,
      clk => clk,
      product(63 downto 0) => \^product\(63 downto 0),
      rst => rst,
      sum(63 downto 0) => sum(63 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0_top_level is
  port (
    done : out STD_LOGIC;
    product : out STD_LOGIC_VECTOR ( 63 downto 0 );
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    A : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_top_level_0_0_top_level : entity is "top_level";
end lab_3_top_level_0_0_top_level;

architecture STRUCTURE of lab_3_top_level_0_0_top_level is
begin
mul: entity work.lab_3_top_level_0_0_mult
     port map (
      A(31 downto 0) => A(31 downto 0),
      B(31 downto 0) => B(31 downto 0),
      Q(0) => done,
      clk => clk,
      product(63 downto 0) => product(63 downto 0),
      rst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_top_level_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    R : out STD_LOGIC_VECTOR ( 63 downto 0 );
    done : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of lab_3_top_level_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of lab_3_top_level_0_0 : entity is "lab_3_top_level_0_0,top_level,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of lab_3_top_level_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of lab_3_top_level_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of lab_3_top_level_0_0 : entity is "top_level,Vivado 2018.3";
end lab_3_top_level_0_0;

architecture STRUCTURE of lab_3_top_level_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 25000000, PHASE 0.000, CLK_DOMAIN lab_3_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.lab_3_top_level_0_0_top_level
     port map (
      A(31 downto 0) => A(31 downto 0),
      B(31 downto 0) => B(31 downto 0),
      clk => clk,
      done => done,
      product(63 downto 0) => R(63 downto 0),
      rst => rst
    );
end STRUCTURE;
