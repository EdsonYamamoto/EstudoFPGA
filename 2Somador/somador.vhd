library ieee;
use ieee.std_logic_1164.all;

entity somador is
port(
	A: in std_logic;
	B: in std_logic;
	C: in std_logic;

	S: out std_logic;
	R: out std_logic
);

end somador;

architecture main of somador is
begin
	S<= ((A xor B) xor C);
	R<= ((A xor B) or ((A xor B) and C));
	
end main;