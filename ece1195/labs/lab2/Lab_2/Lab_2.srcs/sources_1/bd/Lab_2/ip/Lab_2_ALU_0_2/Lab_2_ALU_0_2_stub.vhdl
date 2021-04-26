-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Feb 16 20:01:20 2021
-- Host        : DESKTOP-9AE4DJD running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/ece1195/labs/lab2/Lab_2/Lab_2.srcs/sources_1/bd/Lab_2/ip/Lab_2_ALU_0_2/Lab_2_ALU_0_2_stub.vhdl
-- Design      : Lab_2_ALU_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Lab_2_ALU_0_2 is
  Port ( 
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SHAMT : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ALUOp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    R : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Overflow : out STD_LOGIC;
    Zero : out STD_LOGIC
  );

end Lab_2_ALU_0_2;

architecture stub of Lab_2_ALU_0_2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A[31:0],B[31:0],SHAMT[4:0],ALUOp[3:0],R[31:0],Overflow,Zero";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "ALU,Vivado 2018.3";
begin
end;
