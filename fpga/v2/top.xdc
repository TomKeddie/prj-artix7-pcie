################################################################################
# Design constraints
################################################################################

set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

################################################################################
# IO constraints
################################################################################
# clk100:0.p
set_property LOC Y18 [get_ports clkin_p]
set_property IOSTANDARD LVDS_25 [get_ports clkin_p]

# clk100:0.n
set_property LOC Y19 [get_ports clkin_n]
set_property IOSTANDARD LVDS_25 [get_ports clkin_n]

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

# j1_35:0
set_property LOC A1 [get_ports j1_35[0]]
set_property IOSTANDARD LVCMOS15 [get_ports j1_35[0]]

# j1_35:0
set_property LOC B1 [get_ports j1_35[1]]
set_property IOSTANDARD LVCMOS15 [get_ports j1_35[1]]

# j1_35:0
set_property LOC D1 [get_ports j1_35[2]]
set_property IOSTANDARD LVCMOS15 [get_ports j1_35[2]]

# j1_35:0
set_property LOC E1 [get_ports j1_35[3]]
set_property IOSTANDARD LVCMOS15 [get_ports j1_35[3]]

# j1_35:0
set_property LOC F1 [get_ports j1_35[4]]
set_property IOSTANDARD LVCMOS15 [get_ports j1_35[4]]

# j1_35:0
set_property LOC G1 [get_ports j1_35[5]]
set_property IOSTANDARD LVCMOS15 [get_ports j1_35[5]]

# j1_35:0
set_property LOC J2 [get_ports j1_35[6]]
set_property IOSTANDARD LVCMOS15 [get_ports j1_35[6]]

# j1_35:0
set_property LOC K2 [get_ports j1_35[7]]
set_property IOSTANDARD LVCMOS15 [get_ports j1_35[7]]

# j1_35:0
set_property LOC J1 [get_ports j1_35[8]]
set_property IOSTANDARD LVCMOS15 [get_ports j1_35[8]]

# j1_35:0
set_property LOC K1 [get_ports j1_35[9]]
set_property IOSTANDARD LVCMOS15 [get_ports j1_35[9]]

# j1_35:0
set_property LOC L1 [get_ports j1_35[10]]
set_property IOSTANDARD LVCMOS15 [get_ports j1_35[10]]

# j1_35:0
set_property LOC M1 [get_ports j1_35[11]]
set_property IOSTANDARD LVCMOS15 [get_ports j1_35[11]]

# j1_35:0
set_property LOC N2 [get_ports j1_35[12]]
set_property IOSTANDARD LVCMOS15 [get_ports j1_35[12]]

# j1_35:0
set_property LOC P2 [get_ports j1_35[13]]
set_property IOSTANDARD LVCMOS15 [get_ports j1_35[13]]

# j1_34:0
set_property LOC R2 [get_ports j1_34[0]]
set_property IOSTANDARD LVCMOS18 [get_ports j1_34[0]]

# j1_34:0
set_property LOC R3 [get_ports j1_34[1]]
set_property IOSTANDARD LVCMOS18 [get_ports j1_34[1]]

# j1_34:0
set_property LOC U1 [get_ports j1_34[2]]
set_property IOSTANDARD LVCMOS18 [get_ports j1_34[2]]

# j1_34:0
set_property LOC T1 [get_ports j1_34[3]]
set_property IOSTANDARD LVCMOS18 [get_ports j1_34[3]]

# j1_34:0
set_property LOC V2 [get_ports j1_34[4]]
set_property IOSTANDARD LVCMOS18 [get_ports j1_34[4]]

# j1_34:0
set_property LOC U2 [get_ports j1_34[5]]
set_property IOSTANDARD LVCMOS18 [get_ports j1_34[5]]

# j1_34:0
set_property LOC Y1 [get_ports j1_34[6]]
set_property IOSTANDARD LVCMOS18 [get_ports j1_34[6]]

# j1_34:0
set_property LOC W1 [get_ports j1_34[7]]
set_property IOSTANDARD LVCMOS18 [get_ports j1_34[7]]

# j1_34:0
set_property LOC Y2 [get_ports j1_34[8]]
set_property IOSTANDARD LVCMOS18 [get_ports j1_34[8]]

# j1_34:0
set_property LOC W2 [get_ports j1_34[9]]
set_property IOSTANDARD LVCMOS18 [get_ports j1_34[9]]

# j1_34:0
set_property LOC AB1 [get_ports j1_34[10]]
set_property IOSTANDARD LVCMOS18 [get_ports j1_34[10]]

# j1_34:0
set_property LOC AA1 [get_ports j1_34[11]]
set_property IOSTANDARD LVCMOS18 [get_ports j1_34[11]]

# j1_34:0
set_property LOC AB2 [get_ports j1_34[12]]
set_property IOSTANDARD LVCMOS18 [get_ports j1_34[12]]

# j1_34:0
set_property LOC AB3 [get_ports j1_34[13]]
set_property IOSTANDARD LVCMOS18 [get_ports j1_34[13]]


