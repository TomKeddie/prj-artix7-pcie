################################################################################
# Design constraints
################################################################################

set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

################################################################################
# IO constraints
################################################################################
# clk100:0.p
set_property LOC Y18 [get_ports clk100_p]
set_property IOSTANDARD LVDS_25 [get_ports clk100_p]

# clk100:0.n
set_property LOC Y19 [get_ports clk100_n]
set_property IOSTANDARD LVDS_25 [get_ports clk100_n]

# serial:0.tx
set_property LOC V17 [get_ports serial_tx]
set_property IOSTANDARD LVCMOS33 [get_ports serial_tx]
set_property PULLUP TRUE [get_ports serial_tx]

# serial:0.rx
set_property LOC W19 [get_ports serial_rx]
set_property IOSTANDARD LVCMOS33 [get_ports serial_rx]

# user_btn_n:0
set_property LOC U17 [get_ports user_btn_n]
set_property IOSTANDARD LVCMOS33 [get_ports user_btn_n]
set_property PULLUP TRUE [get_ports user_btn_n]

# serial2:0.tx
set_property LOC W17 [get_ports serial2_tx]
set_property IOSTANDARD LVCMOS33 [get_ports serial2_tx]
set_property PULLUP TRUE [get_ports serial2_tx]

# serial2:0.rx
set_property LOC W20 [get_ports serial2_rx]
set_property IOSTANDARD LVCMOS33 [get_ports serial2_rx]

# rgb_led:0.r
set_property LOC P15 [get_ports rgb_led_r]
set_property IOSTANDARD LVCMOS33 [get_ports rgb_led_r]

# rgb_led:0.g
set_property LOC P16 [get_ports rgb_led_g]
set_property IOSTANDARD LVCMOS33 [get_ports rgb_led_g]

# rgb_led:0.b
set_property LOC P14 [get_ports rgb_led_b]
set_property IOSTANDARD LVCMOS33 [get_ports rgb_led_b]

# clk_i2c:0.scl
set_property LOC N17 [get_ports clk_i2c_scl]
set_property IOSTANDARD LVCMOS33 [get_ports clk_i2c_scl]

# clk_i2c:0.sda
set_property LOC P17 [get_ports clk_i2c_sda]
set_property IOSTANDARD LVCMOS33 [get_ports clk_i2c_sda]

################################################################################
# Clock constraints
################################################################################
create_clock -name clk65 -period 10.0 [get_nets cfgmclk]
create_clock -name clk100 -period 10.0 [get_nets clk100_p]

set_clock_groups -asynchronous -group {clk65} -group {clk100}