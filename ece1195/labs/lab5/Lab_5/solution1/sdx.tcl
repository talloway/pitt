# ==============================================================
# File generated on Sat Apr 17 18:16:17 -0400 2021
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../../lab5_template/vhls/testbench.cpp -cflags { -Wno-unknown-pragmas}
add_files lab5_template/vhls/convolution.cpp
add_files lab5_template/vhls/convolution.hpp
add_files lab5_template/vhls/image.cpp
add_files lab5_template/vhls/image.hpp
add_files lab5_template/vhls/rock512.pgm
set_part xc7z020clg400-1
create_clock -name default -period 10
config_export -display_name=hw_conv
config_export -format=ip_catalog
config_export -rtl=verilog
