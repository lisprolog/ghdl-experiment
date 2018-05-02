library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity reboot_and is
    Port (a, b : in std_logic;
             c : out std_logic);
  end reboot_and;
  
architecture behaviour of reboot_and is

begin

c <= a and b;

end behaviour;