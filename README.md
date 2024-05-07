# Verilog2Tetris - VGA
Hack Computer from Nand2Tetris implemented in Verilog with a VGA display.

*Quartus project configured for RZ-EasyFPGA-A2.2 (see setup for more details)*


## Setup
1. Attach RZ-EasyFPGA-A2.2 to VGA cable and monitor
    - All data pins should be connected through 60OHM resistors
    - Check pinout for connections (default assignments do NOT use VGA port) 
2. Configure JTAG programmer (if not already configured)
    - Open device manager
    - Select the USB device (unknown device, has warning sign)
    - Search locally for drivers (located in the drivers folder inside the quartus directory)
    - Restart your computer 
3. Open the cloned project file, compile, and upload to the FPGA

## Running HackComputer Machine Code
In the Assembly Examples folders there are currently 3 code examples. You can copy paste the formatted code from the .mif files to rom.mif in 04/. 

To create your own assembly programs, this is the same exact assembly as the Nand2Tetris course, just follow the .mif formatting after compiling with the Nand2Tetris tools.