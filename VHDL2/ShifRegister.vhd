-- ShiftRegister.vhd

--***********************************************************************
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
--***********************************************************************

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Entity declaration

ENTITY ShifRegister IS

	PORT (
		clk 			: IN STD_LOGIC;
		SW				: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		result 		: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		segmentIn 	: OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		segmentOut 	: OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);

END ShifRegister;

-- Architecture definition

ARCHITECTURE Behavioral OF ShifRegister IS
	--------------------------------------------------------------------------
	------------------------- INTERMEDIATE SIGNALS ---------------------------
	--------------------------------------------------------------------------
	
	SIGNAL resultSignal  : STD_LOGIC_VECTOR(3 DOWNTO 0);
	
	SIGNAL Seven0Signal  : STD_LOGIC_VECTOR(6 DOWNTO 0);
	SIGNAL Seven1Signal  : STD_LOGIC_VECTOR(6 DOWNTO 0);
	
	--------------------------------------------------------------------------
	------------------------- COMPONENTS DEFINITIONS -------------------------
	--------------------------------------------------------------------------
	
	-- SevenSegment Decoder
	COMPONENT SevenSegments
		PORT(
				binNumber 	: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
				segmentLed 	: OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
		  );
	END COMPONENT;
	
	-- SevenSegment Decoder
	COMPONENT Shifter
		PORT(
				clk 		: IN STD_LOGIC;
				SW			: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
				result 	: OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
		);
	END COMPONENT;

	
BEGIN

	--------------------------------------------------------------------------
	-------------------------- ARCHITECTURE LOGIC ----------------------------
	--------------------------------------------------------------------------
	
	-- SevenSegments: IN
	SevenSegments0 : SevenSegments
	PORT MAP(SW(4 downto 1), Seven0Signal);
	
	-- SevenSegments: OUT
	SevenSegments1 : SevenSegments
	PORT MAP(resultSignal, Seven1Signal);
	
	-- Shifter
	Shifter1 : Shifter
	PORT MAP(clk, SW, resultSignal);
	

	-- Outputs
	
	result <= resultSignal;
	
	segmentIn <= Seven0Signal;
	segmentOut <= Seven1Signal;
	
END;