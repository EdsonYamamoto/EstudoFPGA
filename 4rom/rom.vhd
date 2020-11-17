library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rom is

	generic(
		ROM_ADDR_WIDTH: integer :=3;
		ROM_DATA_WIDTH: integer :=8
		
	);
	
	port(
		rom_addr : in std_logic_vector(ROM_ADDR_WIDTH -1 downto 0);
		rom_value : out std_logic_vector(ROM_DATA_WIDTH -1 downto 0)
		
	);
end rom;


architecture main of rom is


type rom_type is array (0 to 2**ROM_ADDR_WIDTH-1) of
std_logic_vector(ROM_DATA_WIDTH-1 downto 0);

constant memory : rom_type :=(	x"77",x"03",x"25",x"13",
											x"54",x"55",x"16",x"70");
begin
rom_value <= memory(to_integer(unsigned(rom_addr)));
end main;