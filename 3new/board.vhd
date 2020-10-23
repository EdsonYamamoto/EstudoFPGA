library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity board is

port(
	clock : in std_logic;
	enable : in std_logic;
	reset : in std_logic;
	output : out std_logic_vector (6 downto 0)
	);
end board;

architecture main of board is

	component counter is
	port(
		clock : in std_logic;
		enable : in std_logic;
		reset : in std_logic;
		output : out std_logic_vector (3 downto 0)
	);
	end component counter;
	
	signal counter_output : std_logic_vector(3 downto 0);
	signal counter_enable : std_logic;
	signal clock_div_counter : integer range 0 to 50000000;
	
begin
	bcd_counter : counter port map (clock => clock, reset => reset, enable => counter_enable, output => counter_output);
	process(clock, reset, enable)
	
	begin
		if reset = '0' then
		clock_div_counter <=0;
		elsif(clock ' event and clock = '1') then
			if clock_div_counter = 50000000 then
				clock_div_counter <= 0;
				counter_enable <= '1';
			else
				clock_div_counter <= clock_div_counter + 1;
				counter_enable <= '0';
			end if;
			
		end if;
	end process;
	
	with counter_output select output<=
		"1000000" when "0000",
		"1111001" when "0001",
		"0100100" when "0010",
		"0110000" when "0011",
		"0011001" when "0100",
		"0010010" when "0101",
		"0000010" when "0110",
		"1111000" when "0111",
		"0000000" when "1000",
		"0011000" when "1001",
		"0001000" when "1010",
		"0000011" when "1011",
		"1000011" when "1100",
		"0100001" when "1101",
		"0000110" when "1110",
		"0001110" when "1111",
		"1111111" when others;
end main;
		
		
		
		
		
		
		
		
		
		
		
		
		
		