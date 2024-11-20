#=============================================================================
# run_base.tcl 
#=============================================================================
# @brief: A Tcl script for synthesizing the baseline digit recongnition design.

# Project name
set hls_prj Blowfish_feistel.prj
# set hls_prj Blowfish_Encrypt.prj
# set hls_prj Blowfish_Setkey.prj
# set hls_prj Blowfish_Decrypt.prj

# Open/reset the project
open_project ${hls_prj} -reset

# Top function of the design is "dut"
# set_top Blowfish_SetKey_Encrypt
# set_top Blowfish_Encrypt
# set_top Blowfish_SetKey
set_top feistel



# Add design and testbench files
add_files blowfish.cpp
# add_files blowfish.h
# add_files initial_data.h
add_files -tb main.cpp

open_solution "solution1"
# Use Zynq device
set_part {xc7z020clg484-1}

# Target clock period is 10ns
create_clock -period 10

### You can insert your own directives here ###

############################################

# Simulate the C++ design
csim_design

# Synthesize the design
csynth_design
# Co-simulate the design
cosim_design

exit
