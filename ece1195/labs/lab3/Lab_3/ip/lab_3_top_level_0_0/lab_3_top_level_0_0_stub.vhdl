-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Mar  8 11:06:05 2021
-- Host        : DESKTOP-9AE4DJD running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/ece1195/labs/lab3/lab_3/ip/lab_3_top_level_0_0/lab_3_top_level_0_0_stub.vhdl
-- Design      : lab_3_top_level_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lab_3_top_level_0_0 is
  Port ( 
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    R : out STD_LOGIC_VECTOR ( 63 downto 0 );
    done : out STD_LOGIC
  );

end lab_3_top_level_0_0;

architecture stub of lab_3_top_level_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A[31:0],B[31:0],clk,rst,R[63:0],done";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "top_level,Vivado 2018.3";
begin
end;
