# Verilog2Tetris: Hack Computer Implementation on Cyclone IV FPGA
## Overview
This project is a Verilog based implementation of the Hack Computer, as described in the [Nand2Tetris Course](https://www.nand2tetris.org/), targeting the RZ EasyFPGA A2.2 development board. The board features an Altera Cyclone IV EP4CE6E22C8N FPGA with various I/O including VGA and PS/2 allowing for all the standard features of the Nand2Tetris Hack Computer.

## Project Status
The project is still in progress, but the core components are fully functional. There is still work to be done mapping the VGA and PS/2 I/O to memory before any standard Nand2Tetris program can be executed on the computer. 

## Pin Assignments
The VGA pin assignments in the Quartus project do not match the VGA port on the RZ-EasyFPGA. Instead, they are connected through the pin headers on the development board. Pin values are listed in [pin_assignments.txt](https://github.com/conorm110/verilog2tetris/blob/main/pin_assignments.txt)

PS/2 pin assignments follow the standard assignments for the RZ EasyFPGA A2.2 development board.

