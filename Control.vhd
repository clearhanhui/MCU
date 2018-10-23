---Control.vhd
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_arith.all;

entity Control is
port (
	rom_code,ram_code : in std_logic_vector (15 downto 0);
	clk,rst: in std_logic;
	portin : in std_logic_vector (15 downto 0);
	p_alu_in: in std_logic_vector (31 downto 0);
	
	rom_cs,ram_cs,rd,wr : out std_logic;
	addr : out std_logic_vector(7 downto 0);
	ram_data_in,portout: out std_logic_vector (15 downto 0);
	p_ar,p_br: out std_logic_vector (15 downto 0);
	p_func_sel: out std_logic_vector(3 downto 0));
	
end Control;


architecture behave of Control is 
	type statesType is(s35,s34,s33,s32,s30,s29,s28,s27,s26,s25,s24,s23,s22,s21,s20,s19,s18,s17,s16,s15,s14,s13,s12,s11,s10,s9,s8,s7,s6,s5,s4,s3,s2,s1,s0);
	signal state: statesType := s0;
	signal pc : integer range 0 to 255 :=0; --程序计数器	
	signal pc_vector : std_logic_vector(7 downto 0);
	signal ar,br : std_logic_vector(15 downto 0);
	signal ar32,br32: std_logic_vector(31 downto 0);
	signal result : std_logic_vector(31 downto 0);
	
	--signal ram_code32,rom_code32: std_logic_vector (31 downto 0);
	--signal resultReg : std_logic_vector (31 downto 0);
	--the reslut can be also used variable
	
	begin 
		ar32 <= "0000000000000000" & ar;
		br32 <= "0000000000000000" & br;
		pc_vector <= conv_std_logic_vector(pc,8);
		
	process (clk,rst)
		variable rom_reg: std_logic_vector(15 downto 0);
		variable rom_reg1: std_logic_vector(2 downto 0);
		variable rom_reg2: std_logic_vector(3 downto 0);
		variable rom_addr_reg: std_logic_vector(7 downto 0);
		
		
	begin
		if clk'event and clk='1' then
			if rst='1' and clk='1' then state<=s0; PC<=0;
												 ram_cs<='0'; rom_cs<='0';
												 wr<='0'; rd<='0';
												 ar<="0000000000000000";
												 br<="0000000000000000";
			else
				case state is
					when s0 => state<=s1;
							   --读取指令
								  addr <= pc_vector;
								  rom_cs<='1';
								  rd<='1';
								  rom_reg:=rom_code;
								  
					when s1 => state<=s2;
					when s2 => state<=s3;
								--复位
								  rom_cs<='0';
								  rd<='0';
								  
					when s3 => state<=s4;																  
					when s4 => state<=s5;
								--分割指令并译码
								  rom_reg1:=rom_code(15 downto 13);
								  rom_reg2:=rom_code(11 downto 8);
								  rom_addr_reg:=rom_code(7 downto 0);
								  case rom_reg1 is
										when "000" => state<=s7;
										when "001" => state<=s9;
										when "011" => state<=s18;
										when others => state<=s24;
								  end case;
								  
					when s5 => state <= s6;
					when s6 => state <= s7;
					when s7 => state <= s8;
--								--指令译码并执行	
--								  case rom_reg2 is
--										when "0001" => result<= ar32+br32;			   	     -- '+'
--										when "0011"	=>	result<=	ar*br;					 	  	  -- '*'		 
--										when "0101"	=>	result<=	ar32 and br32;      	 	 	  --'and'	  
--										when "1000"	=>	result<=	ar32(30 downto 0)&'0';	     -- left  
--										when others	=>	result<=	ar32; 
--									end case;
									
								--calculate with alu
								p_ar <= ar; 
								p_br <= br;
								case rom_reg2 is
										when "0001" => p_func_sel <= "0001"; 
										when "0011"	=>	p_func_sel <= "0011"; 
										when "0101"	=>	p_func_sel <= "0101"; 
										when "1000"	=>	p_func_sel <= "1010"; 
										when others	=>	result <= "00000000000000000000000000000000"; 
									end case;
								   
					
					when s8 => state<=s24;
								  ar<=p_alu_in(15 downto 0);
						
		
----------------------------------------------------------------------------------------
					when s9 => 	  
								  if    rom_reg2="0000" then addr<=rom_addr_reg;		--10-14 实现读取
																	  ram_cs<='1';
																	  state<=s10;							    						     
								  elsif rom_reg2="0001" then addr<=rom_addr_reg;		--15-19 实现写入
																	  ram_cs<='1';
																     state<=s14;					  
								  elsif rom_reg2="0011" then state<=s24;
																	  br<=ar;
								  elsif rom_reg2="0110" then ar<=p_alu_in(31 downto 16);
																     state<=s24;
								  else state<=s24;
								  end if;
					when s10 => state<=s11;		rd<='1';	
					when s11 => state<=s12;		ar<=ram_code;
					when s12 => state<=s13;		ram_cs<='0';
														rd<='0';
					when s13 => state<=s24;
					
					when s14 => state<=s15;		ram_data_in<=ar;	
					when s15 => state<=s16;		wr<='1';
					when s16 => state<=s17;		ram_cs<='0';
														wr<='0';
					when s17 => state<=s24;				
					
					
------------------------------------------------------------------------------					
			 		when s18 => state<=s19;
									if    rom_reg2="0000" then ar<=Portin;
									elsif rom_reg2="0001" then Portout<=ar;
									else state <=s19;
									end if;
					when s19 => state<=s24;
					
					when s20 => state<=s25;
					when s21 => state<=s25;
					when s22 => state<=s25;
					when s23 => state<=s25;
					when s24 => state<=s25;
						pc<=pc+1;
					when others => state <=s0;
				end case;
			end if;
		end if;
	end process;
	  
	  
end behave;	