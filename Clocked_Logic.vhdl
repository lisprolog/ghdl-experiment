-- youtube.com/nandland
library ieee;
use ieee.std_logic_1164.all;

entity CLOCKED_LOGIC is

	Port(
		i_Clk 	   : in STD_LOGIC;
		i_Switch_1 : in STD_LOGIC;
		o_LED_1	   : out STD_LOGIC
	);
	
end CLOCKED_LOGIC;

architecture Behavioral of CLOCKED_LOGIC is

	signal r_LED_1   : std_logic := '0';
	signal r_Switch_1: std_logic := '0';

begin

	p_Register : process (i_Clk) is
	begin
		if rising_edge(i_Clk) then
			r_Switch_1 <= i_Switch_1;  			-- Register!

			if i_Switch_1 = '0' and r_Switch_1 = '1' then 	-- Falling Edge
				r_LED_1 <= not r_LED_1;
			end if;
		end if;
	end process p_Register;

	o_LED_1 <= r_LED_1;

end Behavioral;
