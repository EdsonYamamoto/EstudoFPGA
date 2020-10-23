library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity counter is

port(
	enable : in std_logic;
	clock : in std_logic;
	reset : in std_logic;
	output : out std_logic_vector (3 downto 0)
	);
end counter;

architecture main of counter is
	signal cnt_reg : std_logic_vector(0 to 3);
	signal soma : std_logic;
	
	begin
		process (clock, reset)
		  begin
		  
			if enable = '1' then
			soma<='1';
			else
			soma<='0';
			end if;
			
			if reset = '0' then
			cnt_reg <= "0000";
			elsif (clock ' event and  clock = '1') then
			cnt_reg <= cnt_reg +soma;
			end if;
	end process;
		
	output <= cnt_reg;
end main;