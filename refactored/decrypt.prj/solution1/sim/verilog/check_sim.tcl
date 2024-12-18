# ==============================================================
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
# ==============================================================
proc sc_sim_check {ret err logfile} {
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] start...";
	}
    set errfile "err.log"
    if {[file exists $errfile] && [file size $errfile] != 0} {
        set fl [open $errfile r]
        while {[gets $fl line] >= 0} {
            if {[string first "AESL_mErrNo = " $line] == 0} {
                set mismatch_num [string range $line [string length "AESL_mErrNo = "] end]
                if {$mismatch_num != 0} {
                    ::AP::printMsg ERR COSIM 403 COSIM_403_986 ${mismatch_num}
                    break
                }
            }
        }
    }
    if {$ret || $err != ""} {
        if { [lindex $::errorCode 0] eq "CHILDSTATUS"} {
            set status [lindex $::errorCode 2]
            if {$status != ""} {
                ::AP::printMsg ERR COSIM 404 COSIM_404_987 $status
            } else {
                ::AP::printMsg ERR COSIM 405 COSIM_405_988
            }
        } else {
            ::AP::printMsg ERR COSIM 405 COSIM_405_989
        }
    }
    if {[file exists $logfile]} {
        set cmdret [catch {eval exec "grep \"Error:\" $logfile"} err]
        file delete -force $logfile
        if {$cmdret == 0} {
            ::AP::printMsg ERR COSIM 405 COSIM_405_990
        }
    }
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] finish...";
	}
}

proc rtl_sim_check {} {
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] start...";
	}
    set errfile "err.log"
    if {[file exists $errfile] && [file size $errfile] != 0} {
        set fl [open $errfile r]
        set unmatch_num 0
        while {[gets $fl line] >= 0} {
            if {[string first "unmatched" $line] != -1} {
                set unmatch_num [expr $unmatch_num + 1]
            }
        }
        if {$unmatch_num != 0} {
            ::AP::printMsg ERR COSIM 406 COSIM_406_991 ${unmatch_num}
        }
    }
    if {[file exists ".aesl_error"]} {
        set errfl [open ".aesl_error" r]
        gets $errfl line
        if {$line != 0} {
            ::AP::printMsg ERR COSIM 407 COSIM_407_992 $line
        }
    }
    if {[file exists ".exit.err"]} {
        ::AP::printMsg ERR COSIM 405 COSIM_405_993
    }
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] finish...";
	}
}

proc check_tvin_file {} {
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] start...";
	}
    set rtlfilelist {
         "c.decrypt_dut.autotvin_input_0.dat"
         "c.decrypt_dut.autotvin_input_1.dat"
         "c.decrypt_dut.autotvin_input_2.dat"
         "c.decrypt_dut.autotvin_input_3.dat"
         "c.decrypt_dut.autotvin_input_4.dat"
         "c.decrypt_dut.autotvin_input_5.dat"
         "c.decrypt_dut.autotvin_input_6.dat"
         "c.decrypt_dut.autotvin_input_7.dat"
         "c.decrypt_dut.autotvin_input_8.dat"
         "c.decrypt_dut.autotvin_input_9.dat"
         "c.decrypt_dut.autotvin_input_10.dat"
         "c.decrypt_dut.autotvin_input_11.dat"
         "c.decrypt_dut.autotvin_input_12.dat"
         "c.decrypt_dut.autotvin_input_13.dat"
         "c.decrypt_dut.autotvin_input_14.dat"
         "c.decrypt_dut.autotvin_input_15.dat"
         "c.decrypt_dut.autotvin_key_0.dat"
         "c.decrypt_dut.autotvin_key_1.dat"
         "c.decrypt_dut.autotvin_key_2.dat"
         "c.decrypt_dut.autotvin_key_3.dat"
         "c.decrypt_dut.autotvin_key_4.dat"
         "c.decrypt_dut.autotvin_key_5.dat"
         "c.decrypt_dut.autotvin_key_6.dat"
         "c.decrypt_dut.autotvin_key_7.dat"
         "c.decrypt_dut.autotvin_key_8.dat"
         "c.decrypt_dut.autotvin_key_9.dat"
         "c.decrypt_dut.autotvin_key_10.dat"
         "c.decrypt_dut.autotvin_key_11.dat"
         "c.decrypt_dut.autotvin_key_12.dat"
         "c.decrypt_dut.autotvin_key_13.dat"
         "c.decrypt_dut.autotvin_key_14.dat"
         "c.decrypt_dut.autotvin_key_15.dat"
         "c.decrypt_dut.autotvout_output_0.dat"
         "c.decrypt_dut.autotvout_output_1.dat"
         "c.decrypt_dut.autotvout_output_2.dat"
         "c.decrypt_dut.autotvout_output_3.dat"
         "c.decrypt_dut.autotvout_output_4.dat"
         "c.decrypt_dut.autotvout_output_5.dat"
         "c.decrypt_dut.autotvout_output_6.dat"
         "c.decrypt_dut.autotvout_output_7.dat"
         "c.decrypt_dut.autotvout_output_8.dat"
         "c.decrypt_dut.autotvout_output_9.dat"
         "c.decrypt_dut.autotvout_output_10.dat"
         "c.decrypt_dut.autotvout_output_11.dat"
         "c.decrypt_dut.autotvout_output_12.dat"
         "c.decrypt_dut.autotvout_output_13.dat"
         "c.decrypt_dut.autotvout_output_14.dat"
         "c.decrypt_dut.autotvout_output_15.dat"
    }
    foreach rtlfile $rtlfilelist {
        if {[file isfile $rtlfile]} {
        } else {
            ::AP::printMsg ERR COSIM 320 COSIM_320_994
            return 1
        }
        set ret [catch {eval exec "grep /runtime $rtlfile"} err]
        if { $ret } {
            ::AP::printMsg ERR COSIM 320 COSIM_320_995
            return 1
        }
    }
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] finish...";
	}
    return 0
}

proc check_tvout_file {} {
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] start...";
	}
    set rtlfilelist {
         "rtl.decrypt_dut.autotvout_output_0.dat"
         "rtl.decrypt_dut.autotvout_output_1.dat"
         "rtl.decrypt_dut.autotvout_output_2.dat"
         "rtl.decrypt_dut.autotvout_output_3.dat"
         "rtl.decrypt_dut.autotvout_output_4.dat"
         "rtl.decrypt_dut.autotvout_output_5.dat"
         "rtl.decrypt_dut.autotvout_output_6.dat"
         "rtl.decrypt_dut.autotvout_output_7.dat"
         "rtl.decrypt_dut.autotvout_output_8.dat"
         "rtl.decrypt_dut.autotvout_output_9.dat"
         "rtl.decrypt_dut.autotvout_output_10.dat"
         "rtl.decrypt_dut.autotvout_output_11.dat"
         "rtl.decrypt_dut.autotvout_output_12.dat"
         "rtl.decrypt_dut.autotvout_output_13.dat"
         "rtl.decrypt_dut.autotvout_output_14.dat"
         "rtl.decrypt_dut.autotvout_output_15.dat"
    }
    foreach rtlfile $rtlfilelist {
        if {[file isfile $rtlfile]} {
        } else {
            ::AP::printMsg ERR COSIM 303 COSIM_303_996
            return 1
        }
        set ret [catch {eval exec "grep /runtime $rtlfile"} err]
        if { $ret } {
            ::AP::printMsg ERR COSIM 303 COSIM_303_997
            return 1
        }
    }
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] finish...";
	}
    return 0
}
