connect -url tcp:127.0.0.1:3121
source C:/ece1195/labs/lab1/Lab_1/Lab_1.sdk/Lab_1_wrapper_hw_platform_0/ps7_init.tcl
targets -set -filter {jtag_cable_name =~ "Xilinx PYNQ-Z1 003017AEE2DCA" && level==0} -index 1
fpga -file C:/ece1195/labs/lab1/Lab_1/Lab_1.sdk/Lab_1_wrapper_hw_platform_0/Lab_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Xilinx PYNQ-Z1 003017AEE2DCA"} -index 0
loadhw -hw C:/ece1195/labs/lab1/Lab_1/Lab_1.sdk/Lab_1_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Xilinx PYNQ-Z1 003017AEE2DCA"} -index 0
stop
ps7_init
ps7_post_config
configparams force-mem-access 0
