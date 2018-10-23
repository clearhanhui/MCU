library verilog;
use verilog.vl_types.all;
entity MCU_vlg_sample_tst is
    port(
        clk_in          : in     vl_logic;
        port_in         : in     vl_logic_vector(15 downto 0);
        rst_in          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end MCU_vlg_sample_tst;
