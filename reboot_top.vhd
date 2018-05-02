library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity reboot_top is
  Port ( 
    clk   : in STD_LOGIC;
    top_x1 : in STD_LOGIC := '0';
    top_x2 : in STD_LOGIC := '0';
    top_x3 : in STD_LOGIC := '0';
    top_x4 : in STD_LOGIC := '0';
    top_result : out STD_LOGIC
  );
end reboot_top;

architecture Behavioral of reboot_top is

signal s1, s2, s3, s4, s5  : STD_LOGIC;

    COMPONENT reboot_and
    Port( a : in  STD_LOGIC;
          b : in  STD_LOGIC;
          c : out STD_LOGIC
         );
    END COMPONENT;
    
    COMPONENT reboot_or
    Port( or_a : in  STD_LOGIC;
          or_b : in  STD_LOGIC;
          or_c : out STD_LOGIC
         );
    END COMPONENT;
    
    COMPONENT reboot_xor
    Port( xor_a : in STD_LOGIC;
          xor_b : in STD_LOGIC;
          xor_c : out STD_LOGIC
        );
    END COMPONENT;

    COMPONENT reboot_not
    Port( x : in STD_LOGIC;
          y : out STD_LOGIC
        );
    END COMPONENT;
    
begin

U1: reboot_and 
PORT MAP(
    a => s1,
    b => top_x2,
    c => s2
);

U2: reboot_and 
PORT MAP(
    a => s3,
    b => s4,
    c => s5
);

U3: reboot_or 
PORT MAP(
    or_a => s2,
    or_b => s5,
    or_c => top_result
);

U4: reboot_xor 
PORT MAP(
    xor_a => '1',
    xor_b => top_x4,
    xor_c => s4
);

U5: reboot_not
PORT MAP(
   x => top_x1,
   y => s1   
);

U6: reboot_not
PORT MAP(
   x => top_x3,  --z1
   y => s3       --z2
);

end Behavioral;