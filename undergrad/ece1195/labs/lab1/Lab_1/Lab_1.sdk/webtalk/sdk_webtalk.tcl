webtalk_init -webtalk_dir C:\\ece1195\\labs\\lab1\\Lab_1\\Lab_1.sdk\\webtalk
webtalk_register_client -client project
webtalk_add_data -client project -key date_generated -value "2021-02-08 22:30:31" -context "software_version_and_target_device"
webtalk_add_data -client project -key product_version -value "SDK v2018.3" -context "software_version_and_target_device"
webtalk_add_data -client project -key build_version -value "2018.3" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_platform -value "amd64" -context "software_version_and_target_device"
webtalk_add_data -client project -key registration_id -value "" -context "software_version_and_target_device"
webtalk_add_data -client project -key tool_flow -value "SDK" -context "software_version_and_target_device"
webtalk_add_data -client project -key beta -value "false" -context "software_version_and_target_device"
webtalk_add_data -client project -key route_design -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_family -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_device -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_package -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_speed -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key random_id -value "o98j9fhatqii4v8k1c2ifsc5pt" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_id -value "2018.3_3" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_iteration -value "3" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_name -value "Microsoft Windows 8 or later , 64-bit" -context "user_environment"
webtalk_add_data -client project -key os_release -value "major release  (build 9200)" -context "user_environment"
webtalk_add_data -client project -key cpu_name -value "Intel(R) Core(TM) i7-6500U CPU @ 2.50GHz" -context "user_environment"
webtalk_add_data -client project -key cpu_speed -value "2592 MHz" -context "user_environment"
webtalk_add_data -client project -key total_processors -value "1" -context "user_environment"
webtalk_add_data -client project -key system_ram -value "17.096 GB" -context "user_environment"
webtalk_register_client -client sdk
webtalk_add_data -client sdk -key uid -value "1612837824813" -context "sdk\\\\bsp/1612837824813"
webtalk_add_data -client sdk -key hwid -value "1612569562554" -context "sdk\\\\bsp/1612837824813"
webtalk_add_data -client sdk -key os -value "standalone" -context "sdk\\\\bsp/1612837824813"
webtalk_add_data -client sdk -key apptemplate -value "hello_world" -context "sdk\\\\bsp/1612837824813"
webtalk_add_data -client sdk -key RecordType -value "BSPCreation" -context "sdk\\\\bsp/1612837824813"
webtalk_add_data -client sdk -key uid -value "1612837838787" -context "sdk\\\\application/1612837838787"
webtalk_add_data -client sdk -key hwid -value "1612569562554" -context "sdk\\\\application/1612837838787"
webtalk_add_data -client sdk -key bspid -value "1612837824813" -context "sdk\\\\application/1612837838787"
webtalk_add_data -client sdk -key newbsp -value "true" -context "sdk\\\\application/1612837838787"
webtalk_add_data -client sdk -key os -value "standalone" -context "sdk\\\\application/1612837838787"
webtalk_add_data -client sdk -key apptemplate -value "hello_world" -context "sdk\\\\application/1612837838787"
webtalk_add_data -client sdk -key RecordType -value "APPCreation" -context "sdk\\\\application/1612837838787"
webtalk_add_data -client sdk -key LangUsed -value "C" -context "sdk\\\\application/1612837838787"
webtalk_add_data -client sdk -key Procused -value "ps7_cortexa9" -context "sdk\\\\application/1612837838787"
webtalk_add_data -client sdk -key projSize -value "264.02734375" -context "sdk\\\\application/1612837838787"
webtalk_add_data -client sdk -key uid -value "NA" -context "sdk\\\\bsp/1612841431866"
webtalk_add_data -client sdk -key RecordType -value "ToolUsage" -context "sdk\\\\bsp/1612841431866"
webtalk_add_data -client sdk -key BootgenCount -value "0" -context "sdk\\\\bsp/1612841431866"
webtalk_add_data -client sdk -key DebugCount -value "8" -context "sdk\\\\bsp/1612841431866"
webtalk_add_data -client sdk -key PerfCount -value "0" -context "sdk\\\\bsp/1612841431866"
webtalk_add_data -client sdk -key FlashCount -value "0" -context "sdk\\\\bsp/1612841431866"
webtalk_add_data -client sdk -key CrossTriggCount -value "0" -context "sdk\\\\bsp/1612841431866"
webtalk_add_data -client sdk -key QemuDebugCount -value "0" -context "sdk\\\\bsp/1612841431866"
webtalk_transmit -clientid 881873365 -regid "" -xml C:\\ece1195\\labs\\lab1\\Lab_1\\Lab_1.sdk\\webtalk\\usage_statistics_ext_sdk.xml -html C:\\ece1195\\labs\\lab1\\Lab_1\\Lab_1.sdk\\webtalk\\usage_statistics_ext_sdk.html -wdm C:\\ece1195\\labs\\lab1\\Lab_1\\Lab_1.sdk\\webtalk\\sdk_webtalk.wdm -intro "<H3>SDK Usage Report</H3><BR>"
webtalk_terminate