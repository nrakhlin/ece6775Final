#==========================================================================
# Makefile
#==========================================================================
# @brief: A makefile the compiles and synthesizes the digitrec program
#
# @desc: 1. "make" runs csim by default
#        2. "make csim" compiles & executes the fixed-point implementation
#        3. "make clean" cleans up the directory


# Extract Vivado HLS include path
XILINX_VIVADO?=/opt/xilinx/Vivado/2019.2
XIL_HLS=source $(XILINX_VIVADO)/settings64.sh; vivado_hls
VHLS_INC=$(XILINX_VIVADO)/include
# Specify compilation flags
CFLAGS=-g -I${VHLS_INC}

TCL_SCRIPT=run_top.tcl

.PHONY: all csim bitstream clean

all: csim

p2peda: p2peda.cpp p2peda_test.cpp
	g++ ${CFLAGS} $^ -o $@ -lrt

result/p2peda_csim.txt: p2peda
	@echo "Running p2peda sim..."
	mkdir -p result
	./$< | tee $@

csim: result/p2peda_csim.txt
	@echo "Result reorded to $<"

xillydemo.bit:
	@echo "================================================================="
	@echo "Synthesizing p2peda and creating bitstream for $(TCL_SCRIPT)..."
	@echo "================================================================="
	$(XIL_HLS) -f $(TCL_SCRIPT)
	./run_bitstream.sh

bitstream: xillydemo.bit
	@echo "Bitstream saved to $<"

clean:
	rm -rf p2peda *.dat *.prj *.log
	rm -rf zedboard_project* xillydemo.bit
