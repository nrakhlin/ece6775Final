This is the AES folder. Both pragmas and directives are used. 
The decrypt files contain the main decrypt dut and other functions.
The encrypt files contain the main encrypt dut and other functions.
The constants .h file contains constants referenced in the code. 
The helper.cpp file contains shared variables such as substitution boxes and helper files used by both encrypt and decrypt. 
To synthesize encrypt run "vivado_hls -f encrypt.tcl". 
To synthesize decrypt run "vivado_hls -f decrypt.tcl"