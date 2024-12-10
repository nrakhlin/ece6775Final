#=============================================================================
# run_top.tcl 
#=============================================================================
# @brief: A Tcl script 

# Project name
set hls_prj p2peda_opt.prj

# Open/reset the project
open_project ${hls_prj} -reset

# Top function of the design is "dut"
set_top dut

# Add design and testbench files
add_files p2peda.cpp
add_files ../../refactored/encrypt.cpp
add_files ../../refactored/decrypt.cpp
add_files ../../refactored/helper.cpp
add_files -tb p2peda_test.cpp



open_solution "solution1"
# Use Zynq device
set_part {xc7z020clg484-1}

# Target clock period is 10ns
create_clock -period 10

### You can insert your own directives here ###
# ==================================================================
# Blowfish
# ------------------------------------------------------------------
# Array Pragmas
# ==================================================================
# Parray partitions
# #pragma HLS array_reshape variable=initial_parray complete dim=0
# #pragma HLS array_partition variable=P complete dim=0

# Sboxes
# #pragma HLS array_reshape variable=initial_sbox complete dim=1
# #pragma HLS array_partition variable=S complete dim=1

# ===========================================
# Blowfish_SetKey
# ===========================================
# Pipelining these functions is really bad...
# Unroll the XORing of the parray with the key 
# set_directive_unroll Blowfish_SetKey/XOR_PARRAY_2
# set_directive_unroll Blowfish_SetKey/XOR_PARRAY_1 -factor 2

# # Unroll the generation of the parrray
# set_directive_unroll Blowfish_SetKey/GENERATE_PARRAY_1

# # Unroll the generation of the sboxes (dim 1)
# set_directive_unroll Blowfish_SetKey/GENERATE_SBOX_1

# ===========================================
# Encrypt_SetKey
# ===========================================
# Unrolling achieves faster latency that pipeline for more
# set_directive_unroll Encrypt_SetKey/ENCRYPT_FEISTEL

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

# ==================================================================
# AES
# ------------------------------------------------------------------
# Array Pragmas
# ==================================================================
# ===========================================
# encrypt
# ===========================================
set_directive_pipeline -II 1 aes_main/AES_MAIN_LOOP
set_directive_array_partition -type complete -dim 0 encrypt_dut input
set_directive_array_partition -type complete -dim 0 encrypt_dut key
set_directive_array_partition -type complete -dim 0 encrypt_dut output

set_directive_pipeline -II 1 expandKey/EX_WHILE

# ===========================================
# Decrypt
# ===========================================
### You can insert your own directives here ###
set_directive_pipeline -II 1 aes_invMain/DECRYPT_MAIN_LOOP
# set_directive_unroll aes_invMain/DECRYPT_MAIN_LOOP

set_directive_array_partition -type complete -dim 0 decrypt_dut input
set_directive_array_partition -type complete -dim 0 decrypt_dut key
set_directive_array_partition -type complete -dim 0 decrypt_dut output

set_directive_array_partition -type complete -dim 0 aes_decrypt block

set_directive_pipeline -II 1 expandKey/EX_WHILE
set_directive_unroll expandKey/EX_K_LOOP1


############################################

# Simulate the C++ design
csim_design
# Synthesize the design
# csynth_design
# Co-simulate the design
# cosim_design
exit
