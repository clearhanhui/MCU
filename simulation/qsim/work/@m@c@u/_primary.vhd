library verilog;
use verilog.vl_types.all;
entity MCU is
    port(
        clk_in          : in     vl_logic;
        rst_in          : in     vl_logic;
        port_in         : in     vl_logic_vector(15 downto 0);
        port_out        : out    vl_logic_vector(15 downto 0);
        alu_out         : out    vl_logic_vector(31 downto 0)
    );
end MCU;
