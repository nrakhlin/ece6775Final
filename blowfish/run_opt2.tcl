#=============================================================================
# run_base.tcl 
#=============================================================================
# @brief: A Tcl script for synthesizing the baseline digit recongnition design.

# Project name
# set hls_prj Blowfish_Setkey_Encrypt_Opt.prj
# set hls_prj Blowfish_Setkey_Opt.prj
# set hls_prj del.prj
set hls_prj Blowfish_Setkey_Encrypt_Decrypt_Opt.prj



# Open/reset the project
open_project ${hls_prj} -reset

# Top function of the design is "dut"
# set_top Blowfish_SetKey_Encrypt
# set_top Blowfish_Encrypt
# set_top Blowfish_SetKey
# set_top Blowfish_Decrypt
set_top Blowfish_SetKey_Encrypt_Decrypt



# Add design and testbench files
add_files blowfish.cpp
add_files -tb main.cpp

open_solution "solution1"
# Use Zynq device
set_part {xc7z020clg484-1}

# Target clock period is 10ns
create_clock -period 10

### You can insert your own directives here ###

# ===========================================
# Array Pragmas
# ===========================================

#pragma HLS array_reshape variable=initial_parray complete dim=0
#pragma HLS array_partition variable=P complete dim=0
#pragma HLS array_reshape variable=initial_sbox complete dim=1
#pragma HLS array_partition variable=S complete dim=1

# ===========================================
# Blowfish_SetKey
# ===========================================

# Unroll loop initializing parray
set_directive_unroll Blowfish_SetKey/PARRAY_INIT_1

# Unroll loop initializing sboxes
set_directive_unroll Blowfish_SetKey/SBOX_INIT_1
# idk why this works without any array optimizations
set_directive_unroll Blowfish_SetKey/SBOX_INIT_2 -factor 4

# Unroll the XORing of the parray with the key 
set_directive_unroll Blowfish_SetKey/XOR_PARRAY_2

# Unroll the generation of the parrray
set_directive_unroll Blowfish_SetKey/GENERATE_PARRAY_1

# Unroll the generation of the sboxes (dim 1)
set_directive_unroll Blowfish_SetKey/GENERATE_SBOX_1


# ===========================================
# Encrypt_SetKey
# ===========================================
# Unrolling achieves faster latency that pipeline for more
# utilization (~2% difference). 
# 0.192 ms
set_directive_unroll Encrypt_SetKey/ENCRYPT_FEISTEL
# 0.208 ms 
# set_directive_pipeline Encrypt_SetKey/ENCRYPT_FEISTEL

# Pipelining achieves suboptimal II
# set_directive_pipeline Encrypt_SetKey


# ===========================================
# Blowfish_Encrypt
# ===========================================
set_directive_unroll Blowfish_Encrypt/ENCRYPT_FEISTEL

# ===========================================
# Blowfish_Decrypt
# ===========================================
set_directive_unroll Blowfish_Decrypt/DECRYPT_FEISTEL


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
