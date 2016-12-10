

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.my.all;
ENTITY SEVSEG IS
PORT(
SW: IN STD_LOGIC_VECTOR(9 downto 0);
HEX0 :OUT STD_LOGIC_VECTOR(6 downto 0);
HEX1 :OUT STD_LOGIC_VECTOR(6 downto 0);
HEX2 :OUT STD_LOGIC_VECTOR(6 downto 0);
HEX3 :OUT STD_LOGIC_VECTOR(6 downto 0);
KEY: IN STD_LOGIC_VECTOR(3 downto 0);
CLOCK_50: IN STD_LOGIC
);
END SEVSEG;
 
 
ARCHITECTURE MAIN OF SEVSEG IS
SIGNAL PRESCALER :INTEGER RANGE 0 TO 50000000:=0;
SIGNAL NUMBER: INTEGER RANGE 0 TO 9999:=0;
SIGNAL SEG1,SEG2,SEG3,SEG4: INTEGER RANGE 0 TO 9:=0;
BEGIN
SEG_CTRL(NUMBER,SEG1,SEG2,SEG3,SEG4);
HEX0<=INT_TO7SEG(SEG1);
HEX1<=INT_TO7SEG(SEG2);
HEX2<=INT_TO7SEG(SEG3);
HEX3<=INT_TO7SEG(SEG4);
PROCESS(CLOCK_50)
BEGIN
IF(CLOCK_50'EVENT AND CLOCK_50='1')THEN
   IF(PRESCALER<100000*to_integer(unsigned(SW)))THEN
	   PRESCALER<=PRESCALER+1;
		ELSE
		PRESCALER<=0;
	END IF;
	IF(PRESCALER=0)THEN
	  IF(KEY(0)='1')THEN
	    IF(NUMBER<9999)THEN
			 NUMBER<=NUMBER+1;
			 ELSE 
			 NUMBER<=0;
	    END IF;
		ELSE
		 IF(NUMBER>0)THEN
			 NUMBER<=NUMBER-1;
			 ELSE 
			 NUMBER<=9999;
	    END IF;
	  END IF;
	END IF;
END IF;
END PROCESS;
END MAIN;


