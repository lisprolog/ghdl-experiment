library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity reboot_or is
    Port (or_a, or_b : in std_logic;
             or_c : out std_logic);
  end reboot_or;
  
architecture behaviour of reboot_or is

begin

or_c <= or_a or or_b;

end behaviour;