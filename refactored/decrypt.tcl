#=============================================================================
# run_base.tcl 
#=============================================================================
# @brief: A Tcl script for synthesizing the baseline digit recongnition design.

# Project name
set hls_prj decrypt.prj

# Open/reset the project
open_project ${hls_prj} -reset

# Top function of the design is "dut"
set_top decrypt_dut

# Add design and testbench files
add_files decrypt.cpp -cflags "-std=c++11"
add_files helper.cpp -cflags "-std=c++11"
# add_files -tb bnn_test.cpp -cflags "-std=c++11"
add_files -tb decrypt_test.cpp -cflags "-std=c++11"
# add_files -tb data

open_solution "solution1"
# Use Zynq device
set_part {xc7z020clg484-1}

# Target clock period is 10ns
create_clock -period 10

### You can insert your own directives here ###
set_directive_pipeline -II 1 aes_invMain/DECRYPT_MAIN_LOOP
# set_directive_unroll aes_invMain/DECRYPT_MAIN_LOOP

set_directive_array_partition -type complete -dim 0 decrypt_dut input
set_directive_array_partition -type complete -dim 0 decrypt_dut key
set_directive_array_partition -type complete -dim 0 decrypt_dut output

set_directive_array_partition -type complete -dim 0 aes_decrypt block
# set_directive_array_partition -type complete -dim 0 aes_decrypt expandKey

# set_directive_array_partition -type complete -dim 0 expandKey t

# set_directive_array_reshape -type complete -dim 0 helper sbox
# set_directive_array_partition -type complete -dim 0 helper sbox
# set_directive_array_reshape -type complete -dim 0 helper rsbox
# set_directive_array_partition -type complete -dim 0 helper rsbox
# set_directive_array_reshape -type complete -dim 0 helper Rcon
# set_directive_array_partition -type complete -dim 0 helper Rcon

set_directive_pipeline -II 1 expandKey/EX_WHILE
set_directive_unroll expandKey/EX_K_LOOP1
# set_directive_unroll expandKey/EX_INNER1
# set_directive_unroll expandKey/EX_INNER2
############################################

# Simulate the C++ design
csim_design -O
# Synthesize the design
csynth_design
# Co-simulate the design
cosim_design
exit
