# ==============================================================
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
# ==============================================================
CSIM_DESIGN = 1

__SIM_FPO__ = 1

__SIM_MATHHLS__ = 1

__SIM_OPENCV__ = 1

__SIM_FFT__ = 1

__SIM_FIR__ = 1

__SIM_DDS__ = 1

ObjDir = obj

HLS_SOURCES = ../../../../decrypt_test.cpp ../../../../helper.cpp ../../../../decrypt.cpp

TARGET := csim.exe

AUTOPILOT_ROOT := /opt/xilinx/Vivado/2019.2
AUTOPILOT_MACH := lnx64
ifdef AP_GCC_M32
  AUTOPILOT_MACH := Linux_x86
  IFLAG += -m32
endif
IFLAG += -fPIC
ifndef AP_GCC_PATH
  AP_GCC_PATH := /opt/xilinx/Vivado/2019.2/tps/lnx64/gcc-6.2.0/bin
endif
AUTOPILOT_TOOL := ${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools
AP_CLANG_PATH := ${AUTOPILOT_TOOL}/clang-3.9/bin
AUTOPILOT_TECH := ${AUTOPILOT_ROOT}/common/technology


IFLAG += -I "${AUTOPILOT_TOOL}/systemc/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include/opencv"
IFLAG += -I "${AUTOPILOT_ROOT}/include/ap_sysc"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_FP_comp"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_comp"
IFLAG += -I "${AUTOPILOT_TOOL}/auto_cc/include"
IFLAG += -D__SIM_FPO__

IFLAG += -D__SIM_OPENCV__

IFLAG += -D__SIM_FFT__

IFLAG += -D__SIM_FIR__

IFLAG += -D__SIM_DDS__

IFLAG += -D__DSP48E1__
IFLAG += -std=c++11 -Wno-unknown-pragmas 
AP_ENABLE_OPTIMIZED := 1
DFLAG += -D__xilinx_ip_top= -DAESL_TB
CCFLAG += 
TOOLCHAIN += 



include ./Makefile.rules

all: $(TARGET)



$(ObjDir)/decrypt_test.o: ../../../../decrypt_test.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../decrypt_test.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -std=c++11 -Wno-unknown-pragmas -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) -DNDEBUG $< -o $@ ; \

-include $(ObjDir)/decrypt_test.d

$(ObjDir)/helper.o: ../../../../helper.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../helper.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -std=c++11  $(IFLAG) $(DFLAG) -DNDEBUG $< -o $@ ; \

-include $(ObjDir)/helper.d

$(ObjDir)/decrypt.o: ../../../../decrypt.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../decrypt.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -std=c++11  $(IFLAG) $(DFLAG) -DNDEBUG $< -o $@ ; \

-include $(ObjDir)/decrypt.d
