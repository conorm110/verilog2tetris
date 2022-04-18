# Verilog2Tetris
Verilog2Tetris is based off the same designs from the Nand2Tetris curriculum but instead of using a custom HDL everything is written in Verilog. The file layout is made for Intel Quartus and the default pin assignments are for the RZ-EasyFPGA A2.2 FPGA (Cyclone IV) development board.

## Current Functionality
Currently, the code runs the ALU from Nand2Tetris. Soon, a commit with a memory controller splitting the SD RAM into 16K RAM, VRAM, and some reserved space will be pushed.

## Future Goals
Once the main part of Nand2Tetris is completed and translated over to Verilog with everything confirmed to be working on the RZ-EasyFPGA A2.2 FPGA, adapting the simple computer to work with a Verilog-coded VGA adapter will begin. After that PS/2 keyboard support will be added as the RZ_EasyFPGA A2.2 board has a PS/2 port. Finally, I also want to add debug functioality over the built in DSUB-9 port.

## Setup and Programming with RZ-EasyFPGA A2.2
The RZ-EasyFPGA is not an easy FPGA to set up and it is a pain (mostly because I'm used to Vivado and built in programmers) but its doable. All instructions are for windows 10.
1. Download Quartus Lite from intel's website.
2. Use 7zip or equivlent to extract the .tar, then run the installer as administrator and just click next or yes to everything
3. Plug in you JTAG Programmer with it plugged to both the computer and FPGA. Then power the FPGA with another USB cable or barrel jack
4. Go to device manager, find the programmer (its going to have a warning sign) and then right click it and select update drivers
5. Search locally for drivers, they will be in your quartus folder -> drivers -> USB Programmer or something like that, make sure search subfolders is checked
6. Once everything is done, restart your computer
7. Now open the .qpf, this should open with Quartus Lite by default (this is good)
8. To program, go to tools -> programmer, select your hardware device and make sure it is set to JTAG. Then select the only file displaced and hit the run button 

