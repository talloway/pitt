// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Feb  4 20:50:53 2021
// Host        : DESKTOP-9AE4DJD running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/ece1195/labs/lab1/adder_subtractor_1.0/src/full_adder_0/full_adder_0_stub.v
// Design      : full_adder_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "full_adder,Vivado 2018.3" *)
module full_adder_0(A, B, Cin, Sum, Cout)
/* synthesis syn_black_box black_box_pad_pin="A,B,Cin,Sum,Cout" */;
  input A;
  input B;
  input Cin;
  output Sum;
  output Cout;
endmodule
