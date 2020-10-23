
#set_host_options -max_cores 4
#Read All Files
#read_verilog ../src/NFC.v
analyze -format verilog ../src/NFC.v
elaborate NFC
current_design NFC
link

#Setting Clock Constraints
source -echo -verbose NFC.sdc

#Synthesis all design
compile -map_effort high
compile -map_effort high -inc
#compile -map_effort high -area_effort high
#compile -map_effort high -area_effort high -inc
#compile_ultra 
#compile_ultra -inc

write -format ddc     -hierarchy -output "NFC_syn.ddc"
write_sdf NFC_syn.sdf
write_file -format verilog -hierarchy -output NFC_syn.v
report_area > area.log
report_timing > timing.log
report_qor   >  NFC_syn.qor

