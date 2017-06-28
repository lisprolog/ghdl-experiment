-- Software: 	VIVADO 2016.4
-- Board: 	Nexys4 DDR
-- FPGA:	Artix-7
library ieee;
use ieee.std_logic_1164.all;

entity AND_GATE is
	Port(
		a : in STD_LOGIC;
		b : in STD_LOGIC;
		c : out STD_LOGIC
	);

end AND_GATE;

architecture Behavioral of AND_GATE is

begin
	c <= a and b;
	
end Behavioral;
