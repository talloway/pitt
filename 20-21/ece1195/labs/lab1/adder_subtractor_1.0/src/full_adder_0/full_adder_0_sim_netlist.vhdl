-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Feb  4 20:50:53 2021
-- Host        : DESKTOP-9AE4DJD running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/ece1195/labs/lab1/adder_subtractor_1.0/src/full_adder_0/full_adder_0_sim_netlist.vhdl
-- Design      : full_adder_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity full_adder_0_full_adder is
  port (
    Sum : out STD_LOGIC;
    Cout : out STD_LOGIC;
    B : in STD_LOGIC;
    A : in STD_LOGIC;
    Cin : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of full_adder_0_full_adder : entity is "full_adder";
end full_adder_0_full_adder;

architecture STRUCTURE of full_adder_0_full_adder is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Cout__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Sum__0\ : label is "soft_lutpair0";
begin
\Cout__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => B,
      I1 => Cin,
      I2 => A,
      O => Cout
    );
\Sum__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => B,
      I1 => A,
      I2 => Cin,
      O => Sum
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity full_adder_0 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Cin : in STD_LOGIC;
    Sum : out STD_LOGIC;
    Cout : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of full_adder_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of full_adder_0 : entity is "full_adder_0,full_adder,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of full_adder_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of full_adder_0 : entity is "full_adder,Vivado 2018.3";
end full_adder_0;

architecture STRUCTURE of full_adder_0 is
begin
U0: entity work.full_adder_0_full_adder
     port map (
      A => A,
      B => B,
      Cin => Cin,
      Cout => Cout,
      Sum => Sum
    );
end STRUCTURE;
