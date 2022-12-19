---------------------------------
--ELECTR�NICA DIGITAL
--PR�CTICA 1
---------------------------------

--------------------------------
--Librer�as
-------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;

--------------------------------
--Entidad
-------------------------------
ENTITY P1 IS
        PORT (
				x: IN      	STD_LOGIC;
				y: IN      	STD_LOGIC;
				a: IN		STD_LOGIC;
				b: IN		STD_LOGIC;				
				z1:OUT  	STD_LOGIC
        );
END P1;

--------------------------------
--Arquitectura 
-------------------------------
ARCHITECTURE BEH OF P1 IS
--Se�ales 
SIGNAL s1, s2: STD_LOGIC;
SIGNAL s3: STD_LOGIC_VECTOR(1 DOWNTO 0);

BEGIN

	s1<=x xor y;
	s2<=(x and y);
	s3<=a&b;
	
Proc1: PROCESS (s1, s2, s3)
	BEGIN
		CASE s3 IS
			WHEN "00" => 	z1 <= '1';
			WHEN "01" => 	z1 <= s2;
			WHEN "10" => 	z1 <= s1;
			WHEN OTHERS => 	z1 <= '0';
		END CASE;
	END PROCESS;

END BEH;
