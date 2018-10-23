--file name ALU.vhd
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ALU is 
	port (
	alu_func_sel:in std_logic_vector(3 downto 0);
	alu_ar:in std_logic_vector(15 downto 0);
	alu_br:in std_logic_vector(15 downto 0);
	data_acc:out std_logic_vector(31 downto 0);
	data_to_MCU_test:out std_logic_vector(31 downto 0);
	carry:out std_logic);
end entity;

architecture behave of ALU is 
	signal alu_ar32,alu_br32:std_logic_vector(31 downto 0);
	signal alu_result:std_logic_vector(31 downto 0);
	
	begin
		alu_ar32 <= "0000000000000000" & alu_ar;
		alu_br32 <= "0000000000000000" & alu_br;
		data_acc <= alu_result;
		data_to_MCU_test <= alu_result;
		carry <= alu_result(16);
		with alu_func_sel select
			alu_result <= alu_ar32+alu_br32    				  when "0001",		-- 加
						     alu_ar32-alu_br32 			  when "0010",		-- 减
						     alu_ar*alu_br			  when "0011",		-- 乘
						     alu_ar32 and alu_br32		  when "0101",		-- AND
						     alu_ar32 or alu_br32 	          when "0110",		-- OR
						     not alu_ar32 			  when "0111",		-- NOT
						     alu_ar32 xor alu_br32 		  when "1000",		-- XOR
						     alu_ar32 (30 downto 0) & "0" 	  when "1001",		-- Right_Shift
						     "0" & alu_ar32 (31 downto 1) 	  when "1010",		-- Left_Shift
--						     not (alu_ar32 xor alu_br32)      when "1010",		-- 同或
						     (others=>'0') 			  when others;
end architecture;
