library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity reboot_not is
  Port (x : in std_logic;
        y : out std_logic);
  end reboot_not;
  
architecture behaviour of reboot_not is

begin

y <= not x;

end behaviour;