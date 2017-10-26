`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:37:27 10/13/2017
// Design Name:   alu8x8_p
// Module Name:   C:/SisDig/ALU8x8_ISE/TB_alu8x8.v
// Project Name:  ALU8x8_ISE
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu8x8_p
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_alu8x8;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;
	reg cin;
	reg [2:0] op;

	// Outputs
	wire [15:0] res;

	// Instantiate the Unit Under Test (UUT)
	alu8x8_p uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.op(op), 
		.res(res)
	);

	initial begin
		// Initialize Inputs
		a = b;
		b = 0;
		cin = 0;
		op = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

