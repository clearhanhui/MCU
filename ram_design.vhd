--filename : ram design
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity ram_design is

	generic 
	(
		DATA_WIDTH : natural := 16;
		ADDR_WIDTH : natural := 8	
	);
	port 
	(
		cs,wr,rd : in std_logic;
		addr : in std_logic_vector((ADDR_WIDTH - 1) downto 0);
		data_in : in std_logic_vector((DATA_WIDTH - 1) downto 0);
		data : out std_logic_vector((DATA_WIDTH - 1) downto 0));
		
end ram_design;

architecture rtl of ram_design is
--build a 2d array type for the ram
	subtype word_t is std_logic_vector ((DATA_WIDTH - 1) downto 0);
	type memory_t is array (2**ADDR_WIDTH - 1 downto 0) of word_t;
	
	signal ram : memory_t;
	signal addr_reg : natural range 0 to 2**DATA_WIDTH - 1;
	
	attribute ram_init_file : string;
	attribute ram_init_file of ram : --ram
	signal is "init_ram.mif";

begin 
	addr_reg <= CONV_INTEGER (addr);
	process (rd,wr)
		begin 
			if (wr'event and wr = '1') then 
				if (cs ='1' and rd ='0') then 
					ram(addr_reg) <= data_in;
				end if;
			end if;
			
			if (rd'event and rd ='1') then 
				if (cs='1' and wr='0') then 
					data<=ram(addr_reg);
				end if;
			end if;
	end process;

end rtl;
	