# j2_14:0
set_property LOC AB18 [get_ports j2_14[0]]
set_property IOSTANDARD LVCMOS33 [get_ports j2_14[0]]

# j2_14:0
set_property LOC AA18 [get_ports j2_14[1]]
set_property IOSTANDARD LVCMOS33 [get_ports j2_14[1]]

# j2_14:0
set_property LOC AB20 [get_ports j2_14[2]]
set_property IOSTANDARD LVCMOS33 [get_ports j2_14[2]]

# j2_14:0
set_property LOC AA19 [get_ports j2_14[3]]
set_property IOSTANDARD LVCMOS33 [get_ports j2_14[3]]

# j2_14:0
set_property LOC AB22 [get_ports j2_14[4]]
set_property IOSTANDARD LVCMOS33 [get_ports j2_14[4]]

# j2_14:0
set_property LOC AB21 [get_ports j2_14[5]]
set_property IOSTANDARD LVCMOS33 [get_ports j2_14[5]]

# j2_14:0
set_property LOC AA21 [get_ports j2_14[6]]
set_property IOSTANDARD LVCMOS33 [get_ports j2_14[6]]

# j2_14:0
set_property LOC AA20 [get_ports j2_14[7]]
set_property IOSTANDARD LVCMOS33 [get_ports j2_14[7]]

# j2_14:0
set_property LOC Y22 [get_ports j2_14[8]]
set_property IOSTANDARD LVCMOS33 [get_ports j2_14[8]]

# j2_14:0
set_property LOC Y21 [get_ports j2_14[9]]
set_property IOSTANDARD LVCMOS33 [get_ports j2_14[9]]

# j2_14:0
set_property LOC W22 [get_ports j2_14[10]]
set_property IOSTANDARD LVCMOS33 [get_ports j2_14[10]]

# j2_14:0
set_property LOC W21 [get_ports j2_14[11]]
set_property IOSTANDARD LVCMOS33 [get_ports j2_14[11]]

# j2_14:0
set_property LOC U21 [get_ports j2_14[12]]
set_property IOSTANDARD LVCMOS33 [get_ports j2_14[12]]

# j2_14:0
set_property LOC T21 [get_ports j2_14[13]]
set_property IOSTANDARD LVCMOS33 [get_ports j2_14[13]]

# j2_16:0
set_property LOC G22 [get_ports j2_16[0]]
set_property IOSTANDARD LVCMOS25 [get_ports j2_16[0]]

# j2_16:0
set_property LOC G21 [get_ports j2_16[1]]
set_property IOSTANDARD LVCMOS25 [get_ports j2_16[1]]

# j2_16:0
set_property LOC D22 [get_ports j2_16[2]]
set_property IOSTANDARD LVCMOS25 [get_ports j2_16[2]]

# j2_16:0
set_property LOC E22 [get_ports j2_16[3]]
set_property IOSTANDARD LVCMOS25 [get_ports j2_16[3]]

# j2_16:0
set_property LOC B22 [get_ports j2_16[4]]
set_property IOSTANDARD LVCMOS25 [get_ports j2_16[4]]

# j2_16:0
set_property LOC C22 [get_ports j2_16[5]]
set_property IOSTANDARD LVCMOS25 [get_ports j2_16[5]]

# j2_16:0
set_property LOC A21 [get_ports j2_16[6]]
set_property IOSTANDARD LVCMOS25 [get_ports j2_16[6]]

# j2_16:0
set_property LOC B21 [get_ports j2_16[7]]
set_property IOSTANDARD LVCMOS25 [get_ports j2_16[7]]

# j2_16:0
set_property LOC B17 [get_ports j2_16[8]]
set_property IOSTANDARD LVCMOS25 [get_ports j2_16[8]]

# j2_16:0
set_property LOC B18 [get_ports j2_16[9]]
set_property IOSTANDARD LVCMOS25 [get_ports j2_16[9]]

# j2_16:0
set_property LOC A19 [get_ports j2_16[10]]
set_property IOSTANDARD LVCMOS25 [get_ports j2_16[10]]

# j2_16:0
set_property LOC A18 [get_ports j2_16[11]]
set_property IOSTANDARD LVCMOS25 [get_ports j2_16[11]]

# j2_16:0
set_property LOC A15 [get_ports j2_16[12]]
set_property IOSTANDARD LVCMOS25 [get_ports j2_16[12]]

# j2_16:0
set_property LOC A16 [get_ports j2_16[13]]
set_property IOSTANDARD LVCMOS25 [get_ports j2_16[13]]

# S0:0.clk_p
set_property LOC F6 [get_ports s0_clk_p]

# S0:0.clk_n
set_property LOC E6 [get_ports s0_clk_n]



################################################################################
# Clock constraints
################################################################################
create_clock -name clk65 -period 15.0 [get_nets cfgmclk]
create_clock -name clkin -period 20.0 [get_nets clkin_p]
create_clock -name clks0 -period 6.4  [get_nets s0_clk_p]

set_clock_groups -asynchronous -group {clk65} -group {clkin} -group {clks0}
