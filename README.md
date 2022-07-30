# Verilog2Tetris
Verilog2Tetris is based off the same designs from the Nand2Tetris curriculum but instead of using a custom HDL everything is written in Verilog. The project is made for Intel Quartus and the default pin assignments are for the RZ-EasyFPGA A2.2 FPGA (Cyclone IV) development board.

## Current Functionality
Any program for nand2tetris in hex can run on the board by putting the hex instructions into the .MIF file in 04/. The video memory doesn't fully work (all of memory is being written to the screen instead of just after the vram pointer due to scaling issues). There is no ability to read keyboards either.

## Future Goals
The next goal is to get the PS/2 port working for keyboards. After that the next major step is scaling the HackCPUs accessable VRAM to the entire display.

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
