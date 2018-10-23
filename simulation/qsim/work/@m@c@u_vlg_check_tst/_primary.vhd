library verilog;
use verilog.vl_types.all;
entity MCU_vlg_check_tst is
    port(
        alu_out         : in     vl_logic_vector(31 downto 0);
        port_out        : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end MCU_vlg_check_tst;
