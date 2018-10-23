--Basic MCU
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity MCU is
port(
	clk_in,rst_in: in std_logic;
	port_in : in std_logic_vector (15 downto 0);
	port_out : out std_logic_vector (15 downto 0);
	alu_out : out std_logic_vector (31 downto 0));
end MCU;

architecture behave of MCU is
	
	component Control
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
	end component;
	
	component ram_design
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
	end component;
	
	component rom_design
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
	end component;
	
	component ALU 
		port (
			alu_func_sel:in std_logic_vector(3 downto 0);
			alu_ar:in std_logic_vector(15 downto 0);
			alu_br:in std_logic_vector(15 downto 0);
			data_acc:out std_logic_vector(31 downto 0);
			carry:out std_logic;
			data_to_MCU_test:out std_logic_vector(31 downto 0)
			);
	end component;
		
	
	signal sig_rom_code,sig_ram_code,sig_ram_data_in : std_logic_vector(15 downto 0);
	signal sig_rom_cs,sig_ram_cs,sig_rd,sig_wr : std_logic;
	signal sig_addr : std_logic_vector (7 downto 0);
	signal sig_ar,sig_br : std_logic_vector(15 downto 0);
	signal sig_func_sel :std_logic_vector (3 downto 0);
	signal sig_alu_result: std_logic_vector (31 downto 0);
	
	
begin
	G1: Control port map (
		clk=>clk_in,
		rst=>rst_in,
		rom_code=>sig_rom_code,
		ram_code=>sig_ram_code,
		portin=>port_in,
		rom_cs=>sig_rom_cs,
		ram_cs=>sig_ram_cs,
		rd=>sig_rd,
		wr=>sig_wr,
		addr=>sig_addr,
		ram_data_in=>sig_ram_data_in,
		portout=>port_out,
		p_func_sel => sig_func_sel,
		p_ar => sig_ar,
		p_br => sig_br,
		p_alu_in => sig_alu_result
	);
	G2: rom_design port map (
		cs=>sig_rom_cs,
		rd=>sig_rd,
		addr=>sig_addr,
		data=>sig_rom_code
	);
	G3: ram_design port map (
		cs=>sig_ram_cs,
		wr=>sig_wr,
		rd=>sig_rd,
		addr=>sig_addr,
		data=>sig_ram_code,
		data_in=>sig_ram_data_in
	);
	G4: ALU port map (
		data_acc => alu_out,
		data_to_MCU_test => sig_alu_result,
		alu_ar => sig_ar,
		alu_br => sig_br,
		alu_func_sel => sig_func_sel
	);
end; 