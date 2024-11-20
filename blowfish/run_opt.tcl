#=============================================================================
# run_base.tcl 
#=============================================================================
# @brief: A Tcl script for synthesizing the baseline digit recongnition design.

# Project name
set hls_prj Blowfish_Setkey_Encrypt_Opt.prj
# set hls_prj Blowfish_Setkey_Opt.prj



# Open/reset the project
open_project ${hls_prj} -reset

# Top function of the design is "dut"
set_top Blowfish_SetKey_Encrypt
# set_top Blowfish_Encrypt
# set_top Blowfish_SetKey
# set_top Blowfish_Decrypt




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

# ===========================================
# Blowfish_SetKey
# ===========================================

# Completely reshape initial parray and sboxes

# Unroll loop initializing parray
set_directive_unroll Blowfish_SetKey/PARRAY_INIT_1

# Pipeline the XORing of the parray with the key 
# set_directive_unroll Blowfish_SetKey/XOR_PARRAY_1 --> Utilization very high
set_directive_pipeline Blowfish_SetKey/XOR_PARRAY_2

# Pipeline the generation of the parrray
# Seems to do nothing...
# set_directive_pipeline Blowfish_SetKey/GENERATE_PARRAY_1

# Unroll loop initializing sbox
set_directive_unroll Blowfish_SetKey/SBOX_INIT_1
# Helpful... but, does not need array optimizations
# I am confused about this
set_directive_unroll Blowfish_SetKey/SBOX_INIT_2 -factor 4



# ===========================================
# Blowfish_Encrypt
# ===========================================
set_directive_unroll Blowfish_Encrypt/ENCRYPT_FEISTEL


# ===========================================
# Encrypt_SetKey
# ===========================================
# Pipelining achieves suboptimal II
# set_directive_pipeline Encrypt_SetKey

# Unrolling achieves faster latency that pipeline for more
# utilization. 
# set_directive_unroll Encrypt_SetKey/ENCRYPT_FEISTEL
set_directive_pipeline Encrypt_SetKey/ENCRYPT_FEISTEL



# ===========================================
# feistel
# ===========================================
# Function is pipelined when Encrypt_SetKey is also pipelined!
set_directive_pipeline feistel




############################################

# Simulate the C++ design
csim_design

# Synthesize the design
csynth_design
# Co-simulate the design
# cosim_design

exit
