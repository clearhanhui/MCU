--filename : rom design
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity rom_design is

	generic 
	(
		DATA_WIDTH : natural := 16;
		ADDR_WIDTH : natural := 8	
	);
	port 
	(
		cs,rd : in std_logic;
		addr : in std_logic_vector((ADDR_WIDTH - 1) downto 0);
		data : out std_logic_vector((DATA_WIDTH - 1) downto 0));
		
end rom_design;

architecture rtl of rom_design is
--build a 2d array type for the rom
	subtype word_t is std_logic_vector ((DATA_WIDTH - 1) downto 0);
	type memory_t is array (2**ADDR_WIDTH - 1 downto 0) of word_t;
	
	signal rom : memory_t;
	signal addr_reg : natural range 0 to 2**DATA_WIDTH - 1;
	
	attribute ram_init_file : string;
	attribute ram_init_file of rom : --rom
	signal is "init_rom.mif";

begin 
	addr_reg <= CONV_INTEGER (addr);
	process (rd)
		begin 
			if (rd'event and rd ='1') then 
				if (cs='1') then 
					data<=rom(addr_reg);
				end if;
			end if;
	end process;

end rtl;
	