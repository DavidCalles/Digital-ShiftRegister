-- Shifter.vhd

--***********************************************************************
--	Description: Implementation of a shift register. With a 4-bit 
--				Data input and 4-bit data output.
--	
--	Inputs: 	clk; Triggering signal.
--				SW [7:0]; Bits 7-6 are operation select.
--						Bits 5 and 0 are right and left data inputs
--						Bits 4-1 are the loading value to the register.
--									
--	Outputs: 	result [3:0]; Output value of the data register.
--***********************************************************************

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Entity declaration

ENTITY Shifter IS

	PORT (
		clk : IN STD_LOGIC;
		SW : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		result : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);

END Shifter;

-- Architecture definition

ARCHITECTURE Behavioral OF Shifter IS
	--------------------------------------------------------------------------
	------------------------- INTERMEDIATE SIGNALS ---------------------------
	--------------------------------------------------------------------------
	SIGNAL R : STD_LOGIC_VECTOR(3 DOWNTO 0);

	SIGNAL S : STD_LOGIC_VECTOR(1 DOWNTO 0);
BEGIN

	--------------------------------------------------------------------------
	-------------------------- ARCHITECTURE LOGIC ----------------------------
	--------------------------------------------------------------------------
	PROCESS (SW)
	BEGIN
		S <= SW(7 DOWNTO 6);
		result <= R;
	END PROCESS;

	PROCESS (clk)
	BEGIN

		IF rising_edge(clk) THEN

			CASE S IS
				WHEN "00" =>
					NULL;
				WHEN "01" =>
					R <= (R(2 DOWNTO 0) & SW(0));
				WHEN "10" =>
					R <= (SW(5) & R(3 DOWNTO 1));
				WHEN "11" =>
					R <= SW(4 DOWNTO 1);

			END CASE;
		END IF;

	END PROCESS;
END;