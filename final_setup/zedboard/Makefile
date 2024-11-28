#==========================================================================
# Makefile
#==========================================================================
# @brief: A makefile the compiles and runs the digitrec program
#
# @desc: 1. "make" or "make sw" runs software execution by default
#        2. "make fpga" invokes the HW accelerator
#        3. "make clean" cleans up the directory


INC_PATH=/usr/include/vivado_hls
CFLAGS = -I${INC_PATH}

.PHONY: all sw fpga

all: sw

p2peda-arm: p2peda.cpp p2peda_test.cpp
	@echo "Compiling & executing p2peda software program on ARM ..."
	g++ ${CFLAGS} $^ -o $@

result/p2peda_arm_sim.txt: p2peda-arm
	mkdir -p result
	./$< | tee $@

sw: result/p2peda_arm_sim.txt
	@echo "Result saved to $@"

p2peda-fpga: host.cpp
	@echo "Compiling host program"
	g++ ${CFLAGS} $^ -o $@
	@echo "Make sure bitstream is loaded!"

fpga: p2peda-fpga
	@echo "Running p2peda accelerator ..."
	./$<

# Clean up the directory before submission
clean:
	@echo "Clean up output files"
	rm -rf p2peda-sw vivado_hls.log *.prj result out.dat *~
	rm -rf p2peda-fpga
