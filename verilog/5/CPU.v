module CPU(
    input wire clk,
    input wire [15:0] inM,
    input wire [15:0] instruction,
    input wire reset,

    output wire [15:0] outM,
    output wire writeM,
    output wire [15:0] addressM,
    output reg [15:0] pc,
	 
	 output [15:0] a_reg_debug, 
	 output [15:0] d_reg_debug
);
	// Extra A/D register outputs for debugging
	assign a_reg_debug = regA;
	assign d_reg_debug = regD;
	
	// Buffer inM
	reg [15:0] inM_buf;
	always @(posedge clk) begin
		inM_buf <= inM;
	end


    assign addressM = regA;
    wire loadI;
    wire loadA;
    wire loadD;
    assign outM = outALU;    
    wire [15:0] am;
    assign am = (instruction[12]) ? inM_buf : regA;
    wire lt;
    wire eq;
    wire jmp;
    wire inc;
    wire [15:0] outALU;
        
    reg [15:0] regA;
    reg [15:0] regD;
    ALU ALU_0(
        .x(regD),
        .y(am),
        .zx(instruction[11]),
        .nx(instruction[10]),
        .zy(instruction[9]),
        .ny(instruction[8]),
        .f(instruction[7]),
        .no(instruction[6]),
        .out(outALU),
        .zr(eq),
        .ng(lt)
    );
    assign loadI = ~instruction[15];
    assign loadA = instruction[15] & instruction[5];
    assign loadD = instruction[15] & instruction[4];
    assign writeM = instruction[15] & instruction[3];
    assign jmp = instruction[15] & ((lt & instruction[2]) | (eq & instruction[1]) | ((!(lt|eq)) & instruction[0]));
    
    always @(posedge clk)
        if (reset) pc <= 0;
        else if (jmp) pc <= regA;
        else pc <= pc+1;

    always @(posedge clk)
        if (reset) regA <= 0;
        else if (loadI) regA <= instruction;
        else if (loadA) regA <= outALU;
        else regA <= regA;
    
    always @(posedge clk)
        if (reset) regD <= 0;
        else if (loadD) regD <= outALU;
        else regD <= regD;
		  
	
    
endmodule