library ieee;

use ieee.std_logic_1164.all;

entity circuito is

port(
	A0 : in std_logic_vector (3 downto 0);
	A1 : in std_logic_vector (3 downto 0);
	S0 : out std_logic_vector (6 downto 0);
	S1 : out std_logic_vector (6 downto 0)
	
);

end circuito;

architecture main of circuito is
	component decodificador is port(
		A : in std_logic_vector (3 downto 0);
		S : out std_logic_vector (6 downto 0)
	);
	
	end component decodificador;

begin
	decode0: decodificador port map (A=>A0,S=>S0);
	decode1: decodificador port map (A=>A1,S=>S1);
end main;