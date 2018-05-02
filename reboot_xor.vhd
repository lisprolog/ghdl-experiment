library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity reboot_xor is
  Port ( xor_a, xor_b : in std_logic;
            xor_c : out std_logic);
end reboot_xor;

architecture Behavioral of reboot_xor is

begin

xor_c <= xor_a xor xor_b;


end Behavioral;
