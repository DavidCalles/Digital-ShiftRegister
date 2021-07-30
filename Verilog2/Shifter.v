// Shifter.v

/************************************************************************
--	Description: Implementation of a shift register. With a 4-bit 
--				Data input and 4-bit data output.
--	
--	Inputs: 	clk; Triggering signal.
--				SW [7:0]; Bits 7-6 are operation select.
--						Bits 5 and 0 are right and left data inputs
--						Bits 4-1 are the loading value to the register.
--									
--	Outputs: 	result [3:0]; Output value of the data register.
--**********************************************************************/


// Module declaration

module Shifter(
		input clk,
		input [7:0] SW,
		output reg[3:0] result
	);

// Architecture definition

//	--------------------------------------------------------------------------
//	------------------------- INTERMEDIATE SIGNALS ---------------------------
//	--------------------------------------------------------------------------
	reg [3:0] R;
	
	reg [1:0] S;


//	--------------------------------------------------------------------------
//	-------------------------- ARCHITECTURE LOGIC ----------------------------
//	--------------------------------------------------------------------------
	always@(SW)
	begin
		S = SW[7:6];
		result = R;
	end
	
	always@(posedge clk)
	begin
		
			case (S)
				2'b00 : R = R;	
				2'b01 : R = {R[2:0], SW[0]};
				2'b10 : R = {SW[5], R[3:1]};
				2'b11 : R = SW[4:1];
					
			endcase

	end

	
endmodule