// ShiftRegister.vhd

/***********************************************************************
--	Description: Top level entity of a shift register and 2 7-segment
--				displays.
--	
--	Inputs: 	clk; Triggering signal.
--				SW [7:0]; Bits 7-6 are operation select.
--						Bits 5 and 0 are right and left data inputs
--						Bits 4-1 are the loading value to the register.
--					
--	Outputs: 	result [3:0]; Output value of the data register.
--				segmentIn [6:0]; 7-segment output of the input data.
--				segmentOut [6:0]; 7-segment output of the shift register
--								output.
--**********************************************************************/


// Module declaration

module ShiftRegister(
		input clk,
		input [7:0] SW,
		output [3:0] result,
		output [6:0] segmentIn,
		output [6:0] segmentOut
	);

// Architecture definition

//	--------------------------------------------------------------------------
//	------------------------- INTERMEDIATE SIGNALS ---------------------------
//	--------------------------------------------------------------------------
	
	wire [3:0] resultSignal;
	
	wire [6:0] Seven0Signal;
	wire [6:0] Seven1Signal;
	

//	--------------------------------------------------------------------------
//	-------------------------- ARCHITECTURE LOGIC ----------------------------
//	--------------------------------------------------------------------------
	
	// SevenSegments: IN
	SevenSegments SevenSegments0
	(SW[4:1], Seven0Signal);
	
	// SevenSegments: OUT
	SevenSegments SevenSegments1
	(resultSignal, Seven1Signal);
	
	// Shifter
	Shifter Shifter1
	(clk, SW, resultSignal);
	

	// Outputs
	
	assign result = resultSignal;
	assign segmentIn = Seven0Signal;
	assign segmentOut = Seven1Signal;
	
endmodule