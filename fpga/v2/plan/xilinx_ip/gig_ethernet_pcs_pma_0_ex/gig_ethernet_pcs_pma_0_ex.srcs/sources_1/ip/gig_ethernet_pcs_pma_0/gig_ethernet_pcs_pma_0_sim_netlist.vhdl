-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Fri Apr 17 06:05:29 2020
-- Host        : z400 running 64-bit Ubuntu 19.10
-- Command     : write_vhdl -force -mode funcsim
--               /home/tom/git/TomKeddie/prj-artix7-pcie/fpga/v2/plan/xilinx_ip/gig_ethernet_pcs_pma_0/gig_ethernet_pcs_pma_0_sim_netlist.vhdl
-- Design      : gig_ethernet_pcs_pma_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a15tfgg484-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync is
  port (
    reset_out : out STD_LOGIC;
    userclk : in STD_LOGIC;
    enablealign : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync : entity is "gig_ethernet_pcs_pma_0_reset_sync";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync is
  signal reset_stage1 : STD_LOGIC;
  signal reset_stage2 : STD_LOGIC;
  signal reset_stage3 : STD_LOGIC;
  signal reset_stage4 : STD_LOGIC;
  signal reset_stage5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of reset_sync1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of reset_sync1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of reset_sync1 : label is "FDP";
  attribute box_type : string;
  attribute box_type of reset_sync1 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync2 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync2 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync2 : label is "FDP";
  attribute box_type of reset_sync2 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync3 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync3 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync3 : label is "FDP";
  attribute box_type of reset_sync3 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync4 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync4 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync4 : label is "FDP";
  attribute box_type of reset_sync4 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync5 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync5 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync5 : label is "FDP";
  attribute box_type of reset_sync5 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync6 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync6 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync6 : label is "FDP";
  attribute box_type of reset_sync6 : label is "PRIMITIVE";
begin
reset_sync1: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => userclk,
      CE => '1',
      D => '0',
      PRE => enablealign,
      Q => reset_stage1
    );
reset_sync2: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => userclk,
      CE => '1',
      D => reset_stage1,
      PRE => enablealign,
      Q => reset_stage2
    );
reset_sync3: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => userclk,
      CE => '1',
      D => reset_stage2,
      PRE => enablealign,
      Q => reset_stage3
    );
reset_sync4: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => userclk,
      CE => '1',
      D => reset_stage3,
      PRE => enablealign,
      Q => reset_stage4
    );
reset_sync5: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => userclk,
      CE => '1',
      D => reset_stage4,
      PRE => enablealign,
      Q => reset_stage5
    );
reset_sync6: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => userclk,
      CE => '1',
      D => reset_stage5,
      PRE => '0',
      Q => reset_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_1 is
  port (
    reset_out : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    reset_sync5_0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_1 : entity is "gig_ethernet_pcs_pma_0_reset_sync";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_1;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_1 is
  signal reset_stage1 : STD_LOGIC;
  signal reset_stage2 : STD_LOGIC;
  signal reset_stage3 : STD_LOGIC;
  signal reset_stage4 : STD_LOGIC;
  signal reset_stage5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of reset_sync1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of reset_sync1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of reset_sync1 : label is "FDP";
  attribute box_type : string;
  attribute box_type of reset_sync1 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync2 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync2 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync2 : label is "FDP";
  attribute box_type of reset_sync2 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync3 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync3 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync3 : label is "FDP";
  attribute box_type of reset_sync3 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync4 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync4 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync4 : label is "FDP";
  attribute box_type of reset_sync4 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync5 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync5 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync5 : label is "FDP";
  attribute box_type of reset_sync5 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync6 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync6 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync6 : label is "FDP";
  attribute box_type of reset_sync6 : label is "PRIMITIVE";
begin
reset_sync1: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => '0',
      PRE => reset_sync5_0(0),
      Q => reset_stage1
    );
reset_sync2: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset_stage1,
      PRE => reset_sync5_0(0),
      Q => reset_stage2
    );
reset_sync3: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset_stage2,
      PRE => reset_sync5_0(0),
      Q => reset_stage3
    );
reset_sync4: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset_stage3,
      PRE => reset_sync5_0(0),
      Q => reset_stage4
    );
reset_sync5: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset_stage4,
      PRE => reset_sync5_0(0),
      Q => reset_stage5
    );
reset_sync6: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset_stage5,
      PRE => '0',
      Q => reset_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_2 is
  port (
    reset_out : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_2 : entity is "gig_ethernet_pcs_pma_0_reset_sync";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_2;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_2 is
  signal reset_stage1 : STD_LOGIC;
  signal reset_stage2 : STD_LOGIC;
  signal reset_stage3 : STD_LOGIC;
  signal reset_stage4 : STD_LOGIC;
  signal reset_stage5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of reset_sync1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of reset_sync1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of reset_sync1 : label is "FDP";
  attribute box_type : string;
  attribute box_type of reset_sync1 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync2 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync2 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync2 : label is "FDP";
  attribute box_type of reset_sync2 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync3 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync3 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync3 : label is "FDP";
  attribute box_type of reset_sync3 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync4 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync4 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync4 : label is "FDP";
  attribute box_type of reset_sync4 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync5 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync5 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync5 : label is "FDP";
  attribute box_type of reset_sync5 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync6 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync6 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync6 : label is "FDP";
  attribute box_type of reset_sync6 : label is "PRIMITIVE";
begin
reset_sync1: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => '0',
      PRE => SR(0),
      Q => reset_stage1
    );
reset_sync2: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset_stage1,
      PRE => SR(0),
      Q => reset_stage2
    );
reset_sync3: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset_stage2,
      PRE => SR(0),
      Q => reset_stage3
    );
reset_sync4: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset_stage3,
      PRE => SR(0),
      Q => reset_stage4
    );
reset_sync5: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset_stage4,
      PRE => SR(0),
      Q => reset_stage5
    );
reset_sync6: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset_stage5,
      PRE => '0',
      Q => reset_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_4 is
  port (
    reset_out : out STD_LOGIC;
    gtrefclk_bufg : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_4 : entity is "gig_ethernet_pcs_pma_0_reset_sync";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_4;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_4 is
  signal reset_stage1 : STD_LOGIC;
  signal reset_stage2 : STD_LOGIC;
  signal reset_stage3 : STD_LOGIC;
  signal reset_stage4 : STD_LOGIC;
  signal reset_stage5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of reset_sync1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of reset_sync1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of reset_sync1 : label is "FDP";
  attribute box_type : string;
  attribute box_type of reset_sync1 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync2 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync2 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync2 : label is "FDP";
  attribute box_type of reset_sync2 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync3 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync3 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync3 : label is "FDP";
  attribute box_type of reset_sync3 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync4 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync4 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync4 : label is "FDP";
  attribute box_type of reset_sync4 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync5 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync5 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync5 : label is "FDP";
  attribute box_type of reset_sync5 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync6 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync6 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync6 : label is "FDP";
  attribute box_type of reset_sync6 : label is "PRIMITIVE";
begin
reset_sync1: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      D => '0',
      PRE => SR(0),
      Q => reset_stage1
    );
reset_sync2: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      D => reset_stage1,
      PRE => SR(0),
      Q => reset_stage2
    );
reset_sync3: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      D => reset_stage2,
      PRE => SR(0),
      Q => reset_stage3
    );
reset_sync4: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      D => reset_stage3,
      PRE => SR(0),
      Q => reset_stage4
    );
reset_sync5: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      D => reset_stage4,
      PRE => SR(0),
      Q => reset_stage5
    );
reset_sync6: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      D => reset_stage5,
      PRE => '0',
      Q => reset_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_5 is
  port (
    reset_out : out STD_LOGIC;
    gtrefclk_bufg : in STD_LOGIC;
    reset_sync5_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_5 : entity is "gig_ethernet_pcs_pma_0_reset_sync";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_5;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_5 is
  signal reset_stage1 : STD_LOGIC;
  signal reset_stage2 : STD_LOGIC;
  signal reset_stage3 : STD_LOGIC;
  signal reset_stage4 : STD_LOGIC;
  signal reset_stage5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of reset_sync1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of reset_sync1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of reset_sync1 : label is "FDP";
  attribute box_type : string;
  attribute box_type of reset_sync1 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync2 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync2 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync2 : label is "FDP";
  attribute box_type of reset_sync2 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync3 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync3 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync3 : label is "FDP";
  attribute box_type of reset_sync3 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync4 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync4 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync4 : label is "FDP";
  attribute box_type of reset_sync4 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync5 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync5 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync5 : label is "FDP";
  attribute box_type of reset_sync5 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync6 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync6 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync6 : label is "FDP";
  attribute box_type of reset_sync6 : label is "PRIMITIVE";
begin
reset_sync1: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      D => '0',
      PRE => reset_sync5_0,
      Q => reset_stage1
    );
reset_sync2: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      D => reset_stage1,
      PRE => reset_sync5_0,
      Q => reset_stage2
    );
reset_sync3: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      D => reset_stage2,
      PRE => reset_sync5_0,
      Q => reset_stage3
    );
reset_sync4: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      D => reset_stage3,
      PRE => reset_sync5_0,
      Q => reset_stage4
    );
reset_sync5: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      D => reset_stage4,
      PRE => reset_sync5_0,
      Q => reset_stage5
    );
reset_sync6: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      D => reset_stage5,
      PRE => '0',
      Q => reset_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_wtd_timer is
  port (
    wtd_rxpcsreset_in : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    data_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_wtd_timer : entity is "gig_ethernet_pcs_pma_0_reset_wtd_timer";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_wtd_timer;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_wtd_timer is
  signal \counter_stg1[5]_i_1_n_0\ : STD_LOGIC;
  signal counter_stg1_reg : STD_LOGIC_VECTOR ( 5 to 5 );
  signal \counter_stg1_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal counter_stg1_roll : STD_LOGIC;
  signal \counter_stg2[0]_i_3_n_0\ : STD_LOGIC;
  signal counter_stg2_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \counter_stg2_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter_stg2_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \counter_stg2_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \counter_stg2_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \counter_stg2_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \counter_stg2_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \counter_stg2_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \counter_stg2_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \counter_stg2_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_stg2_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_stg2_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_stg2_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_stg2_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_stg2_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_stg2_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_stg2_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_stg2_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_stg2_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_stg2_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_stg2_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_stg2_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_stg2_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_stg2_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal counter_stg30 : STD_LOGIC;
  signal \counter_stg3[0]_i_3_n_0\ : STD_LOGIC;
  signal \counter_stg3[0]_i_4_n_0\ : STD_LOGIC;
  signal \counter_stg3[0]_i_5_n_0\ : STD_LOGIC;
  signal counter_stg3_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \counter_stg3_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter_stg3_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \counter_stg3_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \counter_stg3_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \counter_stg3_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \counter_stg3_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \counter_stg3_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \counter_stg3_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \counter_stg3_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_stg3_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_stg3_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_stg3_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_stg3_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_stg3_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_stg3_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_stg3_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_stg3_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_stg3_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_stg3_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_stg3_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_stg3_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_stg3_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_stg3_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal reset0 : STD_LOGIC;
  signal reset_i_2_n_0 : STD_LOGIC;
  signal reset_i_3_n_0 : STD_LOGIC;
  signal reset_i_4_n_0 : STD_LOGIC;
  signal reset_i_5_n_0 : STD_LOGIC;
  signal reset_i_6_n_0 : STD_LOGIC;
  signal reset_i_7_n_0 : STD_LOGIC;
  signal reset_i_8_n_0 : STD_LOGIC;
  signal \NLW_counter_stg2_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_counter_stg3_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter_stg1[1]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \counter_stg1[2]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \counter_stg1[3]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \counter_stg1[4]_i_1\ : label is "soft_lutpair90";
begin
\counter_stg1[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_stg1_reg__0\(0),
      O => \p_0_in__0\(0)
    );
\counter_stg1[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_stg1_reg__0\(1),
      I1 => \counter_stg1_reg__0\(0),
      O => \p_0_in__0\(1)
    );
\counter_stg1[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \counter_stg1_reg__0\(2),
      I1 => \counter_stg1_reg__0\(1),
      I2 => \counter_stg1_reg__0\(0),
      O => \p_0_in__0\(2)
    );
\counter_stg1[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \counter_stg1_reg__0\(3),
      I1 => \counter_stg1_reg__0\(0),
      I2 => \counter_stg1_reg__0\(1),
      I3 => \counter_stg1_reg__0\(2),
      O => \p_0_in__0\(3)
    );
\counter_stg1[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \counter_stg1_reg__0\(4),
      I1 => \counter_stg1_reg__0\(2),
      I2 => \counter_stg1_reg__0\(1),
      I3 => \counter_stg1_reg__0\(0),
      I4 => \counter_stg1_reg__0\(3),
      O => \p_0_in__0\(4)
    );
\counter_stg1[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => data_out,
      I1 => reset_i_2_n_0,
      I2 => counter_stg1_roll,
      O => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg1[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \counter_stg1_reg__0\(3),
      I1 => \counter_stg1_reg__0\(0),
      I2 => \counter_stg1_reg__0\(1),
      I3 => \counter_stg1_reg__0\(2),
      I4 => \counter_stg1_reg__0\(4),
      I5 => counter_stg1_reg(5),
      O => \p_0_in__0\(5)
    );
\counter_stg1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => \p_0_in__0\(0),
      Q => \counter_stg1_reg__0\(0),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => \p_0_in__0\(1),
      Q => \counter_stg1_reg__0\(1),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => \p_0_in__0\(2),
      Q => \counter_stg1_reg__0\(2),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => \p_0_in__0\(3),
      Q => \counter_stg1_reg__0\(3),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => \p_0_in__0\(4),
      Q => \counter_stg1_reg__0\(4),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => \p_0_in__0\(5),
      Q => counter_stg1_reg(5),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => counter_stg1_reg(5),
      I1 => \counter_stg1_reg__0\(4),
      I2 => \counter_stg1_reg__0\(2),
      I3 => \counter_stg1_reg__0\(1),
      I4 => \counter_stg1_reg__0\(0),
      I5 => \counter_stg1_reg__0\(3),
      O => counter_stg1_roll
    );
\counter_stg2[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_stg2_reg(0),
      O => \counter_stg2[0]_i_3_n_0\
    );
\counter_stg2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg1_roll,
      D => \counter_stg2_reg[0]_i_2_n_7\,
      Q => counter_stg2_reg(0),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_stg2_reg[0]_i_2_n_0\,
      CO(2) => \counter_stg2_reg[0]_i_2_n_1\,
      CO(1) => \counter_stg2_reg[0]_i_2_n_2\,
      CO(0) => \counter_stg2_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \counter_stg2_reg[0]_i_2_n_4\,
      O(2) => \counter_stg2_reg[0]_i_2_n_5\,
      O(1) => \counter_stg2_reg[0]_i_2_n_6\,
      O(0) => \counter_stg2_reg[0]_i_2_n_7\,
      S(3 downto 1) => counter_stg2_reg(3 downto 1),
      S(0) => \counter_stg2[0]_i_3_n_0\
    );
\counter_stg2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg1_roll,
      D => \counter_stg2_reg[8]_i_1_n_5\,
      Q => counter_stg2_reg(10),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg1_roll,
      D => \counter_stg2_reg[8]_i_1_n_4\,
      Q => counter_stg2_reg(11),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg1_roll,
      D => \counter_stg2_reg[0]_i_2_n_6\,
      Q => counter_stg2_reg(1),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg1_roll,
      D => \counter_stg2_reg[0]_i_2_n_5\,
      Q => counter_stg2_reg(2),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg1_roll,
      D => \counter_stg2_reg[0]_i_2_n_4\,
      Q => counter_stg2_reg(3),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg1_roll,
      D => \counter_stg2_reg[4]_i_1_n_7\,
      Q => counter_stg2_reg(4),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_stg2_reg[0]_i_2_n_0\,
      CO(3) => \counter_stg2_reg[4]_i_1_n_0\,
      CO(2) => \counter_stg2_reg[4]_i_1_n_1\,
      CO(1) => \counter_stg2_reg[4]_i_1_n_2\,
      CO(0) => \counter_stg2_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_stg2_reg[4]_i_1_n_4\,
      O(2) => \counter_stg2_reg[4]_i_1_n_5\,
      O(1) => \counter_stg2_reg[4]_i_1_n_6\,
      O(0) => \counter_stg2_reg[4]_i_1_n_7\,
      S(3 downto 0) => counter_stg2_reg(7 downto 4)
    );
\counter_stg2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg1_roll,
      D => \counter_stg2_reg[4]_i_1_n_6\,
      Q => counter_stg2_reg(5),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg1_roll,
      D => \counter_stg2_reg[4]_i_1_n_5\,
      Q => counter_stg2_reg(6),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg1_roll,
      D => \counter_stg2_reg[4]_i_1_n_4\,
      Q => counter_stg2_reg(7),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg1_roll,
      D => \counter_stg2_reg[8]_i_1_n_7\,
      Q => counter_stg2_reg(8),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_stg2_reg[4]_i_1_n_0\,
      CO(3) => \NLW_counter_stg2_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \counter_stg2_reg[8]_i_1_n_1\,
      CO(1) => \counter_stg2_reg[8]_i_1_n_2\,
      CO(0) => \counter_stg2_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_stg2_reg[8]_i_1_n_4\,
      O(2) => \counter_stg2_reg[8]_i_1_n_5\,
      O(1) => \counter_stg2_reg[8]_i_1_n_6\,
      O(0) => \counter_stg2_reg[8]_i_1_n_7\,
      S(3 downto 0) => counter_stg2_reg(11 downto 8)
    );
\counter_stg2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg1_roll,
      D => \counter_stg2_reg[8]_i_1_n_6\,
      Q => counter_stg2_reg(9),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => counter_stg1_roll,
      I1 => \counter_stg3[0]_i_3_n_0\,
      I2 => counter_stg2_reg(3),
      I3 => counter_stg2_reg(8),
      I4 => counter_stg2_reg(11),
      I5 => counter_stg2_reg(4),
      O => counter_stg30
    );
\counter_stg3[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => counter_stg2_reg(2),
      I1 => counter_stg2_reg(5),
      I2 => counter_stg2_reg(7),
      I3 => counter_stg2_reg(0),
      I4 => \counter_stg3[0]_i_5_n_0\,
      O => \counter_stg3[0]_i_3_n_0\
    );
\counter_stg3[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_stg3_reg(0),
      O => \counter_stg3[0]_i_4_n_0\
    );
\counter_stg3[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => counter_stg2_reg(10),
      I1 => counter_stg2_reg(9),
      I2 => counter_stg2_reg(1),
      I3 => counter_stg2_reg(6),
      O => \counter_stg3[0]_i_5_n_0\
    );
\counter_stg3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[0]_i_2_n_7\,
      Q => counter_stg3_reg(0),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_stg3_reg[0]_i_2_n_0\,
      CO(2) => \counter_stg3_reg[0]_i_2_n_1\,
      CO(1) => \counter_stg3_reg[0]_i_2_n_2\,
      CO(0) => \counter_stg3_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \counter_stg3_reg[0]_i_2_n_4\,
      O(2) => \counter_stg3_reg[0]_i_2_n_5\,
      O(1) => \counter_stg3_reg[0]_i_2_n_6\,
      O(0) => \counter_stg3_reg[0]_i_2_n_7\,
      S(3 downto 1) => counter_stg3_reg(3 downto 1),
      S(0) => \counter_stg3[0]_i_4_n_0\
    );
\counter_stg3_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[8]_i_1_n_5\,
      Q => counter_stg3_reg(10),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[8]_i_1_n_4\,
      Q => counter_stg3_reg(11),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[0]_i_2_n_6\,
      Q => counter_stg3_reg(1),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[0]_i_2_n_5\,
      Q => counter_stg3_reg(2),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[0]_i_2_n_4\,
      Q => counter_stg3_reg(3),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[4]_i_1_n_7\,
      Q => counter_stg3_reg(4),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_stg3_reg[0]_i_2_n_0\,
      CO(3) => \counter_stg3_reg[4]_i_1_n_0\,
      CO(2) => \counter_stg3_reg[4]_i_1_n_1\,
      CO(1) => \counter_stg3_reg[4]_i_1_n_2\,
      CO(0) => \counter_stg3_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_stg3_reg[4]_i_1_n_4\,
      O(2) => \counter_stg3_reg[4]_i_1_n_5\,
      O(1) => \counter_stg3_reg[4]_i_1_n_6\,
      O(0) => \counter_stg3_reg[4]_i_1_n_7\,
      S(3 downto 0) => counter_stg3_reg(7 downto 4)
    );
\counter_stg3_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[4]_i_1_n_6\,
      Q => counter_stg3_reg(5),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[4]_i_1_n_5\,
      Q => counter_stg3_reg(6),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[4]_i_1_n_4\,
      Q => counter_stg3_reg(7),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[8]_i_1_n_7\,
      Q => counter_stg3_reg(8),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_stg3_reg[4]_i_1_n_0\,
      CO(3) => \NLW_counter_stg3_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \counter_stg3_reg[8]_i_1_n_1\,
      CO(1) => \counter_stg3_reg[8]_i_1_n_2\,
      CO(0) => \counter_stg3_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_stg3_reg[8]_i_1_n_4\,
      O(2) => \counter_stg3_reg[8]_i_1_n_5\,
      O(1) => \counter_stg3_reg[8]_i_1_n_6\,
      O(0) => \counter_stg3_reg[8]_i_1_n_7\,
      S(3 downto 0) => counter_stg3_reg(11 downto 8)
    );
\counter_stg3_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[8]_i_1_n_6\,
      Q => counter_stg3_reg(9),
      R => \counter_stg1[5]_i_1_n_0\
    );
reset_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_stg1_reg(5),
      I1 => reset_i_2_n_0,
      O => reset0
    );
reset_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => reset_i_3_n_0,
      I1 => reset_i_4_n_0,
      I2 => reset_i_5_n_0,
      I3 => reset_i_6_n_0,
      I4 => reset_i_7_n_0,
      I5 => reset_i_8_n_0,
      O => reset_i_2_n_0
    );
reset_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => counter_stg3_reg(8),
      I1 => counter_stg3_reg(10),
      I2 => counter_stg3_reg(6),
      I3 => counter_stg3_reg(11),
      O => reset_i_3_n_0
    );
reset_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => counter_stg3_reg(1),
      I1 => counter_stg2_reg(0),
      I2 => counter_stg2_reg(10),
      I3 => counter_stg3_reg(0),
      O => reset_i_4_n_0
    );
reset_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => counter_stg2_reg(3),
      I1 => counter_stg2_reg(8),
      I2 => counter_stg2_reg(11),
      I3 => counter_stg2_reg(4),
      O => reset_i_5_n_0
    );
reset_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter_stg2_reg(9),
      I1 => counter_stg3_reg(3),
      I2 => counter_stg2_reg(2),
      I3 => counter_stg2_reg(7),
      O => reset_i_6_n_0
    );
reset_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => counter_stg3_reg(7),
      I1 => counter_stg2_reg(5),
      I2 => counter_stg3_reg(5),
      I3 => counter_stg3_reg(2),
      O => reset_i_7_n_0
    );
reset_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => counter_stg3_reg(9),
      I1 => counter_stg2_reg(6),
      I2 => counter_stg3_reg(4),
      I3 => counter_stg2_reg(1),
      O => reset_i_8_n_0
    );
reset_reg: unisim.vcomponents.FDRE
     port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset0,
      Q => wtd_rxpcsreset_in,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block is
  port (
    resetdone : out STD_LOGIC;
    data_out : in STD_LOGIC;
    data_in : in STD_LOGIC;
    userclk2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  signal rx_reset_done_i : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_sync5,
      Q => rx_reset_done_i,
      R => '0'
    );
resetdone_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rx_reset_done_i,
      I1 => data_out,
      O => resetdone
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_0 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    userclk2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_0 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_0;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_0 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_10 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    userclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_10 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_10;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_10 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_11 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_11 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_11;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_11 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_12 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    userclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_12 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_12;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_12 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_13 is
  port (
    data_out : out STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_13 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_13;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_13 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync_reg1_0,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_14 is
  port (
    data_out : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_rx_state_reg[2]\ : out STD_LOGIC;
    rx_fsm_reset_done_int_reg : in STD_LOGIC;
    rx_fsm_reset_done_int_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_sequential_rx_state_reg[0]\ : in STD_LOGIC;
    \FSM_sequential_rx_state_reg[0]_0\ : in STD_LOGIC;
    \FSM_sequential_rx_state_reg[0]_1\ : in STD_LOGIC;
    \FSM_sequential_rx_state_reg[0]_2\ : in STD_LOGIC;
    \FSM_sequential_rx_state_reg[3]\ : in STD_LOGIC;
    time_out_wait_bypass_s3 : in STD_LOGIC;
    \FSM_sequential_rx_state_reg[3]_0\ : in STD_LOGIC;
    rx_fsm_reset_done_int_reg_1 : in STD_LOGIC;
    \FSM_sequential_rx_state_reg[0]_3\ : in STD_LOGIC;
    \FSM_sequential_rx_state_reg[0]_4\ : in STD_LOGIC;
    data_in : in STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_14 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_14;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_14 is
  signal \FSM_sequential_rx_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_7_n_0\ : STD_LOGIC;
  signal \^data_out\ : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  signal rx_fsm_reset_done_int : STD_LOGIC;
  signal rx_fsm_reset_done_int_i_3_n_0 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
  data_out <= \^data_out\;
\FSM_sequential_rx_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8FFA8A8"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => \FSM_sequential_rx_state[3]_i_7_n_0\,
      I3 => \FSM_sequential_rx_state_reg[0]_3\,
      I4 => \FSM_sequential_rx_state_reg[0]_4\,
      O => D(0)
    );
\FSM_sequential_rx_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03443377"
    )
        port map (
      I0 => \FSM_sequential_rx_state[3]_i_7_n_0\,
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(1),
      I4 => \FSM_sequential_rx_state_reg[0]_4\,
      O => D(1)
    );
\FSM_sequential_rx_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABBBBBAAABAAAB"
    )
        port map (
      I0 => \FSM_sequential_rx_state[3]_i_3_n_0\,
      I1 => \FSM_sequential_rx_state_reg[0]\,
      I2 => \FSM_sequential_rx_state_reg[0]_0\,
      I3 => Q(0),
      I4 => \FSM_sequential_rx_state_reg[0]_1\,
      I5 => \FSM_sequential_rx_state_reg[0]_2\,
      O => E(0)
    );
\FSM_sequential_rx_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDFFFFFDDDF0000"
    )
        port map (
      I0 => \FSM_sequential_rx_state[3]_i_7_n_0\,
      I1 => \FSM_sequential_rx_state_reg[3]\,
      I2 => Q(0),
      I3 => time_out_wait_bypass_s3,
      I4 => Q(3),
      I5 => \FSM_sequential_rx_state_reg[3]_0\,
      O => D(2)
    );
\FSM_sequential_rx_state[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4C48"
    )
        port map (
      I0 => \^data_out\,
      I1 => Q(3),
      I2 => Q(1),
      I3 => \FSM_sequential_rx_state[3]_i_7_n_0\,
      O => \FSM_sequential_rx_state[3]_i_3_n_0\
    );
\FSM_sequential_rx_state[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"04FF"
    )
        port map (
      I0 => rx_fsm_reset_done_int_reg,
      I1 => rx_fsm_reset_done_int_reg_0,
      I2 => \^data_out\,
      I3 => Q(0),
      O => \FSM_sequential_rx_state[3]_i_7_n_0\
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync_reg1_0,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => \^data_out\,
      R => '0'
    );
rx_fsm_reset_done_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => rx_fsm_reset_done_int,
      I1 => Q(2),
      I2 => Q(3),
      I3 => rx_fsm_reset_done_int_i_3_n_0,
      I4 => data_in,
      O => \FSM_sequential_rx_state_reg[2]\
    );
rx_fsm_reset_done_int_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => rx_fsm_reset_done_int_reg_1,
      I3 => rx_fsm_reset_done_int_reg,
      I4 => \^data_out\,
      O => rx_fsm_reset_done_int
    );
rx_fsm_reset_done_int_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF3131C0CCFFFF"
    )
        port map (
      I0 => rx_fsm_reset_done_int_reg_0,
      I1 => \^data_out\,
      I2 => rx_fsm_reset_done_int_reg,
      I3 => rx_fsm_reset_done_int_reg_1,
      I4 => Q(1),
      I5 => Q(0),
      O => rx_fsm_reset_done_int_i_3_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_15 is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    mmcm_lock_reclocked_reg : out STD_LOGIC;
    mmcm_lock_reclocked : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    mmcm_lock_reclocked_reg_0 : in STD_LOGIC;
    mmcm_locked : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_15 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_15;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_15 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  signal mmcm_lock_i : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \mmcm_lock_count[7]_i_1__0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \mmcm_lock_reclocked_i_1__0\ : label is "soft_lutpair42";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => mmcm_locked,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => mmcm_lock_i,
      R => '0'
    );
\mmcm_lock_count[7]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mmcm_lock_i,
      O => SR(0)
    );
\mmcm_lock_reclocked_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAA0000"
    )
        port map (
      I0 => mmcm_lock_reclocked,
      I1 => Q(1),
      I2 => mmcm_lock_reclocked_reg_0,
      I3 => Q(0),
      I4 => mmcm_lock_i,
      O => mmcm_lock_reclocked_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_16 is
  port (
    time_out_2ms_reg : out STD_LOGIC;
    reset_time_out_reg : out STD_LOGIC;
    \FSM_sequential_rx_state_reg[0]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_out : in STD_LOGIC;
    reset_time_out_reg_0 : in STD_LOGIC;
    check_tlock_max : in STD_LOGIC;
    reset_time_out_reg_1 : in STD_LOGIC;
    reset_time_out_reg_2 : in STD_LOGIC;
    reset_time_out_reg_3 : in STD_LOGIC;
    gt0_pll0lock_in : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_16 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_16;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_16 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  signal pll0lock_sync : STD_LOGIC;
  signal reset_time_out_i_5_n_0 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
\FSM_sequential_rx_state[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFF00000000"
    )
        port map (
      I0 => \FSM_sequential_rx_state_reg[0]\,
      I1 => pll0lock_sync,
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(0),
      I5 => Q(1),
      O => time_out_2ms_reg
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_pll0lock_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => pll0lock_sync,
      R => '0'
    );
\reset_time_out_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80FFFFFF800000"
    )
        port map (
      I0 => reset_time_out_reg_0,
      I1 => check_tlock_max,
      I2 => reset_time_out_reg_1,
      I3 => reset_time_out_i_5_n_0,
      I4 => reset_time_out_reg_2,
      I5 => reset_time_out_reg_3,
      O => reset_time_out_reg
    );
reset_time_out_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1D0D1D0DD1C1DDCD"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      I2 => Q(1),
      I3 => pll0lock_sync,
      I4 => Q(0),
      I5 => data_out,
      O => reset_time_out_i_5_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_17 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    userclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_17 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_17;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_17 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_18 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    userclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_18 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_18;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_18 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_19 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_19 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_19;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_19 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_3 is
  port (
    data_out : out STD_LOGIC;
    status_vector : in STD_LOGIC_VECTOR ( 0 to 0 );
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_3 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_3;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_3 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => status_vector(0),
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_6 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    gtrefclk_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_6 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_6;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_6 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_7 is
  port (
    data_out : out STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_7 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_7;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_7 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync_reg1_0,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_8 is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    mmcm_lock_reclocked_reg : out STD_LOGIC;
    mmcm_lock_reclocked : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    mmcm_lock_reclocked_reg_0 : in STD_LOGIC;
    mmcm_locked : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_8 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_8;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_8 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  signal mmcm_lock_i : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \mmcm_lock_count[7]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of mmcm_lock_reclocked_i_1 : label is "soft_lutpair56";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => mmcm_locked,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => mmcm_lock_i,
      R => '0'
    );
\mmcm_lock_count[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mmcm_lock_i,
      O => SR(0)
    );
mmcm_lock_reclocked_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAA0000"
    )
        port map (
      I0 => mmcm_lock_reclocked,
      I1 => Q(1),
      I2 => mmcm_lock_reclocked_reg_0,
      I3 => Q(0),
      I4 => mmcm_lock_i,
      O => mmcm_lock_reclocked_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_9 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_tx_state_reg[1]\ : out STD_LOGIC;
    reset_time_out_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_sequential_tx_state_reg[0]\ : in STD_LOGIC;
    \FSM_sequential_tx_state_reg[0]_0\ : in STD_LOGIC;
    sel : in STD_LOGIC;
    \FSM_sequential_tx_state_reg[0]_1\ : in STD_LOGIC;
    mmcm_lock_reclocked : in STD_LOGIC;
    \FSM_sequential_tx_state[3]_i_3_0\ : in STD_LOGIC;
    \FSM_sequential_tx_state[3]_i_3_1\ : in STD_LOGIC;
    txresetdone_s3 : in STD_LOGIC;
    reset_time_out : in STD_LOGIC;
    \FSM_sequential_tx_state[3]_i_3_2\ : in STD_LOGIC;
    \FSM_sequential_tx_state[3]_i_3_3\ : in STD_LOGIC;
    gt0_pll0lock_in : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_9 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_9;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_9 is
  signal \FSM_sequential_tx_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_8_n_0\ : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  signal pll0lock_sync : STD_LOGIC;
  signal reset_time_out_0 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
\FSM_sequential_tx_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3300744433007477"
    )
        port map (
      I0 => \FSM_sequential_tx_state[3]_i_3_n_0\,
      I1 => Q(0),
      I2 => \FSM_sequential_tx_state_reg[0]\,
      I3 => \FSM_sequential_tx_state_reg[0]_0\,
      I4 => Q(3),
      I5 => sel,
      O => E(0)
    );
\FSM_sequential_tx_state[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => \FSM_sequential_tx_state[3]_i_6_n_0\,
      I1 => Q(1),
      I2 => \FSM_sequential_tx_state_reg[0]_1\,
      I3 => mmcm_lock_reclocked,
      I4 => Q(2),
      I5 => \FSM_sequential_tx_state[3]_i_8_n_0\,
      O => \FSM_sequential_tx_state[3]_i_3_n_0\
    );
\FSM_sequential_tx_state[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45004500450045FF"
    )
        port map (
      I0 => txresetdone_s3,
      I1 => reset_time_out,
      I2 => \FSM_sequential_tx_state[3]_i_3_2\,
      I3 => Q(2),
      I4 => pll0lock_sync,
      I5 => \FSM_sequential_tx_state[3]_i_3_3\,
      O => \FSM_sequential_tx_state[3]_i_6_n_0\
    );
\FSM_sequential_tx_state[3]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => pll0lock_sync,
      I1 => \FSM_sequential_tx_state[3]_i_3_0\,
      I2 => \FSM_sequential_tx_state[3]_i_3_1\,
      O => \FSM_sequential_tx_state[3]_i_8_n_0\
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_pll0lock_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => pll0lock_sync,
      R => '0'
    );
reset_time_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEAAFEFE02AA0202"
    )
        port map (
      I0 => reset_time_out_0,
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(0),
      I5 => reset_time_out,
      O => \FSM_sequential_tx_state_reg[1]\
    );
reset_time_out_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08BF08BB"
    )
        port map (
      I0 => reset_time_out_reg,
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(3),
      I4 => pll0lock_sync,
      O => reset_time_out_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_RX is
  port (
    S2 : out STD_LOGIC;
    gmii_rx_er : out STD_LOGIC;
    status_vector : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gmii_rx_dv : out STD_LOGIC;
    \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXCHARISK_INT_reg\ : out STD_LOGIC;
    FALSE_NIT_reg_0 : out STD_LOGIC;
    gmii_rxd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    userclk2 : in STD_LOGIC;
    RUDI_I_reg_0 : in STD_LOGIC;
    I0 : in STD_LOGIC;
    SYNC_STATUS_REG0 : in STD_LOGIC;
    RXCHARISK_REG1_reg_0 : in STD_LOGIC;
    RXSYNC_STATUS : in STD_LOGIC;
    RXNOTINTABLE_INT : in STD_LOGIC;
    D : in STD_LOGIC;
    CGBAD_reg_0 : in STD_LOGIC;
    RXEVEN0_out : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    RX_ER_reg_0 : in STD_LOGIC;
    C_HDR_REMOVED_REG_reg_0 : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_RX : entity is "RX";
end gig_ethernet_pcs_pma_0_RX;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_RX is
  signal C : STD_LOGIC;
  signal C0 : STD_LOGIC;
  signal CGBAD : STD_LOGIC;
  signal CGBAD_REG1 : STD_LOGIC;
  signal CGBAD_REG2 : STD_LOGIC;
  signal CGBAD_REG3 : STD_LOGIC;
  signal C_HDR_REMOVED : STD_LOGIC;
  signal C_HDR_REMOVED_REG : STD_LOGIC;
  signal C_REG1 : STD_LOGIC;
  signal C_REG2 : STD_LOGIC;
  signal C_REG3 : STD_LOGIC;
  signal D0p0 : STD_LOGIC;
  signal D0p0_REG : STD_LOGIC;
  signal D0p0_REG_i_2_n_0 : STD_LOGIC;
  signal EOP : STD_LOGIC;
  signal EOP0 : STD_LOGIC;
  signal EOP_REG1 : STD_LOGIC;
  signal EOP_REG10 : STD_LOGIC;
  signal EOP_i_2_n_0 : STD_LOGIC;
  signal EXTEND : STD_LOGIC;
  signal EXTEND_ERR : STD_LOGIC;
  signal EXTEND_ERR0 : STD_LOGIC;
  signal EXTEND_REG1 : STD_LOGIC;
  signal EXTEND_REG2 : STD_LOGIC;
  signal EXTEND_REG3 : STD_LOGIC;
  signal EXTEND_i_1_n_0 : STD_LOGIC;
  signal EXT_ILLEGAL_K : STD_LOGIC;
  signal EXT_ILLEGAL_K0 : STD_LOGIC;
  signal EXT_ILLEGAL_K_REG1 : STD_LOGIC;
  signal EXT_ILLEGAL_K_REG2 : STD_LOGIC;
  signal FALSE_CARRIER : STD_LOGIC;
  signal FALSE_CARRIER0 : STD_LOGIC;
  signal FALSE_CARRIER_REG1 : STD_LOGIC;
  signal FALSE_CARRIER_REG2 : STD_LOGIC;
  signal FALSE_CARRIER_REG3 : STD_LOGIC;
  signal FALSE_CARRIER_i_1_n_0 : STD_LOGIC;
  signal FALSE_CARRIER_i_3_n_0 : STD_LOGIC;
  signal FALSE_DATA : STD_LOGIC;
  signal FALSE_DATA0 : STD_LOGIC;
  signal FALSE_DATA_i_2_n_0 : STD_LOGIC;
  signal FALSE_DATA_i_3_n_0 : STD_LOGIC;
  signal FALSE_DATA_i_4_n_0 : STD_LOGIC;
  signal FALSE_DATA_i_5_n_0 : STD_LOGIC;
  signal FALSE_DATA_i_6_n_0 : STD_LOGIC;
  signal FALSE_K : STD_LOGIC;
  signal FALSE_K0 : STD_LOGIC;
  signal FALSE_K_i_2_n_0 : STD_LOGIC;
  signal FALSE_K_i_3_n_0 : STD_LOGIC;
  signal FALSE_NIT : STD_LOGIC;
  signal FALSE_NIT0 : STD_LOGIC;
  signal FALSE_NIT_i_2_n_0 : STD_LOGIC;
  signal FALSE_NIT_i_3_n_0 : STD_LOGIC;
  signal FROM_RX_CX : STD_LOGIC;
  signal FROM_RX_CX0 : STD_LOGIC;
  signal I : STD_LOGIC;
  signal \IDLE_REG_reg_n_0_[0]\ : STD_LOGIC;
  signal \IDLE_REG_reg_n_0_[2]\ : STD_LOGIC;
  signal ILLEGAL_K : STD_LOGIC;
  signal ILLEGAL_K0 : STD_LOGIC;
  signal ILLEGAL_K_REG1 : STD_LOGIC;
  signal ILLEGAL_K_REG2 : STD_LOGIC;
  signal I_REG_reg_n_0 : STD_LOGIC;
  signal I_i_4_n_0 : STD_LOGIC;
  signal I_i_5_n_0 : STD_LOGIC;
  signal I_i_6_n_0 : STD_LOGIC;
  signal I_i_7_n_0 : STD_LOGIC;
  signal K23p7 : STD_LOGIC;
  signal K28p5 : STD_LOGIC;
  signal K28p5_REG1 : STD_LOGIC;
  signal K29p7 : STD_LOGIC;
  signal R : STD_LOGIC;
  signal RECEIVE : STD_LOGIC;
  signal RECEIVE_i_1_n_0 : STD_LOGIC;
  signal \RUDI_C0__0\ : STD_LOGIC;
  signal RUDI_I0 : STD_LOGIC;
  signal RXCHARISK_REG1 : STD_LOGIC;
  signal RXDATA_REG5 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \RXD[0]_i_1_n_0\ : STD_LOGIC;
  signal \RXD[1]_i_1_n_0\ : STD_LOGIC;
  signal \RXD[2]_i_1_n_0\ : STD_LOGIC;
  signal \RXD[3]_i_1_n_0\ : STD_LOGIC;
  signal \RXD[4]_i_1_n_0\ : STD_LOGIC;
  signal \RXD[5]_i_1_n_0\ : STD_LOGIC;
  signal \RXD[6]_i_1_n_0\ : STD_LOGIC;
  signal \RXD[7]_i_1_n_0\ : STD_LOGIC;
  signal RX_CONFIG_VALID_INT : STD_LOGIC;
  signal RX_CONFIG_VALID_INT0 : STD_LOGIC;
  signal RX_CONFIG_VALID_INT_i_2_n_0 : STD_LOGIC;
  signal \RX_CONFIG_VALID_REG_reg_n_0_[0]\ : STD_LOGIC;
  signal \RX_CONFIG_VALID_REG_reg_n_0_[3]\ : STD_LOGIC;
  signal RX_DATA_ERROR : STD_LOGIC;
  signal RX_DATA_ERROR0 : STD_LOGIC;
  signal RX_DATA_ERROR_i_2_n_0 : STD_LOGIC;
  signal RX_DATA_ERROR_i_3_n_0 : STD_LOGIC;
  signal RX_DATA_ERROR_i_4_n_0 : STD_LOGIC;
  signal RX_DV0 : STD_LOGIC;
  signal RX_DV_i_1_n_0 : STD_LOGIC;
  signal RX_ER0 : STD_LOGIC;
  signal RX_ER_i_2_n_0 : STD_LOGIC;
  signal RX_INVALID_i_2_n_0 : STD_LOGIC;
  signal R_REG1 : STD_LOGIC;
  signal R_i_2_n_0 : STD_LOGIC;
  signal S : STD_LOGIC;
  signal S0 : STD_LOGIC;
  signal \^s2\ : STD_LOGIC;
  signal SOP : STD_LOGIC;
  signal SOP0 : STD_LOGIC;
  signal SOP_REG1 : STD_LOGIC;
  signal SOP_REG2 : STD_LOGIC;
  signal SOP_REG3 : STD_LOGIC;
  signal SYNC_STATUS_REG : STD_LOGIC;
  signal T : STD_LOGIC;
  signal T_REG1 : STD_LOGIC;
  signal T_REG2 : STD_LOGIC;
  signal \^use_rocket_io.no_1588.reclock_mgt_signals_txoutclk.rxcharisk_int_reg\ : STD_LOGIC;
  signal WAIT_FOR_K : STD_LOGIC;
  signal WAIT_FOR_K_i_1_n_0 : STD_LOGIC;
  signal \^gmii_rx_dv\ : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC;
  signal p_0_in2_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal \^status_vector\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of D0p0_REG_i_1 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of EXT_ILLEGAL_K_i_1 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of FALSE_DATA_i_4 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of FALSE_DATA_i_5 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of FALSE_DATA_i_6 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of FALSE_K_i_1 : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of FALSE_K_i_3 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of FALSE_NIT_i_1 : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of ILLEGAL_K_i_1 : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of I_i_4 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of I_i_5 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of I_i_6 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of I_i_7 : label is "soft_lutpair34";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \RXDATA_REG5_reg[0]_srl5\ : label is "inst/gig_ethernet_pcs_pma_0_core/\gpcs_pma_inst/RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK/RXDATA_REG5_reg ";
  attribute srl_name : string;
  attribute srl_name of \RXDATA_REG5_reg[0]_srl5\ : label is "inst/gig_ethernet_pcs_pma_0_core/\gpcs_pma_inst/RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK/RXDATA_REG5_reg[0]_srl5 ";
  attribute srl_bus_name of \RXDATA_REG5_reg[1]_srl5\ : label is "inst/gig_ethernet_pcs_pma_0_core/\gpcs_pma_inst/RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK/RXDATA_REG5_reg ";
  attribute srl_name of \RXDATA_REG5_reg[1]_srl5\ : label is "inst/gig_ethernet_pcs_pma_0_core/\gpcs_pma_inst/RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK/RXDATA_REG5_reg[1]_srl5 ";
  attribute srl_bus_name of \RXDATA_REG5_reg[2]_srl5\ : label is "inst/gig_ethernet_pcs_pma_0_core/\gpcs_pma_inst/RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK/RXDATA_REG5_reg ";
  attribute srl_name of \RXDATA_REG5_reg[2]_srl5\ : label is "inst/gig_ethernet_pcs_pma_0_core/\gpcs_pma_inst/RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK/RXDATA_REG5_reg[2]_srl5 ";
  attribute srl_bus_name of \RXDATA_REG5_reg[3]_srl5\ : label is "inst/gig_ethernet_pcs_pma_0_core/\gpcs_pma_inst/RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK/RXDATA_REG5_reg ";
  attribute srl_name of \RXDATA_REG5_reg[3]_srl5\ : label is "inst/gig_ethernet_pcs_pma_0_core/\gpcs_pma_inst/RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK/RXDATA_REG5_reg[3]_srl5 ";
  attribute srl_bus_name of \RXDATA_REG5_reg[4]_srl5\ : label is "inst/gig_ethernet_pcs_pma_0_core/\gpcs_pma_inst/RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK/RXDATA_REG5_reg ";
  attribute srl_name of \RXDATA_REG5_reg[4]_srl5\ : label is "inst/gig_ethernet_pcs_pma_0_core/\gpcs_pma_inst/RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK/RXDATA_REG5_reg[4]_srl5 ";
  attribute srl_bus_name of \RXDATA_REG5_reg[5]_srl5\ : label is "inst/gig_ethernet_pcs_pma_0_core/\gpcs_pma_inst/RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK/RXDATA_REG5_reg ";
  attribute srl_name of \RXDATA_REG5_reg[5]_srl5\ : label is "inst/gig_ethernet_pcs_pma_0_core/\gpcs_pma_inst/RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK/RXDATA_REG5_reg[5]_srl5 ";
  attribute srl_bus_name of \RXDATA_REG5_reg[6]_srl5\ : label is "inst/gig_ethernet_pcs_pma_0_core/\gpcs_pma_inst/RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK/RXDATA_REG5_reg ";
  attribute srl_name of \RXDATA_REG5_reg[6]_srl5\ : label is "inst/gig_ethernet_pcs_pma_0_core/\gpcs_pma_inst/RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK/RXDATA_REG5_reg[6]_srl5 ";
  attribute srl_bus_name of \RXDATA_REG5_reg[7]_srl5\ : label is "inst/gig_ethernet_pcs_pma_0_core/\gpcs_pma_inst/RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK/RXDATA_REG5_reg ";
  attribute srl_name of \RXDATA_REG5_reg[7]_srl5\ : label is "inst/gig_ethernet_pcs_pma_0_core/\gpcs_pma_inst/RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK/RXDATA_REG5_reg[7]_srl5 ";
  attribute SOFT_HLUTNM of \RXD[0]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \RXD[1]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \RXD[3]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \RXD[4]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \RXD[5]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \RXD[6]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \RXD[7]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of RX_CONFIG_VALID_INT_i_2 : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of RX_DATA_ERROR_i_3 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of RX_ER_i_2 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of R_i_1 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of R_i_2 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \T_i_1__0\ : label is "soft_lutpair28";
begin
  S2 <= \^s2\;
  \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXCHARISK_INT_reg\ <= \^use_rocket_io.no_1588.reclock_mgt_signals_txoutclk.rxcharisk_int_reg\;
  gmii_rx_dv <= \^gmii_rx_dv\;
  status_vector(2 downto 0) <= \^status_vector\(2 downto 0);
CGBAD_REG1_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => CGBAD,
      Q => CGBAD_REG1,
      R => '0'
    );
CGBAD_REG2_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => CGBAD_REG1,
      Q => CGBAD_REG2,
      R => '0'
    );
CGBAD_REG3_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => CGBAD_REG2,
      Q => CGBAD_REG3,
      R => RUDI_I_reg_0
    );
CGBAD_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => RXNOTINTABLE_INT,
      I1 => D,
      I2 => CGBAD_reg_0,
      O => \^s2\
    );
CGBAD_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \^s2\,
      Q => CGBAD,
      R => RUDI_I_reg_0
    );
C_HDR_REMOVED_REG_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => C_HDR_REMOVED_REG_reg_0(0),
      I1 => C_REG2,
      I2 => C_HDR_REMOVED_REG_reg_0(1),
      O => C_HDR_REMOVED
    );
C_HDR_REMOVED_REG_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => C_HDR_REMOVED,
      Q => C_HDR_REMOVED_REG,
      R => '0'
    );
C_REG1_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => C,
      Q => C_REG1,
      R => '0'
    );
C_REG2_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => C_REG1,
      Q => C_REG2,
      R => '0'
    );
C_REG3_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => C_REG2,
      Q => C_REG3,
      R => '0'
    );
C_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => K28p5_REG1,
      I1 => \^use_rocket_io.no_1588.reclock_mgt_signals_txoutclk.rxcharisk_int_reg\,
      O => C0
    );
C_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => C0,
      Q => C,
      R => '0'
    );
D0p0_REG_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => D0p0_REG_i_2_n_0,
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(7),
      O => D0p0
    );
D0p0_REG_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(3),
      I3 => RXCHARISK_REG1_reg_0,
      I4 => Q(6),
      I5 => Q(5),
      O => D0p0_REG_i_2_n_0
    );
D0p0_REG_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => D0p0,
      Q => D0p0_REG,
      R => '0'
    );
EOP_REG1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => EOP,
      I1 => EXTEND,
      I2 => EXTEND_REG1,
      O => EOP_REG10
    );
EOP_REG1_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => EOP_REG10,
      Q => EOP_REG1,
      R => RUDI_I_reg_0
    );
EOP_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF88888000"
    )
        port map (
      I0 => T_REG2,
      I1 => R_REG1,
      I2 => K28p5_REG1,
      I3 => RXEVEN0_out,
      I4 => R,
      I5 => EOP_i_2_n_0,
      O => EOP0
    );
EOP_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8888888"
    )
        port map (
      I0 => I_REG_reg_n_0,
      I1 => K28p5_REG1,
      I2 => C_REG1,
      I3 => D0p0_REG,
      I4 => RXEVEN0_out,
      O => EOP_i_2_n_0
    );
EOP_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => EOP0,
      Q => EOP,
      R => RUDI_I_reg_0
    );
EXTEND_ERR_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => EXT_ILLEGAL_K_REG2,
      I1 => CGBAD_REG3,
      I2 => EXTEND_REG3,
      O => EXTEND_ERR0
    );
EXTEND_ERR_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => EXTEND_ERR0,
      Q => EXTEND_ERR,
      R => SYNC_STATUS_REG0
    );
EXTEND_REG1_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => EXTEND,
      Q => EXTEND_REG1,
      R => '0'
    );
EXTEND_REG2_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => EXTEND_REG1,
      Q => EXTEND_REG2,
      R => '0'
    );
EXTEND_REG3_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => EXTEND_REG2,
      Q => EXTEND_REG3,
      R => '0'
    );
EXTEND_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808080FF80808080"
    )
        port map (
      I0 => R_REG1,
      I1 => R,
      I2 => RECEIVE,
      I3 => RX_DATA_ERROR_i_3_n_0,
      I4 => S,
      I5 => EXTEND,
      O => EXTEND_i_1_n_0
    );
EXTEND_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => EXTEND_i_1_n_0,
      Q => EXTEND,
      R => SYNC_STATUS_REG0
    );
EXT_ILLEGAL_K_REG1_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => EXT_ILLEGAL_K,
      Q => EXT_ILLEGAL_K_REG1,
      R => SYNC_STATUS_REG0
    );
EXT_ILLEGAL_K_REG2_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => EXT_ILLEGAL_K_REG1,
      Q => EXT_ILLEGAL_K_REG2,
      R => SYNC_STATUS_REG0
    );
EXT_ILLEGAL_K_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000700"
    )
        port map (
      I0 => K28p5_REG1,
      I1 => RXEVEN0_out,
      I2 => S,
      I3 => EXTEND_REG1,
      I4 => R,
      O => EXT_ILLEGAL_K0
    );
EXT_ILLEGAL_K_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => EXT_ILLEGAL_K0,
      Q => EXT_ILLEGAL_K,
      R => SYNC_STATUS_REG0
    );
FALSE_CARRIER_REG1_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => FALSE_CARRIER,
      Q => FALSE_CARRIER_REG1,
      R => '0'
    );
FALSE_CARRIER_REG2_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => FALSE_CARRIER_REG1,
      Q => FALSE_CARRIER_REG2,
      R => '0'
    );
FALSE_CARRIER_REG3_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => FALSE_CARRIER_REG2,
      Q => FALSE_CARRIER_REG3,
      R => SYNC_STATUS_REG0
    );
FALSE_CARRIER_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F7F0"
    )
        port map (
      I0 => RXEVEN0_out,
      I1 => K28p5_REG1,
      I2 => FALSE_CARRIER0,
      I3 => FALSE_CARRIER,
      O => FALSE_CARRIER_i_1_n_0
    );
FALSE_CARRIER_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => K28p5_REG1,
      I1 => S,
      I2 => RXSYNC_STATUS,
      I3 => I_REG_reg_n_0,
      I4 => FALSE_CARRIER_i_3_n_0,
      O => FALSE_CARRIER0
    );
FALSE_CARRIER_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => FALSE_NIT,
      I1 => FALSE_K,
      I2 => FALSE_DATA,
      O => FALSE_CARRIER_i_3_n_0
    );
FALSE_CARRIER_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => FALSE_CARRIER_i_1_n_0,
      Q => FALSE_CARRIER,
      R => SYNC_STATUS_REG0
    );
FALSE_DATA_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => FALSE_DATA_i_2_n_0,
      I1 => FALSE_DATA_i_3_n_0,
      I2 => RXNOTINTABLE_INT,
      I3 => RXCHARISK_REG1_reg_0,
      O => FALSE_DATA0
    );
FALSE_DATA_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000808080"
    )
        port map (
      I0 => FALSE_DATA_i_4_n_0,
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(3),
      I4 => Q(2),
      I5 => Q(4),
      O => FALSE_DATA_i_2_n_0
    );
FALSE_DATA_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004040000000"
    )
        port map (
      I0 => FALSE_DATA_i_5_n_0,
      I1 => Q(2),
      I2 => Q(7),
      I3 => Q(1),
      I4 => Q(0),
      I5 => FALSE_DATA_i_6_n_0,
      O => FALSE_DATA_i_3_n_0
    );
FALSE_DATA_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => Q(7),
      I1 => Q(6),
      I2 => Q(5),
      O => FALSE_DATA_i_4_n_0
    );
FALSE_DATA_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => Q(6),
      I1 => Q(5),
      O => FALSE_DATA_i_5_n_0
    );
FALSE_DATA_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      O => FALSE_DATA_i_6_n_0
    );
FALSE_DATA_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => FALSE_DATA0,
      Q => FALSE_DATA,
      R => RUDI_I_reg_0
    );
FALSE_K_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0009"
    )
        port map (
      I0 => Q(5),
      I1 => Q(6),
      I2 => RXNOTINTABLE_INT,
      I3 => FALSE_K_i_2_n_0,
      O => FALSE_K0
    );
FALSE_K_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF7F"
    )
        port map (
      I0 => RXCHARISK_REG1_reg_0,
      I1 => Q(4),
      I2 => Q(7),
      I3 => FALSE_K_i_3_n_0,
      I4 => Q(0),
      I5 => Q(1),
      O => FALSE_K_i_2_n_0
    );
FALSE_K_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      O => FALSE_K_i_3_n_0
    );
FALSE_K_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => FALSE_K0,
      Q => FALSE_K,
      R => RUDI_I_reg_0
    );
FALSE_NIT_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => RXNOTINTABLE_INT,
      I1 => FALSE_NIT_i_2_n_0,
      O => FALSE_NIT0
    );
FALSE_NIT_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F55F5FFC5FFCFCCF"
    )
        port map (
      I0 => D0p0_REG_i_2_n_0,
      I1 => FALSE_NIT_i_3_n_0,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(7),
      I5 => D,
      O => FALSE_NIT_i_2_n_0
    );
FALSE_NIT_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => RXCHARISK_REG1_reg_0,
      I3 => Q(4),
      I4 => Q(6),
      I5 => Q(5),
      O => FALSE_NIT_i_3_n_0
    );
FALSE_NIT_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => FALSE_NIT0,
      Q => FALSE_NIT,
      R => RUDI_I_reg_0
    );
FROM_RX_CX_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFE0FFEEEEE0E0"
    )
        port map (
      I0 => C_REG1,
      I1 => C_REG2,
      I2 => RXCHARISK_REG1,
      I3 => RX_DATA_ERROR_i_3_n_0,
      I4 => CGBAD,
      I5 => C_REG3,
      O => FROM_RX_CX0
    );
FROM_RX_CX_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => FROM_RX_CX0,
      Q => FROM_RX_CX,
      R => SYNC_STATUS_REG0
    );
\IDLE_REG_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => I_REG_reg_n_0,
      Q => \IDLE_REG_reg_n_0_[0]\,
      R => RUDI_I_reg_0
    );
\IDLE_REG_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \IDLE_REG_reg_n_0_[0]\,
      Q => p_0_in1_in,
      R => RUDI_I_reg_0
    );
\IDLE_REG_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => p_0_in1_in,
      Q => \IDLE_REG_reg_n_0_[2]\,
      R => RUDI_I_reg_0
    );
ILLEGAL_K_REG1_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => ILLEGAL_K,
      Q => ILLEGAL_K_REG1,
      R => SYNC_STATUS_REG0
    );
ILLEGAL_K_REG2_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => ILLEGAL_K_REG1,
      Q => ILLEGAL_K_REG2,
      R => SYNC_STATUS_REG0
    );
ILLEGAL_K_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => R,
      I1 => K28p5_REG1,
      I2 => RXCHARISK_REG1,
      I3 => T,
      O => ILLEGAL_K0
    );
ILLEGAL_K_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => ILLEGAL_K0,
      Q => ILLEGAL_K,
      R => SYNC_STATUS_REG0
    );
I_REG_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => I,
      Q => I_REG_reg_n_0,
      R => '0'
    );
I_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBFBFBFBFBFBAA"
    )
        port map (
      I0 => RXCHARISK_REG1_reg_0,
      I1 => I_i_4_n_0,
      I2 => I_i_5_n_0,
      I3 => I_i_6_n_0,
      I4 => FALSE_DATA_i_5_n_0,
      I5 => I_i_7_n_0,
      O => \^use_rocket_io.no_1588.reclock_mgt_signals_txoutclk.rxcharisk_int_reg\
    );
I_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001FFFFFF"
    )
        port map (
      I0 => FALSE_NIT,
      I1 => FALSE_K,
      I2 => FALSE_DATA,
      I3 => RXSYNC_STATUS,
      I4 => I_REG_reg_n_0,
      I5 => K28p5_REG1,
      O => FALSE_NIT_reg_0
    );
I_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(4),
      O => I_i_4_n_0
    );
I_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFBFFFF"
    )
        port map (
      I0 => Q(5),
      I1 => Q(6),
      I2 => Q(7),
      I3 => Q(0),
      I4 => Q(1),
      O => I_i_5_n_0
    );
I_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => Q(4),
      I1 => Q(7),
      O => I_i_6_n_0
    );
I_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(1),
      O => I_i_7_n_0
    );
I_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => I0,
      Q => I,
      R => '0'
    );
K28p5_REG1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => Q(5),
      I1 => Q(6),
      I2 => FALSE_K_i_2_n_0,
      O => K28p5
    );
K28p5_REG1_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => K28p5,
      Q => K28p5_REG1,
      R => '0'
    );
RECEIVE_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => EOP,
      I1 => SOP_REG2,
      I2 => RECEIVE,
      O => RECEIVE_i_1_n_0
    );
RECEIVE_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => RECEIVE_i_1_n_0,
      Q => RECEIVE,
      R => SYNC_STATUS_REG0
    );
RUDI_C0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => \RX_CONFIG_VALID_REG_reg_n_0_[3]\,
      I2 => p_1_in,
      I3 => \RX_CONFIG_VALID_REG_reg_n_0_[0]\,
      O => \RUDI_C0__0\
    );
RUDI_C_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \RUDI_C0__0\,
      Q => \^status_vector\(0),
      R => RUDI_I_reg_0
    );
RUDI_I_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \IDLE_REG_reg_n_0_[2]\,
      I1 => p_0_in1_in,
      O => RUDI_I0
    );
RUDI_I_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => RUDI_I0,
      Q => \^status_vector\(1),
      R => RUDI_I_reg_0
    );
RXCHARISK_REG1_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => RXCHARISK_REG1_reg_0,
      Q => RXCHARISK_REG1,
      R => '0'
    );
\RXDATA_REG5_reg[0]_srl5\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => userclk2,
      D => Q(0),
      Q => RXDATA_REG5(0)
    );
\RXDATA_REG5_reg[1]_srl5\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => userclk2,
      D => Q(1),
      Q => RXDATA_REG5(1)
    );
\RXDATA_REG5_reg[2]_srl5\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => userclk2,
      D => Q(2),
      Q => RXDATA_REG5(2)
    );
\RXDATA_REG5_reg[3]_srl5\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => userclk2,
      D => Q(3),
      Q => RXDATA_REG5(3)
    );
\RXDATA_REG5_reg[4]_srl5\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => userclk2,
      D => Q(4),
      Q => RXDATA_REG5(4)
    );
\RXDATA_REG5_reg[5]_srl5\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => userclk2,
      D => Q(5),
      Q => RXDATA_REG5(5)
    );
\RXDATA_REG5_reg[6]_srl5\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => userclk2,
      D => Q(6),
      Q => RXDATA_REG5(6)
    );
\RXDATA_REG5_reg[7]_srl5\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => userclk2,
      D => Q(7),
      Q => RXDATA_REG5(7)
    );
\RXD[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBBA"
    )
        port map (
      I0 => SOP_REG3,
      I1 => FALSE_CARRIER_REG3,
      I2 => EXTEND_REG1,
      I3 => RXDATA_REG5(0),
      O => \RXD[0]_i_1_n_0\
    );
\RXD[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5554"
    )
        port map (
      I0 => SOP_REG3,
      I1 => FALSE_CARRIER_REG3,
      I2 => EXTEND_REG1,
      I3 => RXDATA_REG5(1),
      O => \RXD[1]_i_1_n_0\
    );
\RXD[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => RXDATA_REG5(2),
      I1 => FALSE_CARRIER_REG3,
      I2 => EXTEND_REG1,
      I3 => SOP_REG3,
      O => \RXD[2]_i_1_n_0\
    );
\RXD[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5554"
    )
        port map (
      I0 => SOP_REG3,
      I1 => FALSE_CARRIER_REG3,
      I2 => EXTEND_REG1,
      I3 => RXDATA_REG5(3),
      O => \RXD[3]_i_1_n_0\
    );
\RXD[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABBBAAA"
    )
        port map (
      I0 => SOP_REG3,
      I1 => FALSE_CARRIER_REG3,
      I2 => EXTEND_ERR,
      I3 => EXTEND_REG1,
      I4 => RXDATA_REG5(4),
      O => \RXD[4]_i_1_n_0\
    );
\RXD[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => RXDATA_REG5(5),
      I1 => FALSE_CARRIER_REG3,
      I2 => EXTEND_REG1,
      I3 => SOP_REG3,
      O => \RXD[5]_i_1_n_0\
    );
\RXD[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABAA"
    )
        port map (
      I0 => SOP_REG3,
      I1 => FALSE_CARRIER_REG3,
      I2 => EXTEND_REG1,
      I3 => RXDATA_REG5(6),
      O => \RXD[6]_i_1_n_0\
    );
\RXD[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => RXDATA_REG5(7),
      I1 => FALSE_CARRIER_REG3,
      I2 => EXTEND_REG1,
      I3 => SOP_REG3,
      O => \RXD[7]_i_1_n_0\
    );
\RXD_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \RXD[0]_i_1_n_0\,
      Q => gmii_rxd(0),
      R => SR(0)
    );
\RXD_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \RXD[1]_i_1_n_0\,
      Q => gmii_rxd(1),
      R => SR(0)
    );
\RXD_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \RXD[2]_i_1_n_0\,
      Q => gmii_rxd(2),
      R => SR(0)
    );
\RXD_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \RXD[3]_i_1_n_0\,
      Q => gmii_rxd(3),
      R => SR(0)
    );
\RXD_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \RXD[4]_i_1_n_0\,
      Q => gmii_rxd(4),
      R => SR(0)
    );
\RXD_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \RXD[5]_i_1_n_0\,
      Q => gmii_rxd(5),
      R => SR(0)
    );
\RXD_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \RXD[6]_i_1_n_0\,
      Q => gmii_rxd(6),
      R => SR(0)
    );
\RXD_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \RXD[7]_i_1_n_0\,
      Q => gmii_rxd(7),
      R => SR(0)
    );
RX_CONFIG_VALID_INT_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010001000100000"
    )
        port map (
      I0 => \^s2\,
      I1 => RX_CONFIG_VALID_INT_i_2_n_0,
      I2 => RXSYNC_STATUS,
      I3 => RXCHARISK_REG1_reg_0,
      I4 => C_REG1,
      I5 => C_HDR_REMOVED_REG,
      O => RX_CONFIG_VALID_INT0
    );
RX_CONFIG_VALID_INT_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => RXCHARISK_REG1,
      I1 => CGBAD,
      O => RX_CONFIG_VALID_INT_i_2_n_0
    );
RX_CONFIG_VALID_INT_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => RX_CONFIG_VALID_INT0,
      Q => RX_CONFIG_VALID_INT,
      R => RUDI_I_reg_0
    );
\RX_CONFIG_VALID_REG_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => RX_CONFIG_VALID_INT,
      Q => \RX_CONFIG_VALID_REG_reg_n_0_[0]\,
      R => RUDI_I_reg_0
    );
\RX_CONFIG_VALID_REG_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \RX_CONFIG_VALID_REG_reg_n_0_[0]\,
      Q => p_0_in2_in,
      R => RUDI_I_reg_0
    );
\RX_CONFIG_VALID_REG_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => p_0_in2_in,
      Q => p_1_in,
      R => RUDI_I_reg_0
    );
\RX_CONFIG_VALID_REG_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => p_1_in,
      Q => \RX_CONFIG_VALID_REG_reg_n_0_[3]\,
      R => RUDI_I_reg_0
    );
RX_DATA_ERROR_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888AAAAA88888888"
    )
        port map (
      I0 => RECEIVE,
      I1 => RX_DATA_ERROR_i_2_n_0,
      I2 => R,
      I3 => RX_DATA_ERROR_i_3_n_0,
      I4 => R_REG1,
      I5 => T_REG2,
      O => RX_DATA_ERROR0
    );
RX_DATA_ERROR_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4544"
    )
        port map (
      I0 => R_REG1,
      I1 => K28p5_REG1,
      I2 => T_REG1,
      I3 => R,
      I4 => RX_DATA_ERROR_i_4_n_0,
      O => RX_DATA_ERROR_i_2_n_0
    );
RX_DATA_ERROR_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => K28p5_REG1,
      I1 => RXEVEN0_out,
      O => RX_DATA_ERROR_i_3_n_0
    );
RX_DATA_ERROR_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => CGBAD_REG3,
      I1 => I_REG_reg_n_0,
      I2 => ILLEGAL_K_REG2,
      I3 => C_REG1,
      O => RX_DATA_ERROR_i_4_n_0
    );
RX_DATA_ERROR_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => RX_DATA_ERROR0,
      Q => RX_DATA_ERROR,
      R => SYNC_STATUS_REG0
    );
RX_DV_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAFEAAAA"
    )
        port map (
      I0 => RX_DV0,
      I1 => RXSYNC_STATUS,
      I2 => RECEIVE,
      I3 => EOP_REG1,
      I4 => \^gmii_rx_dv\,
      O => RX_DV_i_1_n_0
    );
RX_DV_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => RX_ER_reg_0,
      I1 => SR(0),
      I2 => SOP_REG3,
      I3 => RXSYNC_STATUS,
      O => RX_DV0
    );
RX_DV_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => RX_DV_i_1_n_0,
      Q => \^gmii_rx_dv\,
      R => RUDI_I_reg_0
    );
RX_ER_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000E000F000E0000"
    )
        port map (
      I0 => RX_DATA_ERROR,
      I1 => RX_ER_i_2_n_0,
      I2 => SR(0),
      I3 => RX_ER_reg_0,
      I4 => RXSYNC_STATUS,
      I5 => RECEIVE,
      O => RX_ER0
    );
RX_ER_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => FALSE_CARRIER_REG3,
      I1 => EXTEND_REG1,
      O => RX_ER_i_2_n_0
    );
RX_ER_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => RX_ER0,
      Q => gmii_rx_er,
      R => RUDI_I_reg_0
    );
RX_INVALID_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => K28p5_REG1,
      I1 => FROM_RX_CX,
      I2 => \^status_vector\(2),
      O => RX_INVALID_i_2_n_0
    );
RX_INVALID_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => RX_INVALID_i_2_n_0,
      Q => \^status_vector\(2),
      R => SYNC_STATUS_REG0
    );
R_REG1_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => R,
      Q => R_REG1,
      R => '0'
    );
R_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => R_i_2_n_0,
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(2),
      O => K23p7
    );
R_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => Q(5),
      I1 => Q(6),
      I2 => RXCHARISK_REG1_reg_0,
      I3 => Q(4),
      I4 => Q(7),
      O => R_i_2_n_0
    );
R_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => K23p7,
      Q => R,
      R => '0'
    );
SOP_REG1_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => SOP,
      Q => SOP_REG1,
      R => '0'
    );
SOP_REG2_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => SOP_REG1,
      Q => SOP_REG2,
      R => '0'
    );
SOP_REG3_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => SOP_REG2,
      Q => SOP_REG3,
      R => '0'
    );
SOP_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00E00000"
    )
        port map (
      I0 => EXTEND,
      I1 => I_REG_reg_n_0,
      I2 => S,
      I3 => WAIT_FOR_K,
      I4 => RXSYNC_STATUS,
      O => SOP0
    );
SOP_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => SOP0,
      Q => SOP,
      R => RUDI_I_reg_0
    );
SYNC_STATUS_REG_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => '1',
      Q => SYNC_STATUS_REG,
      R => SYNC_STATUS_REG0
    );
S_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => R_i_2_n_0,
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(3),
      I4 => Q(2),
      I5 => \^s2\,
      O => S0
    );
S_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => S0,
      Q => S,
      R => '0'
    );
T_REG1_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => T,
      Q => T_REG1,
      R => '0'
    );
T_REG2_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => T_REG1,
      Q => T_REG2,
      R => '0'
    );
\T_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => R_i_2_n_0,
      I1 => Q(2),
      I2 => Q(3),
      I3 => Q(1),
      I4 => Q(0),
      O => K29p7
    );
T_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => K29p7,
      Q => T,
      R => '0'
    );
WAIT_FOR_K_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F0F"
    )
        port map (
      I0 => RXEVEN0_out,
      I1 => K28p5_REG1,
      I2 => SYNC_STATUS_REG,
      I3 => WAIT_FOR_K,
      O => WAIT_FOR_K_i_1_n_0
    );
WAIT_FOR_K_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => WAIT_FOR_K_i_1_n_0,
      Q => WAIT_FOR_K,
      R => SYNC_STATUS_REG0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_SYNCHRONISE is
  port (
    RXEVEN0_out : out STD_LOGIC;
    RXSYNC_STATUS : out STD_LOGIC;
    enablealign : out STD_LOGIC;
    SYNC_STATUS_REG0 : out STD_LOGIC;
    I0 : out STD_LOGIC;
    STATUS_VECTOR_0_PRE0 : out STD_LOGIC;
    SIGNAL_DETECT_MOD : in STD_LOGIC;
    userclk2 : in STD_LOGIC;
    EVEN_reg_0 : in STD_LOGIC;
    \FSM_onehot_STATE_reg[1]_0\ : in STD_LOGIC;
    CONFIGURATION_VECTOR_REG : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_STATE_reg[2]_0\ : in STD_LOGIC;
    S2 : in STD_LOGIC;
    RXNOTINTABLE_INT : in STD_LOGIC;
    D : in STD_LOGIC;
    \FSM_onehot_STATE_reg[0]_0\ : in STD_LOGIC;
    I_reg : in STD_LOGIC;
    I_reg_0 : in STD_LOGIC;
    reset_done : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_SYNCHRONISE : entity is "SYNCHRONISE";
end gig_ethernet_pcs_pma_0_SYNCHRONISE;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_SYNCHRONISE is
  signal ENCOMMAALIGN_i_1_n_0 : STD_LOGIC;
  signal ENCOMMAALIGN_i_2_n_0 : STD_LOGIC;
  signal EVEN_i_1_n_0 : STD_LOGIC;
  signal \FSM_onehot_STATE[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE[10]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE[11]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE[12]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE[12]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE[12]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE[7]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE[8]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE[9]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[10]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[11]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[12]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[8]\ : STD_LOGIC;
  signal \FSM_onehot_STATE_reg_n_0_[9]\ : STD_LOGIC;
  signal GOOD_CGS : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \GOOD_CGS[0]_i_1_n_0\ : STD_LOGIC;
  signal \GOOD_CGS[1]_i_1_n_0\ : STD_LOGIC;
  signal \GOOD_CGS[1]_i_2_n_0\ : STD_LOGIC;
  signal \^rxeven0_out\ : STD_LOGIC;
  signal \^rxsync_status\ : STD_LOGIC;
  signal SIGNAL_DETECT_REG : STD_LOGIC;
  signal SYNC_STATUS0 : STD_LOGIC;
  signal SYNC_STATUS_i_1_n_0 : STD_LOGIC;
  signal \^enablealign\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of EVEN_i_1 : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \FSM_onehot_STATE[12]_i_3\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \FSM_onehot_STATE[5]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \FSM_onehot_STATE[7]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \FSM_onehot_STATE[8]_i_1\ : label is "soft_lutpair38";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[0]\ : label is "comma_detect_2:0000000000001,aquire_sync_2:0000000000010,aquire_sync_1:0000000010000,sync_acquired_4:0000010000000,sync_acquired_4a:0000000100000,sync_acquired_3a:0000100000000,comma_detect_1:0010000000000,loss_of_sync:0000000000100,sync_acquired_2:0001000000000,sync_acquired_3:0000001000000,sync_acquired_2a:0100000000000,sync_acquired_1:1000000000000,comma_detect_3:0000000001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[10]\ : label is "comma_detect_2:0000000000001,aquire_sync_2:0000000000010,aquire_sync_1:0000000010000,sync_acquired_4:0000010000000,sync_acquired_4a:0000000100000,sync_acquired_3a:0000100000000,comma_detect_1:0010000000000,loss_of_sync:0000000000100,sync_acquired_2:0001000000000,sync_acquired_3:0000001000000,sync_acquired_2a:0100000000000,sync_acquired_1:1000000000000,comma_detect_3:0000000001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[11]\ : label is "comma_detect_2:0000000000001,aquire_sync_2:0000000000010,aquire_sync_1:0000000010000,sync_acquired_4:0000010000000,sync_acquired_4a:0000000100000,sync_acquired_3a:0000100000000,comma_detect_1:0010000000000,loss_of_sync:0000000000100,sync_acquired_2:0001000000000,sync_acquired_3:0000001000000,sync_acquired_2a:0100000000000,sync_acquired_1:1000000000000,comma_detect_3:0000000001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[12]\ : label is "comma_detect_2:0000000000001,aquire_sync_2:0000000000010,aquire_sync_1:0000000010000,sync_acquired_4:0000010000000,sync_acquired_4a:0000000100000,sync_acquired_3a:0000100000000,comma_detect_1:0010000000000,loss_of_sync:0000000000100,sync_acquired_2:0001000000000,sync_acquired_3:0000001000000,sync_acquired_2a:0100000000000,sync_acquired_1:1000000000000,comma_detect_3:0000000001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[1]\ : label is "comma_detect_2:0000000000001,aquire_sync_2:0000000000010,aquire_sync_1:0000000010000,sync_acquired_4:0000010000000,sync_acquired_4a:0000000100000,sync_acquired_3a:0000100000000,comma_detect_1:0010000000000,loss_of_sync:0000000000100,sync_acquired_2:0001000000000,sync_acquired_3:0000001000000,sync_acquired_2a:0100000000000,sync_acquired_1:1000000000000,comma_detect_3:0000000001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[2]\ : label is "comma_detect_2:0000000000001,aquire_sync_2:0000000000010,aquire_sync_1:0000000010000,sync_acquired_4:0000010000000,sync_acquired_4a:0000000100000,sync_acquired_3a:0000100000000,comma_detect_1:0010000000000,loss_of_sync:0000000000100,sync_acquired_2:0001000000000,sync_acquired_3:0000001000000,sync_acquired_2a:0100000000000,sync_acquired_1:1000000000000,comma_detect_3:0000000001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[3]\ : label is "comma_detect_2:0000000000001,aquire_sync_2:0000000000010,aquire_sync_1:0000000010000,sync_acquired_4:0000010000000,sync_acquired_4a:0000000100000,sync_acquired_3a:0000100000000,comma_detect_1:0010000000000,loss_of_sync:0000000000100,sync_acquired_2:0001000000000,sync_acquired_3:0000001000000,sync_acquired_2a:0100000000000,sync_acquired_1:1000000000000,comma_detect_3:0000000001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[4]\ : label is "comma_detect_2:0000000000001,aquire_sync_2:0000000000010,aquire_sync_1:0000000010000,sync_acquired_4:0000010000000,sync_acquired_4a:0000000100000,sync_acquired_3a:0000100000000,comma_detect_1:0010000000000,loss_of_sync:0000000000100,sync_acquired_2:0001000000000,sync_acquired_3:0000001000000,sync_acquired_2a:0100000000000,sync_acquired_1:1000000000000,comma_detect_3:0000000001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[5]\ : label is "comma_detect_2:0000000000001,aquire_sync_2:0000000000010,aquire_sync_1:0000000010000,sync_acquired_4:0000010000000,sync_acquired_4a:0000000100000,sync_acquired_3a:0000100000000,comma_detect_1:0010000000000,loss_of_sync:0000000000100,sync_acquired_2:0001000000000,sync_acquired_3:0000001000000,sync_acquired_2a:0100000000000,sync_acquired_1:1000000000000,comma_detect_3:0000000001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[6]\ : label is "comma_detect_2:0000000000001,aquire_sync_2:0000000000010,aquire_sync_1:0000000010000,sync_acquired_4:0000010000000,sync_acquired_4a:0000000100000,sync_acquired_3a:0000100000000,comma_detect_1:0010000000000,loss_of_sync:0000000000100,sync_acquired_2:0001000000000,sync_acquired_3:0000001000000,sync_acquired_2a:0100000000000,sync_acquired_1:1000000000000,comma_detect_3:0000000001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[7]\ : label is "comma_detect_2:0000000000001,aquire_sync_2:0000000000010,aquire_sync_1:0000000010000,sync_acquired_4:0000010000000,sync_acquired_4a:0000000100000,sync_acquired_3a:0000100000000,comma_detect_1:0010000000000,loss_of_sync:0000000000100,sync_acquired_2:0001000000000,sync_acquired_3:0000001000000,sync_acquired_2a:0100000000000,sync_acquired_1:1000000000000,comma_detect_3:0000000001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[8]\ : label is "comma_detect_2:0000000000001,aquire_sync_2:0000000000010,aquire_sync_1:0000000010000,sync_acquired_4:0000010000000,sync_acquired_4a:0000000100000,sync_acquired_3a:0000100000000,comma_detect_1:0010000000000,loss_of_sync:0000000000100,sync_acquired_2:0001000000000,sync_acquired_3:0000001000000,sync_acquired_2a:0100000000000,sync_acquired_1:1000000000000,comma_detect_3:0000000001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_STATE_reg[9]\ : label is "comma_detect_2:0000000000001,aquire_sync_2:0000000000010,aquire_sync_1:0000000010000,sync_acquired_4:0000010000000,sync_acquired_4a:0000000100000,sync_acquired_3a:0000100000000,comma_detect_1:0010000000000,loss_of_sync:0000000000100,sync_acquired_2:0001000000000,sync_acquired_3:0000001000000,sync_acquired_2a:0100000000000,sync_acquired_1:1000000000000,comma_detect_3:0000000001000";
  attribute SOFT_HLUTNM of \GOOD_CGS[1]_i_2\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of RX_INVALID_i_1 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of STATUS_VECTOR_0_PRE_i_1 : label is "soft_lutpair41";
begin
  RXEVEN0_out <= \^rxeven0_out\;
  RXSYNC_STATUS <= \^rxsync_status\;
  enablealign <= \^enablealign\;
ENCOMMAALIGN_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFEEEEE"
    )
        port map (
      I0 => \^enablealign\,
      I1 => \FSM_onehot_STATE_reg_n_0_[2]\,
      I2 => p_1_in,
      I3 => \FSM_onehot_STATE_reg_n_0_[5]\,
      I4 => ENCOMMAALIGN_i_2_n_0,
      I5 => SYNC_STATUS0,
      O => ENCOMMAALIGN_i_1_n_0
    );
ENCOMMAALIGN_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFC"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg[1]_0\,
      I1 => RXNOTINTABLE_INT,
      I2 => D,
      I3 => \FSM_onehot_STATE_reg[0]_0\,
      I4 => \^rxeven0_out\,
      O => ENCOMMAALIGN_i_2_n_0
    );
ENCOMMAALIGN_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => p_0_in,
      I1 => ENCOMMAALIGN_i_2_n_0,
      I2 => \FSM_onehot_STATE_reg[2]_0\,
      O => SYNC_STATUS0
    );
ENCOMMAALIGN_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => ENCOMMAALIGN_i_1_n_0,
      Q => \^enablealign\,
      R => '0'
    );
EVEN_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \^rxsync_status\,
      I1 => \FSM_onehot_STATE_reg[1]_0\,
      I2 => \^rxeven0_out\,
      O => EVEN_i_1_n_0
    );
EVEN_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => EVEN_i_1_n_0,
      Q => \^rxeven0_out\,
      R => EVEN_reg_0
    );
\FSM_onehot_STATE[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[4]\,
      I1 => \^rxeven0_out\,
      I2 => \FSM_onehot_STATE_reg[0]_0\,
      I3 => D,
      I4 => RXNOTINTABLE_INT,
      I5 => \FSM_onehot_STATE_reg[1]_0\,
      O => \FSM_onehot_STATE[0]_i_1_n_0\
    );
\FSM_onehot_STATE[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg[1]_0\,
      I1 => \FSM_onehot_STATE_reg_n_0_[2]\,
      O => \FSM_onehot_STATE[10]_i_1_n_0\
    );
\FSM_onehot_STATE[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"54554444"
    )
        port map (
      I0 => ENCOMMAALIGN_i_2_n_0,
      I1 => \FSM_onehot_STATE_reg_n_0_[9]\,
      I2 => GOOD_CGS(0),
      I3 => GOOD_CGS(1),
      I4 => \FSM_onehot_STATE_reg_n_0_[11]\,
      O => \FSM_onehot_STATE[11]_i_1_n_0\
    );
\FSM_onehot_STATE[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => EVEN_reg_0,
      I1 => SIGNAL_DETECT_REG,
      I2 => CONFIGURATION_VECTOR_REG(0),
      O => \FSM_onehot_STATE[12]_i_1_n_0\
    );
\FSM_onehot_STATE[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFF4F4F4"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg[2]_0\,
      I1 => p_0_in,
      I2 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I3 => \FSM_onehot_STATE[12]_i_3_n_0\,
      I4 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I5 => ENCOMMAALIGN_i_2_n_0,
      O => \FSM_onehot_STATE[12]_i_2_n_0\
    );
\FSM_onehot_STATE[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => GOOD_CGS(1),
      I1 => GOOD_CGS(0),
      O => \FSM_onehot_STATE[12]_i_3_n_0\
    );
\FSM_onehot_STATE[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000300BB000000AA"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[1]\,
      I1 => \FSM_onehot_STATE_reg[2]_0\,
      I2 => \^rxeven0_out\,
      I3 => S2,
      I4 => \FSM_onehot_STATE_reg[1]_0\,
      I5 => \FSM_onehot_STATE_reg_n_0_[0]\,
      O => \FSM_onehot_STATE[1]_i_1_n_0\
    );
\FSM_onehot_STATE[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFEFE00"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[10]\,
      I1 => \FSM_onehot_STATE_reg_n_0_[0]\,
      I2 => p_0_in,
      I3 => \FSM_onehot_STATE_reg[2]_0\,
      I4 => ENCOMMAALIGN_i_2_n_0,
      I5 => \FSM_onehot_STATE[2]_i_2_n_0\,
      O => \FSM_onehot_STATE[2]_i_1_n_0\
    );
\FSM_onehot_STATE[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF4F44444444"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg[1]_0\,
      I1 => \FSM_onehot_STATE_reg_n_0_[2]\,
      I2 => \FSM_onehot_STATE[2]_i_3_n_0\,
      I3 => \FSM_onehot_STATE_reg_n_0_[1]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[4]\,
      I5 => ENCOMMAALIGN_i_2_n_0,
      O => \FSM_onehot_STATE[2]_i_2_n_0\
    );
\FSM_onehot_STATE[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_1_in,
      I1 => \FSM_onehot_STATE_reg_n_0_[5]\,
      O => \FSM_onehot_STATE[2]_i_3_n_0\
    );
\FSM_onehot_STATE[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[1]\,
      I1 => \^rxeven0_out\,
      I2 => \FSM_onehot_STATE_reg[0]_0\,
      I3 => D,
      I4 => RXNOTINTABLE_INT,
      I5 => \FSM_onehot_STATE_reg[1]_0\,
      O => \FSM_onehot_STATE[3]_i_1_n_0\
    );
\FSM_onehot_STATE[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000010FF00001050"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg[2]_0\,
      I1 => \^rxeven0_out\,
      I2 => \FSM_onehot_STATE_reg_n_0_[10]\,
      I3 => \FSM_onehot_STATE_reg[1]_0\,
      I4 => S2,
      I5 => \FSM_onehot_STATE_reg_n_0_[4]\,
      O => \FSM_onehot_STATE[4]_i_1_n_0\
    );
\FSM_onehot_STATE[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"54554444"
    )
        port map (
      I0 => ENCOMMAALIGN_i_2_n_0,
      I1 => p_1_in,
      I2 => GOOD_CGS(0),
      I3 => GOOD_CGS(1),
      I4 => \FSM_onehot_STATE_reg_n_0_[5]\,
      O => \FSM_onehot_STATE[5]_i_1_n_0\
    );
\FSM_onehot_STATE[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF0040404040"
    )
        port map (
      I0 => GOOD_CGS(0),
      I1 => GOOD_CGS(1),
      I2 => \FSM_onehot_STATE_reg_n_0_[5]\,
      I3 => \FSM_onehot_STATE_reg_n_0_[9]\,
      I4 => \FSM_onehot_STATE_reg_n_0_[11]\,
      I5 => ENCOMMAALIGN_i_2_n_0,
      O => \FSM_onehot_STATE[6]_i_1_n_0\
    );
\FSM_onehot_STATE[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => ENCOMMAALIGN_i_2_n_0,
      I1 => \FSM_onehot_STATE_reg_n_0_[8]\,
      I2 => \FSM_onehot_STATE_reg_n_0_[6]\,
      O => \FSM_onehot_STATE[7]_i_1_n_0\
    );
\FSM_onehot_STATE[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"54554444"
    )
        port map (
      I0 => ENCOMMAALIGN_i_2_n_0,
      I1 => \FSM_onehot_STATE_reg_n_0_[6]\,
      I2 => GOOD_CGS(0),
      I3 => GOOD_CGS(1),
      I4 => \FSM_onehot_STATE_reg_n_0_[8]\,
      O => \FSM_onehot_STATE[8]_i_1_n_0\
    );
\FSM_onehot_STATE[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8B888888"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[12]\,
      I1 => ENCOMMAALIGN_i_2_n_0,
      I2 => GOOD_CGS(0),
      I3 => GOOD_CGS(1),
      I4 => \FSM_onehot_STATE_reg_n_0_[8]\,
      O => \FSM_onehot_STATE[9]_i_1_n_0\
    );
\FSM_onehot_STATE_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_STATE[0]_i_1_n_0\,
      Q => \FSM_onehot_STATE_reg_n_0_[0]\,
      R => \FSM_onehot_STATE[12]_i_1_n_0\
    );
\FSM_onehot_STATE_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_STATE[10]_i_1_n_0\,
      Q => \FSM_onehot_STATE_reg_n_0_[10]\,
      R => \FSM_onehot_STATE[12]_i_1_n_0\
    );
\FSM_onehot_STATE_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_STATE[11]_i_1_n_0\,
      Q => \FSM_onehot_STATE_reg_n_0_[11]\,
      R => \FSM_onehot_STATE[12]_i_1_n_0\
    );
\FSM_onehot_STATE_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_STATE[12]_i_2_n_0\,
      Q => \FSM_onehot_STATE_reg_n_0_[12]\,
      R => \FSM_onehot_STATE[12]_i_1_n_0\
    );
\FSM_onehot_STATE_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_STATE[1]_i_1_n_0\,
      Q => \FSM_onehot_STATE_reg_n_0_[1]\,
      R => \FSM_onehot_STATE[12]_i_1_n_0\
    );
\FSM_onehot_STATE_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_STATE[2]_i_1_n_0\,
      Q => \FSM_onehot_STATE_reg_n_0_[2]\,
      S => \FSM_onehot_STATE[12]_i_1_n_0\
    );
\FSM_onehot_STATE_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_STATE[3]_i_1_n_0\,
      Q => p_0_in,
      R => \FSM_onehot_STATE[12]_i_1_n_0\
    );
\FSM_onehot_STATE_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_STATE[4]_i_1_n_0\,
      Q => \FSM_onehot_STATE_reg_n_0_[4]\,
      R => \FSM_onehot_STATE[12]_i_1_n_0\
    );
\FSM_onehot_STATE_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_STATE[5]_i_1_n_0\,
      Q => \FSM_onehot_STATE_reg_n_0_[5]\,
      R => \FSM_onehot_STATE[12]_i_1_n_0\
    );
\FSM_onehot_STATE_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_STATE[6]_i_1_n_0\,
      Q => \FSM_onehot_STATE_reg_n_0_[6]\,
      R => \FSM_onehot_STATE[12]_i_1_n_0\
    );
\FSM_onehot_STATE_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_STATE[7]_i_1_n_0\,
      Q => p_1_in,
      R => \FSM_onehot_STATE[12]_i_1_n_0\
    );
\FSM_onehot_STATE_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_STATE[8]_i_1_n_0\,
      Q => \FSM_onehot_STATE_reg_n_0_[8]\,
      R => \FSM_onehot_STATE[12]_i_1_n_0\
    );
\FSM_onehot_STATE_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_STATE[9]_i_1_n_0\,
      Q => \FSM_onehot_STATE_reg_n_0_[9]\,
      R => \FSM_onehot_STATE[12]_i_1_n_0\
    );
\GOOD_CGS[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000009"
    )
        port map (
      I0 => GOOD_CGS(0),
      I1 => ENCOMMAALIGN_i_2_n_0,
      I2 => p_1_in,
      I3 => \FSM_onehot_STATE_reg_n_0_[9]\,
      I4 => EVEN_reg_0,
      I5 => \FSM_onehot_STATE_reg_n_0_[6]\,
      O => \GOOD_CGS[0]_i_1_n_0\
    );
\GOOD_CGS[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"009A"
    )
        port map (
      I0 => GOOD_CGS(1),
      I1 => ENCOMMAALIGN_i_2_n_0,
      I2 => GOOD_CGS(0),
      I3 => \GOOD_CGS[1]_i_2_n_0\,
      O => \GOOD_CGS[1]_i_1_n_0\
    );
\GOOD_CGS[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_STATE_reg_n_0_[6]\,
      I1 => EVEN_reg_0,
      I2 => \FSM_onehot_STATE_reg_n_0_[9]\,
      I3 => p_1_in,
      O => \GOOD_CGS[1]_i_2_n_0\
    );
\GOOD_CGS_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \GOOD_CGS[0]_i_1_n_0\,
      Q => GOOD_CGS(0),
      R => '0'
    );
\GOOD_CGS_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \GOOD_CGS[1]_i_1_n_0\,
      Q => GOOD_CGS(1),
      R => '0'
    );
I_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20220000"
    )
        port map (
      I0 => I_reg,
      I1 => I_reg_0,
      I2 => \^rxsync_status\,
      I3 => \FSM_onehot_STATE_reg[2]_0\,
      I4 => \^rxeven0_out\,
      O => I0
    );
RX_INVALID_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => EVEN_reg_0,
      I1 => \^rxsync_status\,
      O => SYNC_STATUS_REG0
    );
SIGNAL_DETECT_REG_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => SIGNAL_DETECT_MOD,
      Q => SIGNAL_DETECT_REG,
      R => '0'
    );
STATUS_VECTOR_0_PRE_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^rxsync_status\,
      I1 => reset_done,
      O => STATUS_VECTOR_0_PRE0
    );
SYNC_STATUS_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000222A"
    )
        port map (
      I0 => \^rxsync_status\,
      I1 => ENCOMMAALIGN_i_2_n_0,
      I2 => \FSM_onehot_STATE_reg_n_0_[5]\,
      I3 => p_1_in,
      I4 => \FSM_onehot_STATE_reg_n_0_[2]\,
      I5 => SYNC_STATUS0,
      O => SYNC_STATUS_i_1_n_0
    );
SYNC_STATUS_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => SYNC_STATUS_i_1_n_0,
      Q => \^rxsync_status\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_TX is
  port (
    \USE_ROCKET_IO.MGT_TX_RESET_INT_reg\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \CODE_GRP_CNT_reg[0]_0\ : out STD_LOGIC;
    \CODE_GRP_CNT_reg[0]_1\ : out STD_LOGIC;
    \NO_QSGMII_DATA.TXCHARISK_reg_0\ : out STD_LOGIC;
    \NO_QSGMII_DATA.TXCHARISK_reg_1\ : out STD_LOGIC;
    \NO_QSGMII_DATA.TXDATA_reg[2]_0\ : out STD_LOGIC;
    \NO_QSGMII_DATA.TXDATA_reg[3]_0\ : out STD_LOGIC;
    \NO_QSGMII_DATA.TXDATA_reg[5]_0\ : out STD_LOGIC;
    \NO_QSGMII_DATA.TXDATA_reg[7]_0\ : out STD_LOGIC;
    \NO_QSGMII_CHAR.TXCHARDISPVAL_reg_0\ : out STD_LOGIC;
    \NO_QSGMII_DATA.TXDATA_reg[7]_1\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_tx_en : in STD_LOGIC;
    userclk2 : in STD_LOGIC;
    \NO_QSGMII_DATA.TXDATA_reg[4]_0\ : in STD_LOGIC;
    gmii_tx_er : in STD_LOGIC;
    CONFIGURATION_VECTOR_REG : in STD_LOGIC_VECTOR ( 0 to 0 );
    gmii_txd : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcharisk : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxchariscomma : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdata : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_TX : entity is "TX";
end gig_ethernet_pcs_pma_0_TX;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_TX is
  signal C1_OR_C2_i_1_n_0 : STD_LOGIC;
  signal C1_OR_C2_reg_n_0 : STD_LOGIC;
  signal CODE_GRPISK : STD_LOGIC;
  signal CODE_GRPISK_i_1_n_0 : STD_LOGIC;
  signal CODE_GRPISK_i_2_n_0 : STD_LOGIC;
  signal \CODE_GRP[0]_i_1_n_0\ : STD_LOGIC;
  signal \CODE_GRP[0]_i_2_n_0\ : STD_LOGIC;
  signal \CODE_GRP[1]_i_1_n_0\ : STD_LOGIC;
  signal \CODE_GRP[1]_i_2_n_0\ : STD_LOGIC;
  signal \CODE_GRP[1]_i_3_n_0\ : STD_LOGIC;
  signal \CODE_GRP[2]_i_1_n_0\ : STD_LOGIC;
  signal \CODE_GRP[2]_i_2_n_0\ : STD_LOGIC;
  signal \CODE_GRP[3]_i_1_n_0\ : STD_LOGIC;
  signal \CODE_GRP[3]_i_2_n_0\ : STD_LOGIC;
  signal \CODE_GRP[4]_i_1_n_0\ : STD_LOGIC;
  signal \CODE_GRP[5]_i_1_n_0\ : STD_LOGIC;
  signal \CODE_GRP[6]_i_1_n_0\ : STD_LOGIC;
  signal \CODE_GRP[6]_i_2_n_0\ : STD_LOGIC;
  signal \CODE_GRP[6]_i_3_n_0\ : STD_LOGIC;
  signal \CODE_GRP[7]_i_1_n_0\ : STD_LOGIC;
  signal \CODE_GRP[7]_i_2_n_0\ : STD_LOGIC;
  signal \CODE_GRP_CNT_reg_n_0_[1]\ : STD_LOGIC;
  signal \CODE_GRP_reg_n_0_[0]\ : STD_LOGIC;
  signal CONFIG_DATA : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \CONFIG_DATA_reg_n_0_[0]\ : STD_LOGIC;
  signal \CONFIG_DATA_reg_n_0_[3]\ : STD_LOGIC;
  signal \CONFIG_DATA_reg_n_0_[4]\ : STD_LOGIC;
  signal \CONFIG_DATA_reg_n_0_[6]\ : STD_LOGIC;
  signal DISPARITY : STD_LOGIC;
  signal INSERT_IDLE : STD_LOGIC;
  signal INSERT_IDLE_i_1_n_0 : STD_LOGIC;
  signal INSERT_IDLE_reg_n_0 : STD_LOGIC;
  signal K28p5 : STD_LOGIC;
  signal K28p5_i_1_n_0 : STD_LOGIC;
  signal \NO_QSGMII_CHAR.TXCHARDISPVAL_i_1_n_0\ : STD_LOGIC;
  signal \NO_QSGMII_DATA.TXDATA[0]_i_1_n_0\ : STD_LOGIC;
  signal \NO_QSGMII_DATA.TXDATA[2]_i_1_n_0\ : STD_LOGIC;
  signal \NO_QSGMII_DATA.TXDATA[4]_i_1_n_0\ : STD_LOGIC;
  signal \NO_QSGMII_DATA.TXDATA[5]_i_1_n_0\ : STD_LOGIC;
  signal \NO_QSGMII_DATA.TXDATA[6]_i_1_n_0\ : STD_LOGIC;
  signal \NO_QSGMII_DATA.TXDATA[7]_i_1_n_0\ : STD_LOGIC;
  signal \NO_QSGMII_DISP.DISPARITY_i_1_n_0\ : STD_LOGIC;
  signal \NO_QSGMII_DISP.DISPARITY_i_2_n_0\ : STD_LOGIC;
  signal \NO_QSGMII_DISP.DISPARITY_i_3_n_0\ : STD_LOGIC;
  signal R : STD_LOGIC;
  signal \R_i_1__0_n_0\ : STD_LOGIC;
  signal S : STD_LOGIC;
  signal S0 : STD_LOGIC;
  signal SYNC_DISPARITY_i_1_n_0 : STD_LOGIC;
  signal SYNC_DISPARITY_reg_n_0 : STD_LOGIC;
  signal T : STD_LOGIC;
  signal T0 : STD_LOGIC;
  signal TRIGGER_S : STD_LOGIC;
  signal TRIGGER_S0 : STD_LOGIC;
  signal TRIGGER_T : STD_LOGIC;
  signal TXCHARDISPMODE_INT : STD_LOGIC;
  signal TXCHARDISPVAL : STD_LOGIC;
  signal TXCHARISK_INT : STD_LOGIC;
  signal TXDATA : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TXD_REG1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TX_EN_REG1 : STD_LOGIC;
  signal TX_ER_REG1 : STD_LOGIC;
  signal TX_EVEN : STD_LOGIC;
  signal TX_PACKET : STD_LOGIC;
  signal TX_PACKET_REG1 : STD_LOGIC;
  signal TX_PACKET_i_1_n_0 : STD_LOGIC;
  signal V : STD_LOGIC;
  signal V_i_1_n_0 : STD_LOGIC;
  signal V_i_2_n_0 : STD_LOGIC;
  signal V_i_3_n_0 : STD_LOGIC;
  signal V_i_4_n_0 : STD_LOGIC;
  signal V_i_5_n_0 : STD_LOGIC;
  signal V_i_6_n_0 : STD_LOGIC;
  signal XMIT_CONFIG_INT : STD_LOGIC;
  signal XMIT_CONFIG_INT_i_1_n_0 : STD_LOGIC;
  signal XMIT_DATA_INT_i_1_n_0 : STD_LOGIC;
  signal XMIT_DATA_INT_reg_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in16_in : STD_LOGIC;
  signal p_0_in35_in : STD_LOGIC;
  signal p_10_out : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_1_in1_in : STD_LOGIC;
  signal p_1_in34_in : STD_LOGIC;
  signal p_33_in : STD_LOGIC;
  signal p_45_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of C1_OR_C2_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of CODE_GRPISK_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \CODE_GRP[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \CODE_GRP[0]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \CODE_GRP[1]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \CODE_GRP[1]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \CODE_GRP[2]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \CODE_GRP[6]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \CODE_GRP[6]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \CODE_GRP[7]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \CODE_GRP_CNT[0]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \CODE_GRP_CNT[1]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \CONFIG_DATA[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \CONFIG_DATA[3]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \CONFIG_DATA[4]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \CONFIG_DATA[6]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of INSERT_IDLE_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \NO_QSGMII_CHAR.TXCHARDISPMODE_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \NO_QSGMII_CHAR.TXCHARDISPVAL_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \NO_QSGMII_DATA.TXDATA[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \NO_QSGMII_DATA.TXDATA[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of SYNC_DISPARITY_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of TRIGGER_S_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of TRIGGER_T_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of TX_PACKET_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXCHARISCOMMA_INT_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXCHARISK_INT_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT[1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT[3]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT[4]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT[5]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT[6]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT[7]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.TXCHARDISPMODE_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.TXCHARDISPVAL_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.TXCHARISK_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.TXDATA[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.TXDATA[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.TXDATA[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.TXDATA[3]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.TXDATA[4]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.TXDATA[5]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.TXDATA[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.TXDATA[7]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.TXDATA[7]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of V_i_5 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of V_i_6 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of XMIT_CONFIG_INT_i_1 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of XMIT_DATA_INT_i_1 : label is "soft_lutpair23";
begin
C1_OR_C2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3F80"
    )
        port map (
      I0 => XMIT_CONFIG_INT,
      I1 => TX_EVEN,
      I2 => \CODE_GRP_CNT_reg_n_0_[1]\,
      I3 => C1_OR_C2_reg_n_0,
      O => C1_OR_C2_i_1_n_0
    );
C1_OR_C2_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => C1_OR_C2_i_1_n_0,
      Q => C1_OR_C2_reg_n_0,
      R => \NO_QSGMII_DATA.TXDATA_reg[4]_0\
    );
CODE_GRPISK_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => TX_EVEN,
      I1 => \CODE_GRP_CNT_reg_n_0_[1]\,
      I2 => XMIT_CONFIG_INT,
      I3 => CODE_GRPISK_i_2_n_0,
      O => CODE_GRPISK_i_1_n_0
    );
CODE_GRPISK_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => V,
      I1 => R,
      I2 => T,
      I3 => S,
      I4 => TX_PACKET,
      I5 => SR(0),
      O => CODE_GRPISK_i_2_n_0
    );
CODE_GRPISK_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => CODE_GRPISK_i_1_n_0,
      Q => CODE_GRPISK,
      R => '0'
    );
\CODE_GRP[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAFFAA03"
    )
        port map (
      I0 => \CONFIG_DATA_reg_n_0_[0]\,
      I1 => \CODE_GRP[0]_i_2_n_0\,
      I2 => V,
      I3 => XMIT_CONFIG_INT,
      I4 => S,
      O => \CODE_GRP[0]_i_1_n_0\
    );
\CODE_GRP[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0007"
    )
        port map (
      I0 => TXD_REG1(0),
      I1 => TX_PACKET,
      I2 => R,
      I3 => T,
      O => \CODE_GRP[0]_i_2_n_0\
    );
\CODE_GRP[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00005555FFC05555"
    )
        port map (
      I0 => \CODE_GRP[1]_i_2_n_0\,
      I1 => TXD_REG1(1),
      I2 => TX_PACKET,
      I3 => R,
      I4 => \CODE_GRP[1]_i_3_n_0\,
      I5 => T,
      O => \CODE_GRP[1]_i_1_n_0\
    );
\CODE_GRP[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => XMIT_CONFIG_INT,
      I1 => \CONFIG_DATA_reg_n_0_[6]\,
      O => \CODE_GRP[1]_i_2_n_0\
    );
\CODE_GRP[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => V,
      I1 => XMIT_CONFIG_INT,
      I2 => S,
      O => \CODE_GRP[1]_i_3_n_0\
    );
\CODE_GRP[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA0000FFCF"
    )
        port map (
      I0 => \CONFIG_DATA_reg_n_0_[4]\,
      I1 => \CODE_GRP[2]_i_2_n_0\,
      I2 => TX_PACKET,
      I3 => TXD_REG1(2),
      I4 => S,
      I5 => XMIT_CONFIG_INT,
      O => \CODE_GRP[2]_i_1_n_0\
    );
\CODE_GRP[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => V,
      I1 => R,
      I2 => T,
      O => \CODE_GRP[2]_i_2_n_0\
    );
\CODE_GRP[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFD0"
    )
        port map (
      I0 => TX_PACKET,
      I1 => TXD_REG1(3),
      I2 => \CODE_GRP[6]_i_3_n_0\,
      I3 => \CODE_GRP[3]_i_2_n_0\,
      O => \CODE_GRP[3]_i_1_n_0\
    );
\CODE_GRP[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAAFFAAFFAAFC"
    )
        port map (
      I0 => \CONFIG_DATA_reg_n_0_[3]\,
      I1 => SR(0),
      I2 => S,
      I3 => XMIT_CONFIG_INT,
      I4 => V,
      I5 => T,
      O => \CODE_GRP[3]_i_2_n_0\
    );
\CODE_GRP[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF808080"
    )
        port map (
      I0 => \CODE_GRP[6]_i_3_n_0\,
      I1 => TXD_REG1(4),
      I2 => TX_PACKET,
      I3 => XMIT_CONFIG_INT,
      I4 => \CONFIG_DATA_reg_n_0_[4]\,
      I5 => \CODE_GRP[7]_i_2_n_0\,
      O => \CODE_GRP[4]_i_1_n_0\
    );
\CODE_GRP[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF808080"
    )
        port map (
      I0 => \CODE_GRP[6]_i_3_n_0\,
      I1 => TXD_REG1(5),
      I2 => TX_PACKET,
      I3 => XMIT_CONFIG_INT,
      I4 => \CONFIG_DATA_reg_n_0_[4]\,
      I5 => \CODE_GRP[7]_i_2_n_0\,
      O => \CODE_GRP[5]_i_1_n_0\
    );
\CODE_GRP[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => SR(0),
      I1 => XMIT_CONFIG_INT,
      O => \CODE_GRP[6]_i_1_n_0\
    );
\CODE_GRP[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B000BBBB"
    )
        port map (
      I0 => \CONFIG_DATA_reg_n_0_[6]\,
      I1 => XMIT_CONFIG_INT,
      I2 => TX_PACKET,
      I3 => TXD_REG1(6),
      I4 => \CODE_GRP[6]_i_3_n_0\,
      O => \CODE_GRP[6]_i_2_n_0\
    );
\CODE_GRP[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => XMIT_CONFIG_INT,
      I1 => S,
      I2 => T,
      I3 => R,
      I4 => V,
      O => \CODE_GRP[6]_i_3_n_0\
    );
\CODE_GRP[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF808080"
    )
        port map (
      I0 => \CODE_GRP[6]_i_3_n_0\,
      I1 => TXD_REG1(7),
      I2 => TX_PACKET,
      I3 => XMIT_CONFIG_INT,
      I4 => \CONFIG_DATA_reg_n_0_[4]\,
      I5 => \CODE_GRP[7]_i_2_n_0\,
      O => \CODE_GRP[7]_i_1_n_0\
    );
\CODE_GRP[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFB"
    )
        port map (
      I0 => SR(0),
      I1 => TX_PACKET,
      I2 => S,
      I3 => \CODE_GRP[2]_i_2_n_0\,
      I4 => XMIT_CONFIG_INT,
      O => \CODE_GRP[7]_i_2_n_0\
    );
\CODE_GRP_CNT[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => TX_EVEN,
      O => plusOp(0)
    );
\CODE_GRP_CNT[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => TX_EVEN,
      I1 => \CODE_GRP_CNT_reg_n_0_[1]\,
      O => plusOp(1)
    );
\CODE_GRP_CNT_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => userclk2,
      CE => '1',
      D => plusOp(0),
      Q => TX_EVEN,
      S => \NO_QSGMII_DATA.TXDATA_reg[4]_0\
    );
\CODE_GRP_CNT_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => userclk2,
      CE => '1',
      D => plusOp(1),
      Q => \CODE_GRP_CNT_reg_n_0_[1]\,
      S => \NO_QSGMII_DATA.TXDATA_reg[4]_0\
    );
\CODE_GRP_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \CODE_GRP[0]_i_1_n_0\,
      Q => \CODE_GRP_reg_n_0_[0]\,
      R => \CODE_GRP[6]_i_1_n_0\
    );
\CODE_GRP_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \CODE_GRP[1]_i_1_n_0\,
      Q => p_1_in,
      R => \CODE_GRP[6]_i_1_n_0\
    );
\CODE_GRP_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => userclk2,
      CE => '1',
      D => \CODE_GRP[2]_i_1_n_0\,
      Q => p_0_in16_in,
      S => \CODE_GRP[6]_i_1_n_0\
    );
\CODE_GRP_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \CODE_GRP[3]_i_1_n_0\,
      Q => p_0_in,
      R => '0'
    );
\CODE_GRP_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \CODE_GRP[4]_i_1_n_0\,
      Q => p_1_in1_in,
      R => '0'
    );
\CODE_GRP_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \CODE_GRP[5]_i_1_n_0\,
      Q => p_1_in34_in,
      R => '0'
    );
\CODE_GRP_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \CODE_GRP[6]_i_2_n_0\,
      Q => p_33_in,
      R => \CODE_GRP[6]_i_1_n_0\
    );
\CODE_GRP_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \CODE_GRP[7]_i_1_n_0\,
      Q => p_0_in35_in,
      R => '0'
    );
\CONFIG_DATA[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \CODE_GRP_CNT_reg_n_0_[1]\,
      I1 => TX_EVEN,
      I2 => C1_OR_C2_reg_n_0,
      O => CONFIG_DATA(0)
    );
\CONFIG_DATA[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => TX_EVEN,
      I1 => \CODE_GRP_CNT_reg_n_0_[1]\,
      O => CONFIG_DATA(3)
    );
\CONFIG_DATA[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"13"
    )
        port map (
      I0 => TX_EVEN,
      I1 => \CODE_GRP_CNT_reg_n_0_[1]\,
      I2 => C1_OR_C2_reg_n_0,
      O => CONFIG_DATA(4)
    );
\CONFIG_DATA[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => C1_OR_C2_reg_n_0,
      I1 => \CODE_GRP_CNT_reg_n_0_[1]\,
      I2 => TX_EVEN,
      O => CONFIG_DATA(6)
    );
\CONFIG_DATA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => CONFIG_DATA(0),
      Q => \CONFIG_DATA_reg_n_0_[0]\,
      R => \NO_QSGMII_DATA.TXDATA_reg[4]_0\
    );
\CONFIG_DATA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => CONFIG_DATA(3),
      Q => \CONFIG_DATA_reg_n_0_[3]\,
      R => \NO_QSGMII_DATA.TXDATA_reg[4]_0\
    );
\CONFIG_DATA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => CONFIG_DATA(4),
      Q => \CONFIG_DATA_reg_n_0_[4]\,
      R => \NO_QSGMII_DATA.TXDATA_reg[4]_0\
    );
\CONFIG_DATA_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => CONFIG_DATA(6),
      Q => \CONFIG_DATA_reg_n_0_[6]\,
      R => \NO_QSGMII_DATA.TXDATA_reg[4]_0\
    );
INSERT_IDLE_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF01"
    )
        port map (
      I0 => TX_PACKET,
      I1 => \CODE_GRP[2]_i_2_n_0\,
      I2 => S,
      I3 => SR(0),
      I4 => XMIT_CONFIG_INT,
      O => INSERT_IDLE_i_1_n_0
    );
INSERT_IDLE_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => INSERT_IDLE_i_1_n_0,
      Q => INSERT_IDLE_reg_n_0,
      R => '0'
    );
K28p5_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => XMIT_CONFIG_INT,
      I1 => \CONFIG_DATA_reg_n_0_[3]\,
      O => K28p5_i_1_n_0
    );
K28p5_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => K28p5_i_1_n_0,
      Q => K28p5,
      R => '0'
    );
\NO_QSGMII_CHAR.TXCHARDISPMODE_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => SYNC_DISPARITY_reg_n_0,
      I1 => TX_EVEN,
      O => p_10_out
    );
\NO_QSGMII_CHAR.TXCHARDISPMODE_reg\: unisim.vcomponents.FDSE
     port map (
      C => userclk2,
      CE => '1',
      D => p_10_out,
      Q => TXCHARDISPMODE_INT,
      S => \NO_QSGMII_DATA.TXDATA_reg[4]_0\
    );
\NO_QSGMII_CHAR.TXCHARDISPVAL_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => TX_EVEN,
      I1 => SYNC_DISPARITY_reg_n_0,
      I2 => DISPARITY,
      O => \NO_QSGMII_CHAR.TXCHARDISPVAL_i_1_n_0\
    );
\NO_QSGMII_CHAR.TXCHARDISPVAL_reg\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \NO_QSGMII_CHAR.TXCHARDISPVAL_i_1_n_0\,
      Q => TXCHARDISPVAL,
      R => \NO_QSGMII_DATA.TXDATA_reg[4]_0\
    );
\NO_QSGMII_DATA.TXCHARISK_reg\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => CODE_GRPISK,
      Q => TXCHARISK_INT,
      R => \NO_QSGMII_DATA.TXDATA[5]_i_1_n_0\
    );
\NO_QSGMII_DATA.TXDATA[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"23332000"
    )
        port map (
      I0 => DISPARITY,
      I1 => \NO_QSGMII_DATA.TXDATA_reg[4]_0\,
      I2 => TX_EVEN,
      I3 => INSERT_IDLE_reg_n_0,
      I4 => \CODE_GRP_reg_n_0_[0]\,
      O => \NO_QSGMII_DATA.TXDATA[0]_i_1_n_0\
    );
\NO_QSGMII_DATA.TXDATA[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"23332000"
    )
        port map (
      I0 => DISPARITY,
      I1 => \NO_QSGMII_DATA.TXDATA_reg[4]_0\,
      I2 => TX_EVEN,
      I3 => INSERT_IDLE_reg_n_0,
      I4 => p_0_in16_in,
      O => \NO_QSGMII_DATA.TXDATA[2]_i_1_n_0\
    );
\NO_QSGMII_DATA.TXDATA[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F40"
    )
        port map (
      I0 => DISPARITY,
      I1 => INSERT_IDLE_reg_n_0,
      I2 => TX_EVEN,
      I3 => p_1_in1_in,
      O => \NO_QSGMII_DATA.TXDATA[4]_i_1_n_0\
    );
\NO_QSGMII_DATA.TXDATA[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \NO_QSGMII_DATA.TXDATA_reg[4]_0\,
      I1 => TX_EVEN,
      I2 => INSERT_IDLE_reg_n_0,
      O => \NO_QSGMII_DATA.TXDATA[5]_i_1_n_0\
    );
\NO_QSGMII_DATA.TXDATA[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5540"
    )
        port map (
      I0 => \NO_QSGMII_DATA.TXDATA_reg[4]_0\,
      I1 => INSERT_IDLE_reg_n_0,
      I2 => TX_EVEN,
      I3 => p_33_in,
      O => \NO_QSGMII_DATA.TXDATA[6]_i_1_n_0\
    );
\NO_QSGMII_DATA.TXDATA[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"23332000"
    )
        port map (
      I0 => DISPARITY,
      I1 => \NO_QSGMII_DATA.TXDATA_reg[4]_0\,
      I2 => TX_EVEN,
      I3 => INSERT_IDLE_reg_n_0,
      I4 => p_0_in35_in,
      O => \NO_QSGMII_DATA.TXDATA[7]_i_1_n_0\
    );
\NO_QSGMII_DATA.TXDATA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \NO_QSGMII_DATA.TXDATA[0]_i_1_n_0\,
      Q => TXDATA(0),
      R => '0'
    );
\NO_QSGMII_DATA.TXDATA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => p_1_in,
      Q => TXDATA(1),
      R => \NO_QSGMII_DATA.TXDATA[5]_i_1_n_0\
    );
\NO_QSGMII_DATA.TXDATA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \NO_QSGMII_DATA.TXDATA[2]_i_1_n_0\,
      Q => TXDATA(2),
      R => '0'
    );
\NO_QSGMII_DATA.TXDATA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => p_0_in,
      Q => TXDATA(3),
      R => \NO_QSGMII_DATA.TXDATA[5]_i_1_n_0\
    );
\NO_QSGMII_DATA.TXDATA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \NO_QSGMII_DATA.TXDATA[4]_i_1_n_0\,
      Q => TXDATA(4),
      R => \NO_QSGMII_DATA.TXDATA_reg[4]_0\
    );
\NO_QSGMII_DATA.TXDATA_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => p_1_in34_in,
      Q => TXDATA(5),
      R => \NO_QSGMII_DATA.TXDATA[5]_i_1_n_0\
    );
\NO_QSGMII_DATA.TXDATA_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \NO_QSGMII_DATA.TXDATA[6]_i_1_n_0\,
      Q => TXDATA(6),
      R => '0'
    );
\NO_QSGMII_DATA.TXDATA_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \NO_QSGMII_DATA.TXDATA[7]_i_1_n_0\,
      Q => TXDATA(7),
      R => '0'
    );
\NO_QSGMII_DISP.DISPARITY_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0009090900F6F6F6"
    )
        port map (
      I0 => \NO_QSGMII_DISP.DISPARITY_i_2_n_0\,
      I1 => \NO_QSGMII_DISP.DISPARITY_i_3_n_0\,
      I2 => K28p5,
      I3 => TX_EVEN,
      I4 => INSERT_IDLE_reg_n_0,
      I5 => DISPARITY,
      O => \NO_QSGMII_DISP.DISPARITY_i_1_n_0\
    );
\NO_QSGMII_DISP.DISPARITY_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"167E7EE8"
    )
        port map (
      I0 => p_1_in,
      I1 => \CODE_GRP_reg_n_0_[0]\,
      I2 => p_0_in16_in,
      I3 => p_0_in,
      I4 => p_1_in1_in,
      O => \NO_QSGMII_DISP.DISPARITY_i_2_n_0\
    );
\NO_QSGMII_DISP.DISPARITY_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7C"
    )
        port map (
      I0 => p_0_in35_in,
      I1 => p_33_in,
      I2 => p_1_in34_in,
      O => \NO_QSGMII_DISP.DISPARITY_i_3_n_0\
    );
\NO_QSGMII_DISP.DISPARITY_reg\: unisim.vcomponents.FDSE
     port map (
      C => userclk2,
      CE => '1',
      D => \NO_QSGMII_DISP.DISPARITY_i_1_n_0\,
      Q => DISPARITY,
      S => \NO_QSGMII_DATA.TXDATA_reg[4]_0\
    );
\R_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDDCCCCC"
    )
        port map (
      I0 => S,
      I1 => T,
      I2 => TX_ER_REG1,
      I3 => TX_EVEN,
      I4 => R,
      O => \R_i_1__0_n_0\
    );
R_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \R_i_1__0_n_0\,
      Q => R,
      R => \NO_QSGMII_DATA.TXDATA_reg[4]_0\
    );
SYNC_DISPARITY_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => TX_EVEN,
      I1 => \CODE_GRP_CNT_reg_n_0_[1]\,
      I2 => XMIT_CONFIG_INT,
      I3 => INSERT_IDLE,
      O => SYNC_DISPARITY_i_1_n_0
    );
SYNC_DISPARITY_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAAB"
    )
        port map (
      I0 => SR(0),
      I1 => S,
      I2 => T,
      I3 => R,
      I4 => V,
      I5 => TX_PACKET,
      O => INSERT_IDLE
    );
SYNC_DISPARITY_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => SYNC_DISPARITY_i_1_n_0,
      Q => SYNC_DISPARITY_reg_n_0,
      R => '0'
    );
\S_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888A8AA88888888"
    )
        port map (
      I0 => XMIT_DATA_INT_reg_n_0,
      I1 => TRIGGER_S,
      I2 => TX_ER_REG1,
      I3 => TX_EVEN,
      I4 => TX_EN_REG1,
      I5 => gmii_tx_en,
      O => S0
    );
S_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => S0,
      Q => S,
      R => \NO_QSGMII_DATA.TXDATA_reg[4]_0\
    );
TRIGGER_S_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => TX_EN_REG1,
      I1 => gmii_tx_en,
      I2 => TX_ER_REG1,
      I3 => TX_EVEN,
      O => TRIGGER_S0
    );
TRIGGER_S_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => TRIGGER_S0,
      Q => TRIGGER_S,
      R => \NO_QSGMII_DATA.TXDATA_reg[4]_0\
    );
TRIGGER_T_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => TX_EN_REG1,
      I1 => gmii_tx_en,
      O => p_45_in
    );
TRIGGER_T_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => p_45_in,
      Q => TRIGGER_T,
      R => \NO_QSGMII_DATA.TXDATA_reg[4]_0\
    );
\TXD_REG1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => gmii_txd(0),
      Q => TXD_REG1(0),
      R => '0'
    );
\TXD_REG1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => gmii_txd(1),
      Q => TXD_REG1(1),
      R => '0'
    );
\TXD_REG1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => gmii_txd(2),
      Q => TXD_REG1(2),
      R => '0'
    );
\TXD_REG1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => gmii_txd(3),
      Q => TXD_REG1(3),
      R => '0'
    );
\TXD_REG1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => gmii_txd(4),
      Q => TXD_REG1(4),
      R => '0'
    );
\TXD_REG1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => gmii_txd(5),
      Q => TXD_REG1(5),
      R => '0'
    );
\TXD_REG1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => gmii_txd(6),
      Q => TXD_REG1(6),
      R => '0'
    );
\TXD_REG1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => gmii_txd(7),
      Q => TXD_REG1(7),
      R => '0'
    );
TX_EN_REG1_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => gmii_tx_en,
      Q => TX_EN_REG1,
      R => '0'
    );
TX_ER_REG1_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => gmii_tx_er,
      Q => TX_ER_REG1,
      R => '0'
    );
TX_PACKET_REG1_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => TX_PACKET,
      Q => TX_PACKET_REG1,
      R => \NO_QSGMII_DATA.TXDATA_reg[4]_0\
    );
TX_PACKET_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => T,
      I1 => S,
      I2 => TX_PACKET,
      O => TX_PACKET_i_1_n_0
    );
TX_PACKET_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => TX_PACKET_i_1_n_0,
      Q => TX_PACKET,
      R => \NO_QSGMII_DATA.TXDATA_reg[4]_0\
    );
T_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888FFF88888"
    )
        port map (
      I0 => TRIGGER_T,
      I1 => V,
      I2 => S,
      I3 => TX_PACKET,
      I4 => TX_EN_REG1,
      I5 => gmii_tx_en,
      O => T0
    );
T_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => T0,
      Q => T,
      R => \NO_QSGMII_DATA.TXDATA_reg[4]_0\
    );
\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXCHARISCOMMA_INT_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TXCHARISK_INT,
      I1 => CONFIGURATION_VECTOR_REG(0),
      I2 => rxchariscomma(0),
      O => \NO_QSGMII_DATA.TXCHARISK_reg_1\
    );
\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXCHARISK_INT_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TXCHARISK_INT,
      I1 => CONFIGURATION_VECTOR_REG(0),
      I2 => rxcharisk(0),
      O => \NO_QSGMII_DATA.TXCHARISK_reg_0\
    );
\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TXDATA(0),
      I1 => CONFIGURATION_VECTOR_REG(0),
      I2 => rxdata(0),
      O => \NO_QSGMII_DATA.TXDATA_reg[7]_1\(0)
    );
\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TXDATA(1),
      I1 => CONFIGURATION_VECTOR_REG(0),
      I2 => rxdata(1),
      O => \NO_QSGMII_DATA.TXDATA_reg[7]_1\(1)
    );
\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TXDATA(2),
      I1 => CONFIGURATION_VECTOR_REG(0),
      I2 => rxdata(2),
      O => \NO_QSGMII_DATA.TXDATA_reg[7]_1\(2)
    );
\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TXDATA(3),
      I1 => CONFIGURATION_VECTOR_REG(0),
      I2 => rxdata(3),
      O => \NO_QSGMII_DATA.TXDATA_reg[7]_1\(3)
    );
\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TXDATA(4),
      I1 => CONFIGURATION_VECTOR_REG(0),
      I2 => rxdata(4),
      O => \NO_QSGMII_DATA.TXDATA_reg[7]_1\(4)
    );
\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TXDATA(5),
      I1 => CONFIGURATION_VECTOR_REG(0),
      I2 => rxdata(5),
      O => \NO_QSGMII_DATA.TXDATA_reg[7]_1\(5)
    );
\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TXDATA(6),
      I1 => CONFIGURATION_VECTOR_REG(0),
      I2 => rxdata(6),
      O => \NO_QSGMII_DATA.TXDATA_reg[7]_1\(6)
    );
\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TXDATA(7),
      I1 => CONFIGURATION_VECTOR_REG(0),
      I2 => rxdata(7),
      O => \NO_QSGMII_DATA.TXDATA_reg[7]_1\(7)
    );
\USE_ROCKET_IO.TXCHARDISPMODE_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TX_EVEN,
      I1 => CONFIGURATION_VECTOR_REG(0),
      I2 => TXCHARDISPMODE_INT,
      O => \CODE_GRP_CNT_reg[0]_0\
    );
\USE_ROCKET_IO.TXCHARDISPVAL_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => TXCHARDISPVAL,
      I1 => CONFIGURATION_VECTOR_REG(0),
      I2 => \NO_QSGMII_DATA.TXDATA_reg[4]_0\,
      O => \NO_QSGMII_CHAR.TXCHARDISPVAL_reg_0\
    );
\USE_ROCKET_IO.TXCHARISK_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => TX_EVEN,
      I1 => CONFIGURATION_VECTOR_REG(0),
      I2 => TXCHARISK_INT,
      O => \CODE_GRP_CNT_reg[0]_1\
    );
\USE_ROCKET_IO.TXDATA[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => TXDATA(0),
      I1 => CONFIGURATION_VECTOR_REG(0),
      I2 => \NO_QSGMII_DATA.TXDATA_reg[4]_0\,
      O => D(0)
    );
\USE_ROCKET_IO.TXDATA[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => TXDATA(1),
      I1 => CONFIGURATION_VECTOR_REG(0),
      I2 => \NO_QSGMII_DATA.TXDATA_reg[4]_0\,
      O => D(1)
    );
\USE_ROCKET_IO.TXDATA[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => TXDATA(2),
      I1 => CONFIGURATION_VECTOR_REG(0),
      I2 => \NO_QSGMII_DATA.TXDATA_reg[4]_0\,
      O => \NO_QSGMII_DATA.TXDATA_reg[2]_0\
    );
\USE_ROCKET_IO.TXDATA[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => TXDATA(3),
      I1 => CONFIGURATION_VECTOR_REG(0),
      I2 => \NO_QSGMII_DATA.TXDATA_reg[4]_0\,
      O => \NO_QSGMII_DATA.TXDATA_reg[3]_0\
    );
\USE_ROCKET_IO.TXDATA[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => \NO_QSGMII_DATA.TXDATA_reg[4]_0\,
      I1 => TXDATA(4),
      I2 => CONFIGURATION_VECTOR_REG(0),
      O => D(2)
    );
\USE_ROCKET_IO.TXDATA[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => TXDATA(5),
      I1 => CONFIGURATION_VECTOR_REG(0),
      I2 => \NO_QSGMII_DATA.TXDATA_reg[4]_0\,
      O => \NO_QSGMII_DATA.TXDATA_reg[5]_0\
    );
\USE_ROCKET_IO.TXDATA[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0074"
    )
        port map (
      I0 => TX_EVEN,
      I1 => CONFIGURATION_VECTOR_REG(0),
      I2 => TXDATA(6),
      I3 => \NO_QSGMII_DATA.TXDATA_reg[4]_0\,
      O => D(3)
    );
\USE_ROCKET_IO.TXDATA[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \NO_QSGMII_DATA.TXDATA_reg[4]_0\,
      I1 => CONFIGURATION_VECTOR_REG(0),
      I2 => TX_EVEN,
      O => \USE_ROCKET_IO.MGT_TX_RESET_INT_reg\
    );
\USE_ROCKET_IO.TXDATA[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => TXDATA(7),
      I1 => CONFIGURATION_VECTOR_REG(0),
      I2 => \NO_QSGMII_DATA.TXDATA_reg[4]_0\,
      O => \NO_QSGMII_DATA.TXDATA_reg[7]_0\
    );
V_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => V_i_2_n_0,
      I1 => S,
      I2 => V,
      O => V_i_1_n_0
    );
V_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888A8AA"
    )
        port map (
      I0 => XMIT_DATA_INT_reg_n_0,
      I1 => V_i_3_n_0,
      I2 => V_i_4_n_0,
      I3 => V_i_5_n_0,
      I4 => V_i_6_n_0,
      O => V_i_2_n_0
    );
V_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => TX_EN_REG1,
      I1 => TX_ER_REG1,
      I2 => TX_PACKET_REG1,
      O => V_i_3_n_0
    );
V_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
        port map (
      I0 => gmii_txd(2),
      I1 => gmii_txd(4),
      I2 => gmii_txd(3),
      I3 => gmii_txd(0),
      I4 => gmii_txd(6),
      I5 => gmii_txd(1),
      O => V_i_4_n_0
    );
V_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => gmii_txd(5),
      I1 => gmii_tx_en,
      I2 => gmii_txd(7),
      O => V_i_5_n_0
    );
V_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => gmii_tx_er,
      I1 => gmii_tx_en,
      I2 => TX_PACKET,
      O => V_i_6_n_0
    );
V_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => V_i_1_n_0,
      Q => V,
      R => \NO_QSGMII_DATA.TXDATA_reg[4]_0\
    );
XMIT_CONFIG_INT_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => TX_EVEN,
      I1 => \CODE_GRP_CNT_reg_n_0_[1]\,
      I2 => XMIT_CONFIG_INT,
      O => XMIT_CONFIG_INT_i_1_n_0
    );
XMIT_CONFIG_INT_reg: unisim.vcomponents.FDSE
     port map (
      C => userclk2,
      CE => '1',
      D => XMIT_CONFIG_INT_i_1_n_0,
      Q => XMIT_CONFIG_INT,
      S => \NO_QSGMII_DATA.TXDATA_reg[4]_0\
    );
XMIT_DATA_INT_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => \CODE_GRP_CNT_reg_n_0_[1]\,
      I1 => TX_EVEN,
      I2 => XMIT_DATA_INT_reg_n_0,
      O => XMIT_DATA_INT_i_1_n_0
    );
XMIT_DATA_INT_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => XMIT_DATA_INT_i_1_n_0,
      Q => XMIT_DATA_INT_reg_n_0,
      R => \NO_QSGMII_DATA.TXDATA_reg[4]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_reset_sync_block is
  port (
    reset_sync6_0 : out STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    userclk2 : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_reset_sync_block : entity is "reset_sync_block";
end gig_ethernet_pcs_pma_0_reset_sync_block;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_reset_sync_block is
  signal reset_out : STD_LOGIC;
  signal reset_sync_reg1 : STD_LOGIC;
  signal reset_sync_reg2 : STD_LOGIC;
  signal reset_sync_reg3 : STD_LOGIC;
  signal reset_sync_reg4 : STD_LOGIC;
  signal reset_sync_reg5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of reset_sync1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of reset_sync1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of reset_sync1 : label is "FDP";
  attribute box_type : string;
  attribute box_type of reset_sync1 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync2 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync2 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync2 : label is "FDP";
  attribute box_type of reset_sync2 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync3 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync3 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync3 : label is "FDP";
  attribute box_type of reset_sync3 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync4 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync4 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync4 : label is "FDP";
  attribute box_type of reset_sync4 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync5 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync5 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync5 : label is "FDP";
  attribute box_type of reset_sync5 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync6 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync6 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync6 : label is "FDP";
  attribute box_type of reset_sync6 : label is "PRIMITIVE";
begin
\MGT_RESET.RESET_INT_PIPE_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => reset_out,
      I1 => dcm_locked,
      O => reset_sync6_0
    );
reset_sync1: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => '0',
      PRE => reset,
      Q => reset_sync_reg1
    );
reset_sync2: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => reset_sync_reg1,
      PRE => reset,
      Q => reset_sync_reg2
    );
reset_sync3: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => reset_sync_reg2,
      PRE => reset,
      Q => reset_sync_reg3
    );
reset_sync4: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => reset_sync_reg3,
      PRE => reset,
      Q => reset_sync_reg4
    );
reset_sync5: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => reset_sync_reg4,
      PRE => reset,
      Q => reset_sync_reg5
    );
reset_sync6: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => reset_sync_reg5,
      PRE => '0',
      Q => reset_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_reset_sync_block_20 is
  port (
    p_6_out : out STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    reset_out : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_reset_sync_block_20 : entity is "reset_sync_block";
end gig_ethernet_pcs_pma_0_reset_sync_block_20;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_reset_sync_block_20 is
  signal RESET_REG_RXRECCLK : STD_LOGIC;
  signal reset_sync_reg1 : STD_LOGIC;
  signal reset_sync_reg2 : STD_LOGIC;
  signal reset_sync_reg3 : STD_LOGIC;
  signal reset_sync_reg4 : STD_LOGIC;
  signal reset_sync_reg5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of reset_sync1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of reset_sync1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of reset_sync1 : label is "FDP";
  attribute box_type : string;
  attribute box_type of reset_sync1 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync2 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync2 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync2 : label is "FDP";
  attribute box_type of reset_sync2 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync3 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync3 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync3 : label is "FDP";
  attribute box_type of reset_sync3 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync4 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync4 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync4 : label is "FDP";
  attribute box_type of reset_sync4 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync5 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync5 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync5 : label is "FDP";
  attribute box_type of reset_sync5 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync6 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync6 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync6 : label is "FDP";
  attribute box_type of reset_sync6 : label is "PRIMITIVE";
begin
\MGT_RESET.RESET_INT_PIPE_RXRECCLK_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => dcm_locked,
      I1 => RESET_REG_RXRECCLK,
      I2 => reset_out,
      O => p_6_out
    );
reset_sync1: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => '0',
      CE => '1',
      D => '0',
      PRE => reset,
      Q => reset_sync_reg1
    );
reset_sync2: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => '0',
      CE => '1',
      D => reset_sync_reg1,
      PRE => reset,
      Q => reset_sync_reg2
    );
reset_sync3: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => '0',
      CE => '1',
      D => reset_sync_reg2,
      PRE => reset,
      Q => reset_sync_reg3
    );
reset_sync4: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => '0',
      CE => '1',
      D => reset_sync_reg3,
      PRE => reset,
      Q => reset_sync_reg4
    );
reset_sync5: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => '0',
      CE => '1',
      D => reset_sync_reg4,
      PRE => reset,
      Q => reset_sync_reg5
    );
reset_sync6: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => '0',
      CE => '1',
      D => reset_sync_reg5,
      PRE => '0',
      Q => RESET_REG_RXRECCLK
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_reset_sync_block_21 is
  port (
    reset_out : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_reset_sync_block_21 : entity is "reset_sync_block";
end gig_ethernet_pcs_pma_0_reset_sync_block_21;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_reset_sync_block_21 is
  signal reset_sync_reg1 : STD_LOGIC;
  signal reset_sync_reg2 : STD_LOGIC;
  signal reset_sync_reg3 : STD_LOGIC;
  signal reset_sync_reg4 : STD_LOGIC;
  signal reset_sync_reg5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of reset_sync1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of reset_sync1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of reset_sync1 : label is "FDP";
  attribute box_type : string;
  attribute box_type of reset_sync1 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync2 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync2 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync2 : label is "FDP";
  attribute box_type of reset_sync2 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync3 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync3 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync3 : label is "FDP";
  attribute box_type of reset_sync3 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync4 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync4 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync4 : label is "FDP";
  attribute box_type of reset_sync4 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync5 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync5 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync5 : label is "FDP";
  attribute box_type of reset_sync5 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync6 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync6 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync6 : label is "FDP";
  attribute box_type of reset_sync6 : label is "PRIMITIVE";
begin
reset_sync1: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => '0',
      CE => '1',
      D => '0',
      PRE => '0',
      Q => reset_sync_reg1
    );
reset_sync2: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => '0',
      CE => '1',
      D => reset_sync_reg1,
      PRE => '0',
      Q => reset_sync_reg2
    );
reset_sync3: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => '0',
      CE => '1',
      D => reset_sync_reg2,
      PRE => '0',
      Q => reset_sync_reg3
    );
reset_sync4: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => '0',
      CE => '1',
      D => reset_sync_reg3,
      PRE => '0',
      Q => reset_sync_reg4
    );
reset_sync5: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => '0',
      CE => '1',
      D => reset_sync_reg4,
      PRE => '0',
      Q => reset_sync_reg5
    );
reset_sync6: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => '0',
      CE => '1',
      D => reset_sync_reg5,
      PRE => '0',
      Q => reset_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_sync_block is
  port (
    SIGNAL_DETECT_MOD : out STD_LOGIC;
    SIGNAL_DETECT_REG_reg : in STD_LOGIC;
    signal_detect : in STD_LOGIC;
    userclk2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_sync_block : entity is "sync_block";
end gig_ethernet_pcs_pma_0_sync_block;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_sync_block is
  signal data_out : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
SIGNAL_DETECT_REG_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_out,
      I1 => SIGNAL_DETECT_REG_reg,
      O => SIGNAL_DETECT_MOD
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => signal_detect,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_RX_STARTUP_FSM is
  port (
    data_in : out STD_LOGIC;
    gt0_rxuserrdy_i : out STD_LOGIC;
    gt0_gtrxreset_gt : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    userclk : in STD_LOGIC;
    pma_reset : in STD_LOGIC;
    reset_time_out_reg_0 : in STD_LOGIC;
    gt0_gtrxreset_gt_d1_reg : in STD_LOGIC;
    data_sync_reg1 : in STD_LOGIC;
    mmcm_locked : in STD_LOGIC;
    data_out : in STD_LOGIC;
    gt0_pll0lock_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_RX_STARTUP_FSM : entity is "gig_ethernet_pcs_pma_0_RX_STARTUP_FSM";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_RX_STARTUP_FSM;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_RX_STARTUP_FSM is
  signal \FSM_sequential_rx_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_9_n_0\ : STD_LOGIC;
  signal RXUSERRDY_i_1_n_0 : STD_LOGIC;
  signal check_tlock_max : STD_LOGIC;
  signal check_tlock_max_i_1_n_0 : STD_LOGIC;
  signal check_tlock_max_reg_n_0 : STD_LOGIC;
  signal \^data_in\ : STD_LOGIC;
  signal data_valid_sync : STD_LOGIC;
  signal gt0_gtrxreset_t : STD_LOGIC;
  signal \^gt0_rxuserrdy_i\ : STD_LOGIC;
  signal gtrxreset_i_i_1_n_0 : STD_LOGIC;
  signal init_wait_count : STD_LOGIC;
  signal \init_wait_count[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \init_wait_count[7]_i_3__0_n_0\ : STD_LOGIC;
  signal \init_wait_count[7]_i_4__0_n_0\ : STD_LOGIC;
  signal init_wait_count_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \init_wait_done_i_1__0_n_0\ : STD_LOGIC;
  signal init_wait_done_reg_n_0 : STD_LOGIC;
  signal \mmcm_lock_count[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[7]_i_4__0_n_0\ : STD_LOGIC;
  signal mmcm_lock_count_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mmcm_lock_reclocked : STD_LOGIC;
  signal \p_0_in__3\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \p_0_in__4\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \reset_time_out_i_2__0_n_0\ : STD_LOGIC;
  signal reset_time_out_i_4_n_0 : STD_LOGIC;
  signal reset_time_out_i_6_n_0 : STD_LOGIC;
  signal reset_time_out_reg_n_0 : STD_LOGIC;
  signal \run_phase_alignment_int_i_1__0_n_0\ : STD_LOGIC;
  signal run_phase_alignment_int_reg_n_0 : STD_LOGIC;
  signal run_phase_alignment_int_s2 : STD_LOGIC;
  signal run_phase_alignment_int_s3_reg_n_0 : STD_LOGIC;
  signal rx_fsm_reset_done_int_s2 : STD_LOGIC;
  signal rx_fsm_reset_done_int_s3 : STD_LOGIC;
  signal rx_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rxresetdone_s2 : STD_LOGIC;
  signal rxresetdone_s3 : STD_LOGIC;
  signal sync_data_valid_n_1 : STD_LOGIC;
  signal sync_data_valid_n_2 : STD_LOGIC;
  signal sync_data_valid_n_3 : STD_LOGIC;
  signal sync_data_valid_n_4 : STD_LOGIC;
  signal sync_data_valid_n_5 : STD_LOGIC;
  signal sync_mmcm_lock_reclocked_n_0 : STD_LOGIC;
  signal sync_mmcm_lock_reclocked_n_1 : STD_LOGIC;
  signal sync_pll0lock_n_0 : STD_LOGIC;
  signal sync_pll0lock_n_1 : STD_LOGIC;
  signal time_out_100us_i_1_n_0 : STD_LOGIC;
  signal time_out_100us_i_2_n_0 : STD_LOGIC;
  signal time_out_100us_i_3_n_0 : STD_LOGIC;
  signal time_out_100us_reg_n_0 : STD_LOGIC;
  signal time_out_1us_i_1_n_0 : STD_LOGIC;
  signal time_out_1us_i_2_n_0 : STD_LOGIC;
  signal time_out_1us_i_3_n_0 : STD_LOGIC;
  signal time_out_1us_i_4_n_0 : STD_LOGIC;
  signal time_out_1us_i_5_n_0 : STD_LOGIC;
  signal time_out_1us_reg_n_0 : STD_LOGIC;
  signal time_out_2ms : STD_LOGIC;
  signal time_out_2ms_i_1_n_0 : STD_LOGIC;
  signal time_out_2ms_reg_n_0 : STD_LOGIC;
  signal time_out_counter : STD_LOGIC;
  signal \time_out_counter[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \time_out_counter[0]_i_5__0_n_0\ : STD_LOGIC;
  signal \time_out_counter[0]_i_6_n_0\ : STD_LOGIC;
  signal \time_out_counter[0]_i_7__0_n_0\ : STD_LOGIC;
  signal \time_out_counter[0]_i_8__0_n_0\ : STD_LOGIC;
  signal \time_out_counter[0]_i_9_n_0\ : STD_LOGIC;
  signal time_out_counter_reg : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \time_out_counter_reg[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1__0_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1__0_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1__0_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1__0_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1__0_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1__0_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1__0_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \time_out_wait_bypass_i_1__0_n_0\ : STD_LOGIC;
  signal time_out_wait_bypass_reg_n_0 : STD_LOGIC;
  signal time_out_wait_bypass_s2 : STD_LOGIC;
  signal time_out_wait_bypass_s3 : STD_LOGIC;
  signal time_tlock_max : STD_LOGIC;
  signal time_tlock_max_i_1_n_0 : STD_LOGIC;
  signal time_tlock_max_i_2_n_0 : STD_LOGIC;
  signal time_tlock_max_i_3_n_0 : STD_LOGIC;
  signal time_tlock_max_i_4_n_0 : STD_LOGIC;
  signal time_tlock_max_i_5_n_0 : STD_LOGIC;
  signal time_tlock_max_i_6_n_0 : STD_LOGIC;
  signal \wait_bypass_count[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_5_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_6__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_7__0_n_0\ : STD_LOGIC;
  signal wait_bypass_count_reg : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \wait_bypass_count_reg[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \wait_time_cnt[0]_i_10__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[0]_i_11__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[0]_i_5__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[0]_i_6__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[0]_i_7__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[0]_i_8__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[0]_i_9__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[12]_i_2__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[12]_i_3__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[12]_i_4__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[12]_i_5__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[4]_i_4__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[4]_i_5__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[8]_i_2__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[8]_i_3__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[8]_i_4__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[8]_i_5__0_n_0\ : STD_LOGIC;
  signal wait_time_cnt_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \wait_time_cnt_reg[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt_reg[0]_i_3__0_n_1\ : STD_LOGIC;
  signal \wait_time_cnt_reg[0]_i_3__0_n_2\ : STD_LOGIC;
  signal \wait_time_cnt_reg[0]_i_3__0_n_3\ : STD_LOGIC;
  signal \wait_time_cnt_reg[0]_i_3__0_n_4\ : STD_LOGIC;
  signal \wait_time_cnt_reg[0]_i_3__0_n_5\ : STD_LOGIC;
  signal \wait_time_cnt_reg[0]_i_3__0_n_6\ : STD_LOGIC;
  signal \wait_time_cnt_reg[0]_i_3__0_n_7\ : STD_LOGIC;
  signal \wait_time_cnt_reg[12]_i_1__0_n_1\ : STD_LOGIC;
  signal \wait_time_cnt_reg[12]_i_1__0_n_2\ : STD_LOGIC;
  signal \wait_time_cnt_reg[12]_i_1__0_n_3\ : STD_LOGIC;
  signal \wait_time_cnt_reg[12]_i_1__0_n_4\ : STD_LOGIC;
  signal \wait_time_cnt_reg[12]_i_1__0_n_5\ : STD_LOGIC;
  signal \wait_time_cnt_reg[12]_i_1__0_n_6\ : STD_LOGIC;
  signal \wait_time_cnt_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \wait_time_cnt_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \wait_time_cnt_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \wait_time_cnt_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \wait_time_cnt_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \wait_time_cnt_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \wait_time_cnt_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \wait_time_cnt_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \wait_time_cnt_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \wait_time_cnt_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \wait_time_cnt_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \wait_time_cnt_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \wait_time_cnt_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \wait_time_cnt_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \wait_time_cnt_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_wait_time_cnt_reg[12]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state[3]_i_10\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state[3]_i_8\ : label is "soft_lutpair43";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_rx_state_reg[0]\ : label is "RELEASE_PLL_RESET:0011,VERIFY_RECCLK_STABLE:0100,WAIT_FOR_PLL_LOCK:0010,FSM_DONE:1010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,MONITOR_DATA_VALID:1001,WAIT_FOR_RXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rx_state_reg[1]\ : label is "RELEASE_PLL_RESET:0011,VERIFY_RECCLK_STABLE:0100,WAIT_FOR_PLL_LOCK:0010,FSM_DONE:1010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,MONITOR_DATA_VALID:1001,WAIT_FOR_RXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rx_state_reg[2]\ : label is "RELEASE_PLL_RESET:0011,VERIFY_RECCLK_STABLE:0100,WAIT_FOR_PLL_LOCK:0010,FSM_DONE:1010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,MONITOR_DATA_VALID:1001,WAIT_FOR_RXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rx_state_reg[3]\ : label is "RELEASE_PLL_RESET:0011,VERIFY_RECCLK_STABLE:0100,WAIT_FOR_PLL_LOCK:0010,FSM_DONE:1010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,MONITOR_DATA_VALID:1001,WAIT_FOR_RXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101";
  attribute SOFT_HLUTNM of RXUSERRDY_i_1 : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \init_wait_count[0]_i_1__0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \init_wait_count[1]_i_1__0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \init_wait_count[2]_i_1__0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \init_wait_count[3]_i_1__0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \init_wait_count[4]_i_1__0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \init_wait_count[6]_i_1__0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \init_wait_count[7]_i_2__0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \init_wait_count[7]_i_3__0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \mmcm_lock_count[1]_i_1__0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \mmcm_lock_count[2]_i_1__0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \mmcm_lock_count[3]_i_1__0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \mmcm_lock_count[4]_i_1__0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \mmcm_lock_count[6]_i_1__0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \mmcm_lock_count[7]_i_3__0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \reset_time_out_i_2__0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \reset_time_out_i_3__0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of reset_time_out_i_4 : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of time_out_1us_i_2 : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of time_out_1us_i_4 : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \time_out_counter[0]_i_5__0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \time_out_counter[0]_i_9\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of time_tlock_max_i_3 : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of time_tlock_max_i_4 : label is "soft_lutpair46";
begin
  data_in <= \^data_in\;
  gt0_rxuserrdy_i <= \^gt0_rxuserrdy_i\;
\FSM_sequential_rx_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF8000AF00"
    )
        port map (
      I0 => rx_state(1),
      I1 => reset_time_out_reg_n_0,
      I2 => rx_state(2),
      I3 => rx_state(0),
      I4 => time_out_2ms_reg_n_0,
      I5 => rx_state(3),
      O => \FSM_sequential_rx_state[0]_i_2_n_0\
    );
\FSM_sequential_rx_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF5555FFFF7555"
    )
        port map (
      I0 => rx_state(0),
      I1 => reset_time_out_reg_n_0,
      I2 => time_tlock_max,
      I3 => rx_state(2),
      I4 => rx_state(1),
      I5 => rx_state(3),
      O => \FSM_sequential_rx_state[1]_i_2_n_0\
    );
\FSM_sequential_rx_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100005551555"
    )
        port map (
      I0 => rx_state(3),
      I1 => rx_state(2),
      I2 => rx_state(1),
      I3 => rx_state(0),
      I4 => time_out_2ms_reg_n_0,
      I5 => \FSM_sequential_rx_state[2]_i_2_n_0\,
      O => \FSM_sequential_rx_state[2]_i_1_n_0\
    );
\FSM_sequential_rx_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2727FF2727272727"
    )
        port map (
      I0 => rx_state(3),
      I1 => rx_state(1),
      I2 => rx_state(2),
      I3 => rx_state(0),
      I4 => reset_time_out_reg_n_0,
      I5 => time_tlock_max,
      O => \FSM_sequential_rx_state[2]_i_2_n_0\
    );
\FSM_sequential_rx_state[3]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => rx_state(3),
      I1 => rx_state(1),
      I2 => rx_state(2),
      I3 => rx_state(0),
      I4 => init_wait_done_reg_n_0,
      O => \FSM_sequential_rx_state[3]_i_10_n_0\
    );
\FSM_sequential_rx_state[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000151"
    )
        port map (
      I0 => rx_state(1),
      I1 => reset_time_out_reg_0,
      I2 => rx_state(0),
      I3 => mmcm_lock_reclocked,
      I4 => \FSM_sequential_rx_state[2]_i_2_n_0\,
      I5 => \FSM_sequential_rx_state[3]_i_10_n_0\,
      O => \FSM_sequential_rx_state[3]_i_4_n_0\
    );
\FSM_sequential_rx_state[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAEFFFFAEFFFFFF"
    )
        port map (
      I0 => rxresetdone_s3,
      I1 => time_out_2ms_reg_n_0,
      I2 => reset_time_out_reg_n_0,
      I3 => rx_state(2),
      I4 => rx_state(1),
      I5 => rx_state(3),
      O => \FSM_sequential_rx_state[3]_i_6_n_0\
    );
\FSM_sequential_rx_state[3]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => rx_state(2),
      I1 => rx_state(1),
      I2 => rx_state(3),
      O => \FSM_sequential_rx_state[3]_i_8_n_0\
    );
\FSM_sequential_rx_state[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDD0000000000000"
    )
        port map (
      I0 => time_out_2ms_reg_n_0,
      I1 => reset_time_out_reg_n_0,
      I2 => rx_state(2),
      I3 => rx_state(3),
      I4 => rx_state(0),
      I5 => rx_state(1),
      O => \FSM_sequential_rx_state[3]_i_9_n_0\
    );
\FSM_sequential_rx_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sync_data_valid_n_1,
      D => sync_data_valid_n_4,
      Q => rx_state(0),
      R => pma_reset
    );
\FSM_sequential_rx_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sync_data_valid_n_1,
      D => sync_data_valid_n_3,
      Q => rx_state(1),
      R => pma_reset
    );
\FSM_sequential_rx_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sync_data_valid_n_1,
      D => \FSM_sequential_rx_state[2]_i_1_n_0\,
      Q => rx_state(2),
      R => pma_reset
    );
\FSM_sequential_rx_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sync_data_valid_n_1,
      D => sync_data_valid_n_2,
      Q => rx_state(3),
      R => pma_reset
    );
RXUSERRDY_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB4000"
    )
        port map (
      I0 => rx_state(3),
      I1 => rx_state(0),
      I2 => rx_state(2),
      I3 => rx_state(1),
      I4 => \^gt0_rxuserrdy_i\,
      O => RXUSERRDY_i_1_n_0
    );
RXUSERRDY_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => RXUSERRDY_i_1_n_0,
      Q => \^gt0_rxuserrdy_i\,
      R => pma_reset
    );
check_tlock_max_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => rx_state(2),
      I1 => rx_state(3),
      I2 => rx_state(0),
      I3 => rx_state(1),
      I4 => check_tlock_max_reg_n_0,
      O => check_tlock_max_i_1_n_0
    );
check_tlock_max_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => check_tlock_max_i_1_n_0,
      Q => check_tlock_max_reg_n_0,
      R => pma_reset
    );
gt0_gtrxreset_gt_d1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => gt0_gtrxreset_t,
      I1 => \^data_in\,
      I2 => gt0_gtrxreset_gt_d1_reg,
      O => gt0_gtrxreset_gt
    );
gtrxreset_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0004"
    )
        port map (
      I0 => rx_state(2),
      I1 => rx_state(0),
      I2 => rx_state(3),
      I3 => rx_state(1),
      I4 => gt0_gtrxreset_t,
      O => gtrxreset_i_i_1_n_0
    );
gtrxreset_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gtrxreset_i_i_1_n_0,
      Q => gt0_gtrxreset_t,
      R => pma_reset
    );
\init_wait_count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => init_wait_count_reg(0),
      O => \init_wait_count[0]_i_1__0_n_0\
    );
\init_wait_count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => init_wait_count_reg(0),
      I1 => init_wait_count_reg(1),
      O => \p_0_in__3\(1)
    );
\init_wait_count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => init_wait_count_reg(2),
      I1 => init_wait_count_reg(0),
      I2 => init_wait_count_reg(1),
      O => \p_0_in__3\(2)
    );
\init_wait_count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => init_wait_count_reg(3),
      I1 => init_wait_count_reg(1),
      I2 => init_wait_count_reg(0),
      I3 => init_wait_count_reg(2),
      O => \p_0_in__3\(3)
    );
\init_wait_count[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => init_wait_count_reg(4),
      I1 => init_wait_count_reg(2),
      I2 => init_wait_count_reg(0),
      I3 => init_wait_count_reg(1),
      I4 => init_wait_count_reg(3),
      O => \p_0_in__3\(4)
    );
\init_wait_count[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => init_wait_count_reg(3),
      I1 => init_wait_count_reg(1),
      I2 => init_wait_count_reg(0),
      I3 => init_wait_count_reg(2),
      I4 => init_wait_count_reg(4),
      I5 => init_wait_count_reg(5),
      O => \p_0_in__3\(5)
    );
\init_wait_count[6]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => init_wait_count_reg(6),
      I1 => \init_wait_count[7]_i_4__0_n_0\,
      O => \p_0_in__3\(6)
    );
\init_wait_count[7]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFF"
    )
        port map (
      I0 => \init_wait_count[7]_i_3__0_n_0\,
      I1 => init_wait_count_reg(4),
      I2 => init_wait_count_reg(5),
      I3 => init_wait_count_reg(2),
      I4 => init_wait_count_reg(7),
      O => init_wait_count
    );
\init_wait_count[7]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => init_wait_count_reg(7),
      I1 => \init_wait_count[7]_i_4__0_n_0\,
      I2 => init_wait_count_reg(6),
      O => \p_0_in__3\(7)
    );
\init_wait_count[7]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => init_wait_count_reg(1),
      I1 => init_wait_count_reg(0),
      I2 => init_wait_count_reg(6),
      I3 => init_wait_count_reg(3),
      O => \init_wait_count[7]_i_3__0_n_0\
    );
\init_wait_count[7]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => init_wait_count_reg(5),
      I1 => init_wait_count_reg(4),
      I2 => init_wait_count_reg(2),
      I3 => init_wait_count_reg(0),
      I4 => init_wait_count_reg(1),
      I5 => init_wait_count_reg(3),
      O => \init_wait_count[7]_i_4__0_n_0\
    );
\init_wait_count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => pma_reset,
      D => \init_wait_count[0]_i_1__0_n_0\,
      Q => init_wait_count_reg(0)
    );
\init_wait_count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => pma_reset,
      D => \p_0_in__3\(1),
      Q => init_wait_count_reg(1)
    );
\init_wait_count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => pma_reset,
      D => \p_0_in__3\(2),
      Q => init_wait_count_reg(2)
    );
\init_wait_count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => pma_reset,
      D => \p_0_in__3\(3),
      Q => init_wait_count_reg(3)
    );
\init_wait_count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => pma_reset,
      D => \p_0_in__3\(4),
      Q => init_wait_count_reg(4)
    );
\init_wait_count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => pma_reset,
      D => \p_0_in__3\(5),
      Q => init_wait_count_reg(5)
    );
\init_wait_count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => pma_reset,
      D => \p_0_in__3\(6),
      Q => init_wait_count_reg(6)
    );
\init_wait_count_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => pma_reset,
      D => \p_0_in__3\(7),
      Q => init_wait_count_reg(7)
    );
\init_wait_done_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00001000"
    )
        port map (
      I0 => \init_wait_count[7]_i_3__0_n_0\,
      I1 => init_wait_count_reg(4),
      I2 => init_wait_count_reg(5),
      I3 => init_wait_count_reg(2),
      I4 => init_wait_count_reg(7),
      I5 => init_wait_done_reg_n_0,
      O => \init_wait_done_i_1__0_n_0\
    );
init_wait_done_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      CLR => pma_reset,
      D => \init_wait_done_i_1__0_n_0\,
      Q => init_wait_done_reg_n_0
    );
\mmcm_lock_count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mmcm_lock_count_reg(0),
      O => \p_0_in__4\(0)
    );
\mmcm_lock_count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mmcm_lock_count_reg(1),
      I1 => mmcm_lock_count_reg(0),
      O => \p_0_in__4\(1)
    );
\mmcm_lock_count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => mmcm_lock_count_reg(2),
      I1 => mmcm_lock_count_reg(1),
      I2 => mmcm_lock_count_reg(0),
      O => \p_0_in__4\(2)
    );
\mmcm_lock_count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => mmcm_lock_count_reg(3),
      I1 => mmcm_lock_count_reg(0),
      I2 => mmcm_lock_count_reg(1),
      I3 => mmcm_lock_count_reg(2),
      O => \p_0_in__4\(3)
    );
\mmcm_lock_count[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => mmcm_lock_count_reg(4),
      I1 => mmcm_lock_count_reg(2),
      I2 => mmcm_lock_count_reg(1),
      I3 => mmcm_lock_count_reg(0),
      I4 => mmcm_lock_count_reg(3),
      O => \p_0_in__4\(4)
    );
\mmcm_lock_count[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => mmcm_lock_count_reg(3),
      I1 => mmcm_lock_count_reg(0),
      I2 => mmcm_lock_count_reg(1),
      I3 => mmcm_lock_count_reg(2),
      I4 => mmcm_lock_count_reg(4),
      I5 => mmcm_lock_count_reg(5),
      O => \p_0_in__4\(5)
    );
\mmcm_lock_count[6]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mmcm_lock_count_reg(6),
      I1 => \mmcm_lock_count[7]_i_4__0_n_0\,
      O => \p_0_in__4\(6)
    );
\mmcm_lock_count[7]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => mmcm_lock_count_reg(6),
      I1 => \mmcm_lock_count[7]_i_4__0_n_0\,
      I2 => mmcm_lock_count_reg(7),
      O => \mmcm_lock_count[7]_i_2__0_n_0\
    );
\mmcm_lock_count[7]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => mmcm_lock_count_reg(7),
      I1 => \mmcm_lock_count[7]_i_4__0_n_0\,
      I2 => mmcm_lock_count_reg(6),
      O => \p_0_in__4\(7)
    );
\mmcm_lock_count[7]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => mmcm_lock_count_reg(5),
      I1 => mmcm_lock_count_reg(4),
      I2 => mmcm_lock_count_reg(2),
      I3 => mmcm_lock_count_reg(1),
      I4 => mmcm_lock_count_reg(0),
      I5 => mmcm_lock_count_reg(3),
      O => \mmcm_lock_count[7]_i_4__0_n_0\
    );
\mmcm_lock_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2__0_n_0\,
      D => \p_0_in__4\(0),
      Q => mmcm_lock_count_reg(0),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2__0_n_0\,
      D => \p_0_in__4\(1),
      Q => mmcm_lock_count_reg(1),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2__0_n_0\,
      D => \p_0_in__4\(2),
      Q => mmcm_lock_count_reg(2),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2__0_n_0\,
      D => \p_0_in__4\(3),
      Q => mmcm_lock_count_reg(3),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2__0_n_0\,
      D => \p_0_in__4\(4),
      Q => mmcm_lock_count_reg(4),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2__0_n_0\,
      D => \p_0_in__4\(5),
      Q => mmcm_lock_count_reg(5),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2__0_n_0\,
      D => \p_0_in__4\(6),
      Q => mmcm_lock_count_reg(6),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2__0_n_0\,
      D => \p_0_in__4\(7),
      Q => mmcm_lock_count_reg(7),
      R => sync_mmcm_lock_reclocked_n_0
    );
mmcm_lock_reclocked_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => sync_mmcm_lock_reclocked_n_1,
      Q => mmcm_lock_reclocked,
      R => '0'
    );
\reset_time_out_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => rxresetdone_s3,
      I1 => rx_state(1),
      O => \reset_time_out_i_2__0_n_0\
    );
\reset_time_out_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_state(2),
      I1 => rx_state(3),
      O => check_tlock_max
    );
reset_time_out_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => rx_state(1),
      I1 => reset_time_out_reg_0,
      I2 => rx_state(0),
      I3 => mmcm_lock_reclocked,
      O => reset_time_out_i_4_n_0
    );
reset_time_out_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F303F38"
    )
        port map (
      I0 => reset_time_out_reg_0,
      I1 => rx_state(2),
      I2 => rx_state(3),
      I3 => rx_state(0),
      I4 => rx_state(1),
      O => reset_time_out_i_6_n_0
    );
reset_time_out_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => sync_pll0lock_n_1,
      Q => reset_time_out_reg_n_0,
      S => pma_reset
    );
\run_phase_alignment_int_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0002"
    )
        port map (
      I0 => rx_state(3),
      I1 => rx_state(0),
      I2 => rx_state(2),
      I3 => rx_state(1),
      I4 => run_phase_alignment_int_reg_n_0,
      O => \run_phase_alignment_int_i_1__0_n_0\
    );
run_phase_alignment_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => \run_phase_alignment_int_i_1__0_n_0\,
      Q => run_phase_alignment_int_reg_n_0,
      R => pma_reset
    );
run_phase_alignment_int_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => run_phase_alignment_int_s2,
      Q => run_phase_alignment_int_s3_reg_n_0,
      R => '0'
    );
rx_fsm_reset_done_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => sync_data_valid_n_5,
      Q => \^data_in\,
      R => pma_reset
    );
rx_fsm_reset_done_int_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => rx_fsm_reset_done_int_s2,
      Q => rx_fsm_reset_done_int_s3,
      R => '0'
    );
rxresetdone_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => rxresetdone_s2,
      Q => rxresetdone_s3,
      R => '0'
    );
sync_RXRESETDONE: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_13
     port map (
      data_out => rxresetdone_s2,
      data_sync_reg1_0 => data_sync_reg1,
      independent_clock_bufg => independent_clock_bufg
    );
sync_data_valid: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_14
     port map (
      D(2) => sync_data_valid_n_2,
      D(1) => sync_data_valid_n_3,
      D(0) => sync_data_valid_n_4,
      E(0) => sync_data_valid_n_1,
      \FSM_sequential_rx_state_reg[0]\ => \FSM_sequential_rx_state[3]_i_4_n_0\,
      \FSM_sequential_rx_state_reg[0]_0\ => \wait_time_cnt[0]_i_2__0_n_0\,
      \FSM_sequential_rx_state_reg[0]_1\ => sync_pll0lock_n_0,
      \FSM_sequential_rx_state_reg[0]_2\ => \FSM_sequential_rx_state[3]_i_6_n_0\,
      \FSM_sequential_rx_state_reg[0]_3\ => \FSM_sequential_rx_state[0]_i_2_n_0\,
      \FSM_sequential_rx_state_reg[0]_4\ => \FSM_sequential_rx_state[1]_i_2_n_0\,
      \FSM_sequential_rx_state_reg[2]\ => sync_data_valid_n_5,
      \FSM_sequential_rx_state_reg[3]\ => \FSM_sequential_rx_state[3]_i_8_n_0\,
      \FSM_sequential_rx_state_reg[3]_0\ => \FSM_sequential_rx_state[3]_i_9_n_0\,
      Q(3 downto 0) => rx_state(3 downto 0),
      data_in => \^data_in\,
      data_out => data_valid_sync,
      data_sync_reg1_0 => data_out,
      independent_clock_bufg => independent_clock_bufg,
      rx_fsm_reset_done_int_reg => reset_time_out_reg_n_0,
      rx_fsm_reset_done_int_reg_0 => time_out_100us_reg_n_0,
      rx_fsm_reset_done_int_reg_1 => time_out_1us_reg_n_0,
      time_out_wait_bypass_s3 => time_out_wait_bypass_s3
    );
sync_mmcm_lock_reclocked: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_15
     port map (
      Q(1 downto 0) => mmcm_lock_count_reg(7 downto 6),
      SR(0) => sync_mmcm_lock_reclocked_n_0,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_lock_reclocked => mmcm_lock_reclocked,
      mmcm_lock_reclocked_reg => sync_mmcm_lock_reclocked_n_1,
      mmcm_lock_reclocked_reg_0 => \mmcm_lock_count[7]_i_4__0_n_0\,
      mmcm_locked => mmcm_locked
    );
sync_pll0lock: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_16
     port map (
      \FSM_sequential_rx_state_reg[0]\ => time_out_2ms_reg_n_0,
      Q(3 downto 0) => rx_state(3 downto 0),
      check_tlock_max => check_tlock_max,
      data_out => data_valid_sync,
      gt0_pll0lock_in => gt0_pll0lock_in,
      independent_clock_bufg => independent_clock_bufg,
      reset_time_out_reg => sync_pll0lock_n_1,
      reset_time_out_reg_0 => \reset_time_out_i_2__0_n_0\,
      reset_time_out_reg_1 => reset_time_out_i_4_n_0,
      reset_time_out_reg_2 => reset_time_out_i_6_n_0,
      reset_time_out_reg_3 => reset_time_out_reg_n_0,
      time_out_2ms_reg => sync_pll0lock_n_0
    );
sync_run_phase_alignment_int: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_17
     port map (
      data_in => run_phase_alignment_int_reg_n_0,
      data_out => run_phase_alignment_int_s2,
      userclk => userclk
    );
sync_rx_fsm_reset_done_int: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_18
     port map (
      data_in => \^data_in\,
      data_out => rx_fsm_reset_done_int_s2,
      userclk => userclk
    );
sync_time_out_wait_bypass: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_19
     port map (
      data_in => time_out_wait_bypass_reg_n_0,
      data_out => time_out_wait_bypass_s2,
      independent_clock_bufg => independent_clock_bufg
    );
time_out_100us_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00004000"
    )
        port map (
      I0 => time_out_100us_i_2_n_0,
      I1 => time_out_counter_reg(5),
      I2 => time_out_counter_reg(14),
      I3 => time_tlock_max_i_3_n_0,
      I4 => time_out_100us_i_3_n_0,
      I5 => time_out_100us_reg_n_0,
      O => time_out_100us_i_1_n_0
    );
time_out_100us_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => time_out_1us_i_3_n_0,
      I1 => time_out_counter_reg(3),
      I2 => time_out_counter_reg(4),
      I3 => time_out_counter_reg(2),
      I4 => time_out_counter_reg(1),
      I5 => time_out_counter_reg(0),
      O => time_out_100us_i_2_n_0
    );
time_out_100us_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF7F"
    )
        port map (
      I0 => time_out_counter_reg(11),
      I1 => time_out_counter_reg(9),
      I2 => time_out_counter_reg(10),
      I3 => time_out_counter_reg(6),
      I4 => time_out_counter_reg(7),
      I5 => time_out_counter_reg(8),
      O => time_out_100us_i_3_n_0
    );
time_out_100us_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => time_out_100us_i_1_n_0,
      Q => time_out_100us_reg_n_0,
      R => reset_time_out_reg_n_0
    );
time_out_1us_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00001000"
    )
        port map (
      I0 => time_out_1us_i_2_n_0,
      I1 => time_out_1us_i_3_n_0,
      I2 => time_out_1us_i_4_n_0,
      I3 => time_tlock_max_i_3_n_0,
      I4 => time_out_1us_i_5_n_0,
      I5 => time_out_1us_reg_n_0,
      O => time_out_1us_i_1_n_0
    );
time_out_1us_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDFFFFF"
    )
        port map (
      I0 => \time_out_counter[0]_i_6_n_0\,
      I1 => time_out_counter_reg(5),
      I2 => time_out_counter_reg(7),
      I3 => time_out_counter_reg(4),
      I4 => time_out_counter_reg(6),
      O => time_out_1us_i_2_n_0
    );
time_out_1us_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF4"
    )
        port map (
      I0 => time_out_counter_reg(16),
      I1 => time_out_counter_reg(15),
      I2 => time_out_counter_reg(19),
      I3 => time_out_counter_reg(17),
      I4 => time_out_counter_reg(12),
      I5 => time_out_counter_reg(13),
      O => time_out_1us_i_3_n_0
    );
time_out_1us_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => time_out_counter_reg(14),
      I1 => time_out_counter_reg(10),
      I2 => time_out_counter_reg(11),
      I3 => time_out_counter_reg(8),
      I4 => time_out_counter_reg(9),
      O => time_out_1us_i_4_n_0
    );
time_out_1us_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => time_out_counter_reg(5),
      I1 => time_out_counter_reg(4),
      I2 => time_out_counter_reg(3),
      O => time_out_1us_i_5_n_0
    );
time_out_1us_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => time_out_1us_i_1_n_0,
      Q => time_out_1us_reg_n_0,
      R => reset_time_out_reg_n_0
    );
time_out_2ms_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_out_2ms,
      I1 => time_out_2ms_reg_n_0,
      O => time_out_2ms_i_1_n_0
    );
time_out_2ms_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => time_out_2ms_i_1_n_0,
      Q => time_out_2ms_reg_n_0,
      R => reset_time_out_reg_n_0
    );
\time_out_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_2ms,
      O => time_out_counter
    );
\time_out_counter[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \time_out_counter[0]_i_5__0_n_0\,
      I1 => \time_out_counter[0]_i_6_n_0\,
      I2 => time_out_1us_i_5_n_0,
      I3 => \time_out_counter[0]_i_7__0_n_0\,
      I4 => \time_out_counter[0]_i_8__0_n_0\,
      I5 => \time_out_counter[0]_i_9_n_0\,
      O => time_out_2ms
    );
\time_out_counter[0]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(0),
      O => \time_out_counter[0]_i_4__0_n_0\
    );
\time_out_counter[0]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => time_out_counter_reg(6),
      I1 => time_out_counter_reg(4),
      I2 => time_out_counter_reg(7),
      I3 => time_out_counter_reg(5),
      O => \time_out_counter[0]_i_5__0_n_0\
    );
\time_out_counter[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => time_out_counter_reg(2),
      I1 => time_out_counter_reg(1),
      I2 => time_out_counter_reg(0),
      O => \time_out_counter[0]_i_6_n_0\
    );
\time_out_counter[0]_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => time_out_counter_reg(8),
      I1 => time_out_counter_reg(19),
      I2 => time_out_counter_reg(14),
      I3 => time_out_counter_reg(12),
      O => \time_out_counter[0]_i_7__0_n_0\
    );
\time_out_counter[0]_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => time_out_counter_reg(13),
      I1 => time_out_counter_reg(16),
      I2 => time_out_counter_reg(11),
      I3 => time_out_counter_reg(15),
      O => \time_out_counter[0]_i_8__0_n_0\
    );
\time_out_counter[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => time_out_counter_reg(10),
      I1 => time_out_counter_reg(9),
      I2 => time_out_counter_reg(17),
      I3 => time_out_counter_reg(18),
      O => \time_out_counter[0]_i_9_n_0\
    );
\time_out_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2__0_n_7\,
      Q => time_out_counter_reg(0),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[0]_i_2__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \time_out_counter_reg[0]_i_2__0_n_0\,
      CO(2) => \time_out_counter_reg[0]_i_2__0_n_1\,
      CO(1) => \time_out_counter_reg[0]_i_2__0_n_2\,
      CO(0) => \time_out_counter_reg[0]_i_2__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \time_out_counter_reg[0]_i_2__0_n_4\,
      O(2) => \time_out_counter_reg[0]_i_2__0_n_5\,
      O(1) => \time_out_counter_reg[0]_i_2__0_n_6\,
      O(0) => \time_out_counter_reg[0]_i_2__0_n_7\,
      S(3 downto 1) => time_out_counter_reg(3 downto 1),
      S(0) => \time_out_counter[0]_i_4__0_n_0\
    );
\time_out_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1__0_n_5\,
      Q => time_out_counter_reg(10),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1__0_n_4\,
      Q => time_out_counter_reg(11),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1__0_n_7\,
      Q => time_out_counter_reg(12),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[8]_i_1__0_n_0\,
      CO(3) => \time_out_counter_reg[12]_i_1__0_n_0\,
      CO(2) => \time_out_counter_reg[12]_i_1__0_n_1\,
      CO(1) => \time_out_counter_reg[12]_i_1__0_n_2\,
      CO(0) => \time_out_counter_reg[12]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[12]_i_1__0_n_4\,
      O(2) => \time_out_counter_reg[12]_i_1__0_n_5\,
      O(1) => \time_out_counter_reg[12]_i_1__0_n_6\,
      O(0) => \time_out_counter_reg[12]_i_1__0_n_7\,
      S(3 downto 0) => time_out_counter_reg(15 downto 12)
    );
\time_out_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1__0_n_6\,
      Q => time_out_counter_reg(13),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1__0_n_5\,
      Q => time_out_counter_reg(14),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1__0_n_4\,
      Q => time_out_counter_reg(15),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[16]_i_1__0_n_7\,
      Q => time_out_counter_reg(16),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[16]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[12]_i_1__0_n_0\,
      CO(3) => \NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED\(3),
      CO(2) => \time_out_counter_reg[16]_i_1__0_n_1\,
      CO(1) => \time_out_counter_reg[16]_i_1__0_n_2\,
      CO(0) => \time_out_counter_reg[16]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[16]_i_1__0_n_4\,
      O(2) => \time_out_counter_reg[16]_i_1__0_n_5\,
      O(1) => \time_out_counter_reg[16]_i_1__0_n_6\,
      O(0) => \time_out_counter_reg[16]_i_1__0_n_7\,
      S(3 downto 0) => time_out_counter_reg(19 downto 16)
    );
\time_out_counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[16]_i_1__0_n_6\,
      Q => time_out_counter_reg(17),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[16]_i_1__0_n_5\,
      Q => time_out_counter_reg(18),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[16]_i_1__0_n_4\,
      Q => time_out_counter_reg(19),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2__0_n_6\,
      Q => time_out_counter_reg(1),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2__0_n_5\,
      Q => time_out_counter_reg(2),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2__0_n_4\,
      Q => time_out_counter_reg(3),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1__0_n_7\,
      Q => time_out_counter_reg(4),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[0]_i_2__0_n_0\,
      CO(3) => \time_out_counter_reg[4]_i_1__0_n_0\,
      CO(2) => \time_out_counter_reg[4]_i_1__0_n_1\,
      CO(1) => \time_out_counter_reg[4]_i_1__0_n_2\,
      CO(0) => \time_out_counter_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[4]_i_1__0_n_4\,
      O(2) => \time_out_counter_reg[4]_i_1__0_n_5\,
      O(1) => \time_out_counter_reg[4]_i_1__0_n_6\,
      O(0) => \time_out_counter_reg[4]_i_1__0_n_7\,
      S(3 downto 0) => time_out_counter_reg(7 downto 4)
    );
\time_out_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1__0_n_6\,
      Q => time_out_counter_reg(5),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1__0_n_5\,
      Q => time_out_counter_reg(6),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1__0_n_4\,
      Q => time_out_counter_reg(7),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1__0_n_7\,
      Q => time_out_counter_reg(8),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[4]_i_1__0_n_0\,
      CO(3) => \time_out_counter_reg[8]_i_1__0_n_0\,
      CO(2) => \time_out_counter_reg[8]_i_1__0_n_1\,
      CO(1) => \time_out_counter_reg[8]_i_1__0_n_2\,
      CO(0) => \time_out_counter_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[8]_i_1__0_n_4\,
      O(2) => \time_out_counter_reg[8]_i_1__0_n_5\,
      O(1) => \time_out_counter_reg[8]_i_1__0_n_6\,
      O(0) => \time_out_counter_reg[8]_i_1__0_n_7\,
      S(3 downto 0) => time_out_counter_reg(11 downto 8)
    );
\time_out_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1__0_n_6\,
      Q => time_out_counter_reg(9),
      R => reset_time_out_reg_n_0
    );
\time_out_wait_bypass_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AB00"
    )
        port map (
      I0 => time_out_wait_bypass_reg_n_0,
      I1 => rx_fsm_reset_done_int_s3,
      I2 => \wait_bypass_count[0]_i_4__0_n_0\,
      I3 => run_phase_alignment_int_s3_reg_n_0,
      O => \time_out_wait_bypass_i_1__0_n_0\
    );
time_out_wait_bypass_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => \time_out_wait_bypass_i_1__0_n_0\,
      Q => time_out_wait_bypass_reg_n_0,
      R => '0'
    );
time_out_wait_bypass_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => time_out_wait_bypass_s2,
      Q => time_out_wait_bypass_s3,
      R => '0'
    );
time_tlock_max_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFDFF0000"
    )
        port map (
      I0 => time_tlock_max_i_2_n_0,
      I1 => time_out_counter_reg(19),
      I2 => time_out_counter_reg(15),
      I3 => time_tlock_max_i_3_n_0,
      I4 => check_tlock_max_reg_n_0,
      I5 => time_tlock_max,
      O => time_tlock_max_i_1_n_0
    );
time_tlock_max_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555555555DFDD"
    )
        port map (
      I0 => time_out_counter_reg(14),
      I1 => time_tlock_max_i_4_n_0,
      I2 => time_tlock_max_i_5_n_0,
      I3 => time_tlock_max_i_6_n_0,
      I4 => time_out_counter_reg(12),
      I5 => time_out_counter_reg(13),
      O => time_tlock_max_i_2_n_0
    );
time_tlock_max_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => time_out_counter_reg(16),
      I1 => time_out_counter_reg(17),
      I2 => time_out_counter_reg(18),
      O => time_tlock_max_i_3_n_0
    );
time_tlock_max_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => time_out_counter_reg(10),
      I1 => time_out_counter_reg(9),
      I2 => time_out_counter_reg(11),
      O => time_tlock_max_i_4_n_0
    );
time_tlock_max_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => time_out_counter_reg(5),
      I1 => time_out_counter_reg(3),
      I2 => time_out_counter_reg(4),
      I3 => time_out_counter_reg(2),
      I4 => time_out_counter_reg(1),
      I5 => time_out_counter_reg(0),
      O => time_tlock_max_i_5_n_0
    );
time_tlock_max_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => time_out_counter_reg(8),
      I1 => time_out_counter_reg(7),
      I2 => time_out_counter_reg(6),
      O => time_tlock_max_i_6_n_0
    );
time_tlock_max_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => time_tlock_max_i_1_n_0,
      Q => time_tlock_max,
      R => reset_time_out_reg_n_0
    );
\wait_bypass_count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => run_phase_alignment_int_s3_reg_n_0,
      O => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count[0]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \wait_bypass_count[0]_i_4__0_n_0\,
      I1 => rx_fsm_reset_done_int_s3,
      O => \wait_bypass_count[0]_i_2__0_n_0\
    );
\wait_bypass_count[0]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFFFFFF"
    )
        port map (
      I0 => \wait_bypass_count[0]_i_6__0_n_0\,
      I1 => wait_bypass_count_reg(1),
      I2 => wait_bypass_count_reg(11),
      I3 => wait_bypass_count_reg(0),
      I4 => \wait_bypass_count[0]_i_7__0_n_0\,
      O => \wait_bypass_count[0]_i_4__0_n_0\
    );
\wait_bypass_count[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_bypass_count_reg(0),
      O => \wait_bypass_count[0]_i_5_n_0\
    );
\wait_bypass_count[0]_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => wait_bypass_count_reg(9),
      I1 => wait_bypass_count_reg(4),
      I2 => wait_bypass_count_reg(12),
      I3 => wait_bypass_count_reg(2),
      O => \wait_bypass_count[0]_i_6__0_n_0\
    );
\wait_bypass_count[0]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => wait_bypass_count_reg(5),
      I1 => wait_bypass_count_reg(7),
      I2 => wait_bypass_count_reg(3),
      I3 => wait_bypass_count_reg(6),
      I4 => wait_bypass_count_reg(10),
      I5 => wait_bypass_count_reg(8),
      O => \wait_bypass_count[0]_i_7__0_n_0\
    );
\wait_bypass_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[0]_i_3__0_n_7\,
      Q => wait_bypass_count_reg(0),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[0]_i_3__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \wait_bypass_count_reg[0]_i_3__0_n_0\,
      CO(2) => \wait_bypass_count_reg[0]_i_3__0_n_1\,
      CO(1) => \wait_bypass_count_reg[0]_i_3__0_n_2\,
      CO(0) => \wait_bypass_count_reg[0]_i_3__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \wait_bypass_count_reg[0]_i_3__0_n_4\,
      O(2) => \wait_bypass_count_reg[0]_i_3__0_n_5\,
      O(1) => \wait_bypass_count_reg[0]_i_3__0_n_6\,
      O(0) => \wait_bypass_count_reg[0]_i_3__0_n_7\,
      S(3 downto 1) => wait_bypass_count_reg(3 downto 1),
      S(0) => \wait_bypass_count[0]_i_5_n_0\
    );
\wait_bypass_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[8]_i_1__0_n_5\,
      Q => wait_bypass_count_reg(10),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[8]_i_1__0_n_4\,
      Q => wait_bypass_count_reg(11),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[12]_i_1__0_n_7\,
      Q => wait_bypass_count_reg(12),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[8]_i_1__0_n_0\,
      CO(3 downto 0) => \NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED\(3 downto 1),
      O(0) => \wait_bypass_count_reg[12]_i_1__0_n_7\,
      S(3 downto 1) => B"000",
      S(0) => wait_bypass_count_reg(12)
    );
\wait_bypass_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[0]_i_3__0_n_6\,
      Q => wait_bypass_count_reg(1),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[0]_i_3__0_n_5\,
      Q => wait_bypass_count_reg(2),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[0]_i_3__0_n_4\,
      Q => wait_bypass_count_reg(3),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[4]_i_1__0_n_7\,
      Q => wait_bypass_count_reg(4),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[0]_i_3__0_n_0\,
      CO(3) => \wait_bypass_count_reg[4]_i_1__0_n_0\,
      CO(2) => \wait_bypass_count_reg[4]_i_1__0_n_1\,
      CO(1) => \wait_bypass_count_reg[4]_i_1__0_n_2\,
      CO(0) => \wait_bypass_count_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_bypass_count_reg[4]_i_1__0_n_4\,
      O(2) => \wait_bypass_count_reg[4]_i_1__0_n_5\,
      O(1) => \wait_bypass_count_reg[4]_i_1__0_n_6\,
      O(0) => \wait_bypass_count_reg[4]_i_1__0_n_7\,
      S(3 downto 0) => wait_bypass_count_reg(7 downto 4)
    );
\wait_bypass_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[4]_i_1__0_n_6\,
      Q => wait_bypass_count_reg(5),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[4]_i_1__0_n_5\,
      Q => wait_bypass_count_reg(6),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[4]_i_1__0_n_4\,
      Q => wait_bypass_count_reg(7),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[8]_i_1__0_n_7\,
      Q => wait_bypass_count_reg(8),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[4]_i_1__0_n_0\,
      CO(3) => \wait_bypass_count_reg[8]_i_1__0_n_0\,
      CO(2) => \wait_bypass_count_reg[8]_i_1__0_n_1\,
      CO(1) => \wait_bypass_count_reg[8]_i_1__0_n_2\,
      CO(0) => \wait_bypass_count_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_bypass_count_reg[8]_i_1__0_n_4\,
      O(2) => \wait_bypass_count_reg[8]_i_1__0_n_5\,
      O(1) => \wait_bypass_count_reg[8]_i_1__0_n_6\,
      O(0) => \wait_bypass_count_reg[8]_i_1__0_n_7\,
      S(3 downto 0) => wait_bypass_count_reg(11 downto 8)
    );
\wait_bypass_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[8]_i_1__0_n_6\,
      Q => wait_bypass_count_reg(9),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_time_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => rx_state(3),
      I1 => rx_state(0),
      I2 => rx_state(1),
      O => \wait_time_cnt[0]_i_1_n_0\
    );
\wait_time_cnt[0]_i_10__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(1),
      O => \wait_time_cnt[0]_i_10__0_n_0\
    );
\wait_time_cnt[0]_i_11__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(0),
      O => \wait_time_cnt[0]_i_11__0_n_0\
    );
\wait_time_cnt[0]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \wait_time_cnt[0]_i_4__0_n_0\,
      I1 => \wait_time_cnt[0]_i_5__0_n_0\,
      I2 => \wait_time_cnt[0]_i_6__0_n_0\,
      I3 => \wait_time_cnt[0]_i_7__0_n_0\,
      O => \wait_time_cnt[0]_i_2__0_n_0\
    );
\wait_time_cnt[0]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => wait_time_cnt_reg(8),
      I1 => wait_time_cnt_reg(4),
      I2 => wait_time_cnt_reg(7),
      I3 => wait_time_cnt_reg(5),
      O => \wait_time_cnt[0]_i_4__0_n_0\
    );
\wait_time_cnt[0]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => wait_time_cnt_reg(9),
      I1 => wait_time_cnt_reg(6),
      I2 => wait_time_cnt_reg(10),
      I3 => wait_time_cnt_reg(11),
      O => \wait_time_cnt[0]_i_5__0_n_0\
    );
\wait_time_cnt[0]_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => wait_time_cnt_reg(0),
      I1 => wait_time_cnt_reg(1),
      I2 => wait_time_cnt_reg(2),
      I3 => wait_time_cnt_reg(3),
      O => \wait_time_cnt[0]_i_6__0_n_0\
    );
\wait_time_cnt[0]_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => wait_time_cnt_reg(15),
      I1 => wait_time_cnt_reg(14),
      I2 => wait_time_cnt_reg(12),
      I3 => wait_time_cnt_reg(13),
      O => \wait_time_cnt[0]_i_7__0_n_0\
    );
\wait_time_cnt[0]_i_8__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(3),
      O => \wait_time_cnt[0]_i_8__0_n_0\
    );
\wait_time_cnt[0]_i_9__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(2),
      O => \wait_time_cnt[0]_i_9__0_n_0\
    );
\wait_time_cnt[12]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(15),
      O => \wait_time_cnt[12]_i_2__0_n_0\
    );
\wait_time_cnt[12]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(14),
      O => \wait_time_cnt[12]_i_3__0_n_0\
    );
\wait_time_cnt[12]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(13),
      O => \wait_time_cnt[12]_i_4__0_n_0\
    );
\wait_time_cnt[12]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(12),
      O => \wait_time_cnt[12]_i_5__0_n_0\
    );
\wait_time_cnt[4]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(7),
      O => \wait_time_cnt[4]_i_2__0_n_0\
    );
\wait_time_cnt[4]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(6),
      O => \wait_time_cnt[4]_i_3__0_n_0\
    );
\wait_time_cnt[4]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(5),
      O => \wait_time_cnt[4]_i_4__0_n_0\
    );
\wait_time_cnt[4]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(4),
      O => \wait_time_cnt[4]_i_5__0_n_0\
    );
\wait_time_cnt[8]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(11),
      O => \wait_time_cnt[8]_i_2__0_n_0\
    );
\wait_time_cnt[8]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(10),
      O => \wait_time_cnt[8]_i_3__0_n_0\
    );
\wait_time_cnt[8]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(9),
      O => \wait_time_cnt[8]_i_4__0_n_0\
    );
\wait_time_cnt[8]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(8),
      O => \wait_time_cnt[8]_i_5__0_n_0\
    );
\wait_time_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => independent_clock_bufg,
      CE => \wait_time_cnt[0]_i_2__0_n_0\,
      D => \wait_time_cnt_reg[0]_i_3__0_n_7\,
      Q => wait_time_cnt_reg(0),
      R => \wait_time_cnt[0]_i_1_n_0\
    );
\wait_time_cnt_reg[0]_i_3__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \wait_time_cnt_reg[0]_i_3__0_n_0\,
      CO(2) => \wait_time_cnt_reg[0]_i_3__0_n_1\,
      CO(1) => \wait_time_cnt_reg[0]_i_3__0_n_2\,
      CO(0) => \wait_time_cnt_reg[0]_i_3__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \wait_time_cnt_reg[0]_i_3__0_n_4\,
      O(2) => \wait_time_cnt_reg[0]_i_3__0_n_5\,
      O(1) => \wait_time_cnt_reg[0]_i_3__0_n_6\,
      O(0) => \wait_time_cnt_reg[0]_i_3__0_n_7\,
      S(3) => \wait_time_cnt[0]_i_8__0_n_0\,
      S(2) => \wait_time_cnt[0]_i_9__0_n_0\,
      S(1) => \wait_time_cnt[0]_i_10__0_n_0\,
      S(0) => \wait_time_cnt[0]_i_11__0_n_0\
    );
\wait_time_cnt_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => independent_clock_bufg,
      CE => \wait_time_cnt[0]_i_2__0_n_0\,
      D => \wait_time_cnt_reg[8]_i_1__0_n_5\,
      Q => wait_time_cnt_reg(10),
      S => \wait_time_cnt[0]_i_1_n_0\
    );
\wait_time_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => independent_clock_bufg,
      CE => \wait_time_cnt[0]_i_2__0_n_0\,
      D => \wait_time_cnt_reg[8]_i_1__0_n_4\,
      Q => wait_time_cnt_reg(11),
      R => \wait_time_cnt[0]_i_1_n_0\
    );
\wait_time_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => independent_clock_bufg,
      CE => \wait_time_cnt[0]_i_2__0_n_0\,
      D => \wait_time_cnt_reg[12]_i_1__0_n_7\,
      Q => wait_time_cnt_reg(12),
      R => \wait_time_cnt[0]_i_1_n_0\
    );
\wait_time_cnt_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_time_cnt_reg[8]_i_1__0_n_0\,
      CO(3) => \NLW_wait_time_cnt_reg[12]_i_1__0_CO_UNCONNECTED\(3),
      CO(2) => \wait_time_cnt_reg[12]_i_1__0_n_1\,
      CO(1) => \wait_time_cnt_reg[12]_i_1__0_n_2\,
      CO(0) => \wait_time_cnt_reg[12]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3) => \wait_time_cnt_reg[12]_i_1__0_n_4\,
      O(2) => \wait_time_cnt_reg[12]_i_1__0_n_5\,
      O(1) => \wait_time_cnt_reg[12]_i_1__0_n_6\,
      O(0) => \wait_time_cnt_reg[12]_i_1__0_n_7\,
      S(3) => \wait_time_cnt[12]_i_2__0_n_0\,
      S(2) => \wait_time_cnt[12]_i_3__0_n_0\,
      S(1) => \wait_time_cnt[12]_i_4__0_n_0\,
      S(0) => \wait_time_cnt[12]_i_5__0_n_0\
    );
\wait_time_cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => independent_clock_bufg,
      CE => \wait_time_cnt[0]_i_2__0_n_0\,
      D => \wait_time_cnt_reg[12]_i_1__0_n_6\,
      Q => wait_time_cnt_reg(13),
      R => \wait_time_cnt[0]_i_1_n_0\
    );
\wait_time_cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => independent_clock_bufg,
      CE => \wait_time_cnt[0]_i_2__0_n_0\,
      D => \wait_time_cnt_reg[12]_i_1__0_n_5\,
      Q => wait_time_cnt_reg(14),
      R => \wait_time_cnt[0]_i_1_n_0\
    );
\wait_time_cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => independent_clock_bufg,
      CE => \wait_time_cnt[0]_i_2__0_n_0\,
      D => \wait_time_cnt_reg[12]_i_1__0_n_4\,
      Q => wait_time_cnt_reg(15),
      R => \wait_time_cnt[0]_i_1_n_0\
    );
\wait_time_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => independent_clock_bufg,
      CE => \wait_time_cnt[0]_i_2__0_n_0\,
      D => \wait_time_cnt_reg[0]_i_3__0_n_6\,
      Q => wait_time_cnt_reg(1),
      R => \wait_time_cnt[0]_i_1_n_0\
    );
\wait_time_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => independent_clock_bufg,
      CE => \wait_time_cnt[0]_i_2__0_n_0\,
      D => \wait_time_cnt_reg[0]_i_3__0_n_5\,
      Q => wait_time_cnt_reg(2),
      R => \wait_time_cnt[0]_i_1_n_0\
    );
\wait_time_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => independent_clock_bufg,
      CE => \wait_time_cnt[0]_i_2__0_n_0\,
      D => \wait_time_cnt_reg[0]_i_3__0_n_4\,
      Q => wait_time_cnt_reg(3),
      R => \wait_time_cnt[0]_i_1_n_0\
    );
\wait_time_cnt_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => independent_clock_bufg,
      CE => \wait_time_cnt[0]_i_2__0_n_0\,
      D => \wait_time_cnt_reg[4]_i_1__0_n_7\,
      Q => wait_time_cnt_reg(4),
      S => \wait_time_cnt[0]_i_1_n_0\
    );
\wait_time_cnt_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_time_cnt_reg[0]_i_3__0_n_0\,
      CO(3) => \wait_time_cnt_reg[4]_i_1__0_n_0\,
      CO(2) => \wait_time_cnt_reg[4]_i_1__0_n_1\,
      CO(1) => \wait_time_cnt_reg[4]_i_1__0_n_2\,
      CO(0) => \wait_time_cnt_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \wait_time_cnt_reg[4]_i_1__0_n_4\,
      O(2) => \wait_time_cnt_reg[4]_i_1__0_n_5\,
      O(1) => \wait_time_cnt_reg[4]_i_1__0_n_6\,
      O(0) => \wait_time_cnt_reg[4]_i_1__0_n_7\,
      S(3) => \wait_time_cnt[4]_i_2__0_n_0\,
      S(2) => \wait_time_cnt[4]_i_3__0_n_0\,
      S(1) => \wait_time_cnt[4]_i_4__0_n_0\,
      S(0) => \wait_time_cnt[4]_i_5__0_n_0\
    );
\wait_time_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => independent_clock_bufg,
      CE => \wait_time_cnt[0]_i_2__0_n_0\,
      D => \wait_time_cnt_reg[4]_i_1__0_n_6\,
      Q => wait_time_cnt_reg(5),
      R => \wait_time_cnt[0]_i_1_n_0\
    );
\wait_time_cnt_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => independent_clock_bufg,
      CE => \wait_time_cnt[0]_i_2__0_n_0\,
      D => \wait_time_cnt_reg[4]_i_1__0_n_5\,
      Q => wait_time_cnt_reg(6),
      S => \wait_time_cnt[0]_i_1_n_0\
    );
\wait_time_cnt_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => independent_clock_bufg,
      CE => \wait_time_cnt[0]_i_2__0_n_0\,
      D => \wait_time_cnt_reg[4]_i_1__0_n_4\,
      Q => wait_time_cnt_reg(7),
      S => \wait_time_cnt[0]_i_1_n_0\
    );
\wait_time_cnt_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => independent_clock_bufg,
      CE => \wait_time_cnt[0]_i_2__0_n_0\,
      D => \wait_time_cnt_reg[8]_i_1__0_n_7\,
      Q => wait_time_cnt_reg(8),
      S => \wait_time_cnt[0]_i_1_n_0\
    );
\wait_time_cnt_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_time_cnt_reg[4]_i_1__0_n_0\,
      CO(3) => \wait_time_cnt_reg[8]_i_1__0_n_0\,
      CO(2) => \wait_time_cnt_reg[8]_i_1__0_n_1\,
      CO(1) => \wait_time_cnt_reg[8]_i_1__0_n_2\,
      CO(0) => \wait_time_cnt_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \wait_time_cnt_reg[8]_i_1__0_n_4\,
      O(2) => \wait_time_cnt_reg[8]_i_1__0_n_5\,
      O(1) => \wait_time_cnt_reg[8]_i_1__0_n_6\,
      O(0) => \wait_time_cnt_reg[8]_i_1__0_n_7\,
      S(3) => \wait_time_cnt[8]_i_2__0_n_0\,
      S(2) => \wait_time_cnt[8]_i_3__0_n_0\,
      S(1) => \wait_time_cnt[8]_i_4__0_n_0\,
      S(0) => \wait_time_cnt[8]_i_5__0_n_0\
    );
\wait_time_cnt_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => independent_clock_bufg,
      CE => \wait_time_cnt[0]_i_2__0_n_0\,
      D => \wait_time_cnt_reg[8]_i_1__0_n_6\,
      Q => wait_time_cnt_reg(9),
      S => \wait_time_cnt[0]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_TX_STARTUP_FSM is
  port (
    mmcm_reset : out STD_LOGIC;
    PLL0_RESET_reg_0 : out STD_LOGIC;
    data_in : out STD_LOGIC;
    gt0_txuserrdy_i : out STD_LOGIC;
    gt0_gttxreset_gt : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    userclk : in STD_LOGIC;
    pma_reset : in STD_LOGIC;
    gt0_pll0refclklost_in : in STD_LOGIC;
    txn : in STD_LOGIC;
    data_sync_reg1 : in STD_LOGIC;
    mmcm_locked : in STD_LOGIC;
    gt0_pll0lock_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_TX_STARTUP_FSM : entity is "gig_ethernet_pcs_pma_0_TX_STARTUP_FSM";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_TX_STARTUP_FSM;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_TX_STARTUP_FSM is
  signal \FSM_sequential_tx_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_7_n_0\ : STD_LOGIC;
  signal MMCM_RESET_i_1_n_0 : STD_LOGIC;
  signal PLL0_RESET0 : STD_LOGIC;
  signal PLL0_RESET_i_1_n_0 : STD_LOGIC;
  signal \^pll0_reset_reg_0\ : STD_LOGIC;
  signal TXUSERRDY_i_1_n_0 : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal \^data_in\ : STD_LOGIC;
  signal gt0_gttxreset_t : STD_LOGIC;
  signal \^gt0_txuserrdy_i\ : STD_LOGIC;
  signal gttxreset_i_i_1_n_0 : STD_LOGIC;
  signal init_wait_count : STD_LOGIC;
  signal \init_wait_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \init_wait_count[7]_i_3_n_0\ : STD_LOGIC;
  signal \init_wait_count[7]_i_4_n_0\ : STD_LOGIC;
  signal init_wait_count_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal init_wait_done_i_1_n_0 : STD_LOGIC;
  signal init_wait_done_reg_n_0 : STD_LOGIC;
  signal \mmcm_lock_count[7]_i_2_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[7]_i_4_n_0\ : STD_LOGIC;
  signal mmcm_lock_count_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mmcm_lock_reclocked : STD_LOGIC;
  signal \^mmcm_reset\ : STD_LOGIC;
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal pll_reset_asserted_i_1_n_0 : STD_LOGIC;
  signal pll_reset_asserted_reg_n_0 : STD_LOGIC;
  signal refclk_stable_count : STD_LOGIC;
  signal \refclk_stable_count[0]_i_3_n_0\ : STD_LOGIC;
  signal \refclk_stable_count[0]_i_4_n_0\ : STD_LOGIC;
  signal \refclk_stable_count[0]_i_5_n_0\ : STD_LOGIC;
  signal \refclk_stable_count[0]_i_6_n_0\ : STD_LOGIC;
  signal \refclk_stable_count[0]_i_7_n_0\ : STD_LOGIC;
  signal refclk_stable_count_reg : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \refclk_stable_count_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \refclk_stable_count_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \refclk_stable_count_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \refclk_stable_count_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \refclk_stable_count_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \refclk_stable_count_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \refclk_stable_count_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \refclk_stable_count_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \refclk_stable_count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \refclk_stable_count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \refclk_stable_count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \refclk_stable_count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \refclk_stable_count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \refclk_stable_count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \refclk_stable_count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \refclk_stable_count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \refclk_stable_count_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \refclk_stable_count_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \refclk_stable_count_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \refclk_stable_count_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \refclk_stable_count_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \refclk_stable_count_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \refclk_stable_count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \refclk_stable_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \refclk_stable_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \refclk_stable_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \refclk_stable_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \refclk_stable_count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \refclk_stable_count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \refclk_stable_count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \refclk_stable_count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \refclk_stable_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \refclk_stable_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \refclk_stable_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \refclk_stable_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \refclk_stable_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \refclk_stable_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \refclk_stable_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \refclk_stable_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal refclk_stable_i_1_n_0 : STD_LOGIC;
  signal refclk_stable_reg_n_0 : STD_LOGIC;
  signal reset_time_out : STD_LOGIC;
  signal reset_time_out_i_3_n_0 : STD_LOGIC;
  signal run_phase_alignment_int_i_1_n_0 : STD_LOGIC;
  signal run_phase_alignment_int_reg_n_0 : STD_LOGIC;
  signal run_phase_alignment_int_s2 : STD_LOGIC;
  signal run_phase_alignment_int_s3 : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal sync_mmcm_lock_reclocked_n_0 : STD_LOGIC;
  signal sync_mmcm_lock_reclocked_n_1 : STD_LOGIC;
  signal sync_pll0lock_n_0 : STD_LOGIC;
  signal sync_pll0lock_n_1 : STD_LOGIC;
  signal time_out_2ms : STD_LOGIC;
  signal \time_out_2ms_i_1__0_n_0\ : STD_LOGIC;
  signal time_out_2ms_reg_n_0 : STD_LOGIC;
  signal time_out_500us_i_1_n_0 : STD_LOGIC;
  signal time_out_500us_i_2_n_0 : STD_LOGIC;
  signal time_out_500us_i_3_n_0 : STD_LOGIC;
  signal time_out_500us_reg_n_0 : STD_LOGIC;
  signal time_out_counter : STD_LOGIC;
  signal \time_out_counter[0]_i_4_n_0\ : STD_LOGIC;
  signal \time_out_counter[0]_i_5_n_0\ : STD_LOGIC;
  signal \time_out_counter[0]_i_6__0_n_0\ : STD_LOGIC;
  signal \time_out_counter[0]_i_7_n_0\ : STD_LOGIC;
  signal \time_out_counter[0]_i_8_n_0\ : STD_LOGIC;
  signal time_out_counter_reg : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal \time_out_counter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal time_out_wait_bypass_i_1_n_0 : STD_LOGIC;
  signal time_out_wait_bypass_reg_n_0 : STD_LOGIC;
  signal time_out_wait_bypass_s2 : STD_LOGIC;
  signal time_out_wait_bypass_s3 : STD_LOGIC;
  signal \time_tlock_max_i_1__0_n_0\ : STD_LOGIC;
  signal \time_tlock_max_i_2__0_n_0\ : STD_LOGIC;
  signal \time_tlock_max_i_3__0_n_0\ : STD_LOGIC;
  signal \time_tlock_max_i_4__0_n_0\ : STD_LOGIC;
  signal \time_tlock_max_i_5__0_n_0\ : STD_LOGIC;
  signal time_tlock_max_reg_n_0 : STD_LOGIC;
  signal tx_fsm_reset_done_int_i_1_n_0 : STD_LOGIC;
  signal tx_fsm_reset_done_int_s2 : STD_LOGIC;
  signal tx_fsm_reset_done_int_s3 : STD_LOGIC;
  signal tx_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal txresetdone_s2 : STD_LOGIC;
  signal txresetdone_s3 : STD_LOGIC;
  signal \wait_bypass_count[0]_i_2_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_4_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_5__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_6_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_7_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_8_n_0\ : STD_LOGIC;
  signal wait_bypass_count_reg : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \wait_bypass_count_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal wait_time_cnt0 : STD_LOGIC;
  signal \wait_time_cnt[0]_i_10_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[0]_i_11_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[0]_i_5_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[0]_i_6_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[0]_i_7_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[0]_i_8_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[0]_i_9_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[12]_i_2_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[12]_i_3_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[12]_i_4_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[12]_i_5_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[4]_i_3_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[4]_i_4_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[4]_i_5_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[8]_i_3_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[8]_i_4_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[8]_i_5_n_0\ : STD_LOGIC;
  signal wait_time_cnt_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \wait_time_cnt_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \wait_time_cnt_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \wait_time_cnt_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \wait_time_cnt_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \wait_time_cnt_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \wait_time_cnt_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \wait_time_cnt_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \wait_time_cnt_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \wait_time_cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \wait_time_cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \wait_time_cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \wait_time_cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \wait_time_cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \wait_time_cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \wait_time_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \wait_time_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \wait_time_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \wait_time_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \wait_time_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \wait_time_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \wait_time_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \wait_time_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \wait_time_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \wait_time_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \wait_time_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \wait_time_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \wait_time_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \wait_time_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \wait_time_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \wait_time_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \wait_time_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_refclk_stable_count_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_wait_time_cnt_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[0]_i_2\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[1]_i_2\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[2]_i_2\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[3]_i_4\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[3]_i_5\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[3]_i_7\ : label is "soft_lutpair62";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_state_reg[0]\ : label is "WAIT_FOR_TXOUTCLK:0100,RELEASE_PLL_RESET:0011,WAIT_FOR_PLL_LOCK:0010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,RESET_FSM_DONE:1001,WAIT_FOR_TXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_state_reg[1]\ : label is "WAIT_FOR_TXOUTCLK:0100,RELEASE_PLL_RESET:0011,WAIT_FOR_PLL_LOCK:0010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,RESET_FSM_DONE:1001,WAIT_FOR_TXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_state_reg[2]\ : label is "WAIT_FOR_TXOUTCLK:0100,RELEASE_PLL_RESET:0011,WAIT_FOR_PLL_LOCK:0010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,RESET_FSM_DONE:1001,WAIT_FOR_TXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_state_reg[3]\ : label is "WAIT_FOR_TXOUTCLK:0100,RELEASE_PLL_RESET:0011,WAIT_FOR_PLL_LOCK:0010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,RESET_FSM_DONE:1001,WAIT_FOR_TXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101";
  attribute SOFT_HLUTNM of MMCM_RESET_i_1 : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of gttxreset_i_i_1 : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \init_wait_count[0]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \init_wait_count[1]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \init_wait_count[2]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \init_wait_count[3]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \init_wait_count[4]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \init_wait_count[6]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \init_wait_count[7]_i_2\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \init_wait_count[7]_i_3\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \mmcm_lock_count[1]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \mmcm_lock_count[2]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \mmcm_lock_count[3]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \mmcm_lock_count[4]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \mmcm_lock_count[6]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \mmcm_lock_count[7]_i_3\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \time_out_counter[0]_i_5\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \time_tlock_max_i_4__0\ : label is "soft_lutpair66";
begin
  PLL0_RESET_reg_0 <= \^pll0_reset_reg_0\;
  data_in <= \^data_in\;
  gt0_txuserrdy_i <= \^gt0_txuserrdy_i\;
  mmcm_reset <= \^mmcm_reset\;
\FSM_sequential_tx_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11111000FFFFFFFF"
    )
        port map (
      I0 => \FSM_sequential_tx_state[2]_i_2_n_0\,
      I1 => \FSM_sequential_tx_state[3]_i_5_n_0\,
      I2 => tx_state(1),
      I3 => time_out_2ms_reg_n_0,
      I4 => tx_state(2),
      I5 => \FSM_sequential_tx_state[0]_i_2_n_0\,
      O => \FSM_sequential_tx_state[0]_i_1_n_0\
    );
\FSM_sequential_tx_state[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tx_state(0),
      I1 => tx_state(3),
      O => \FSM_sequential_tx_state[0]_i_2_n_0\
    );
\FSM_sequential_tx_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00070F00"
    )
        port map (
      I0 => \FSM_sequential_tx_state[1]_i_2_n_0\,
      I1 => tx_state(2),
      I2 => tx_state(3),
      I3 => tx_state(1),
      I4 => tx_state(0),
      O => \FSM_sequential_tx_state[1]_i_1_n_0\
    );
\FSM_sequential_tx_state[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => mmcm_lock_reclocked,
      I1 => time_tlock_max_reg_n_0,
      I2 => reset_time_out,
      O => \FSM_sequential_tx_state[1]_i_2_n_0\
    );
\FSM_sequential_tx_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4455445545444444"
    )
        port map (
      I0 => tx_state(3),
      I1 => \FSM_sequential_tx_state[2]_i_2_n_0\,
      I2 => time_out_2ms_reg_n_0,
      I3 => tx_state(0),
      I4 => tx_state(1),
      I5 => tx_state(2),
      O => \FSM_sequential_tx_state[2]_i_1_n_0\
    );
\FSM_sequential_tx_state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44444044"
    )
        port map (
      I0 => tx_state(1),
      I1 => tx_state(2),
      I2 => reset_time_out,
      I3 => time_tlock_max_reg_n_0,
      I4 => mmcm_lock_reclocked,
      O => \FSM_sequential_tx_state[2]_i_2_n_0\
    );
\FSM_sequential_tx_state[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5C50"
    )
        port map (
      I0 => time_out_wait_bypass_s3,
      I1 => tx_state(0),
      I2 => tx_state(3),
      I3 => \FSM_sequential_tx_state[3]_i_5_n_0\,
      O => \FSM_sequential_tx_state[3]_i_2_n_0\
    );
\FSM_sequential_tx_state[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tx_state(2),
      I1 => tx_state(1),
      O => \FSM_sequential_tx_state[3]_i_4_n_0\
    );
\FSM_sequential_tx_state[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => tx_state(1),
      I1 => tx_state(2),
      I2 => reset_time_out,
      I3 => time_out_500us_reg_n_0,
      O => \FSM_sequential_tx_state[3]_i_5_n_0\
    );
\FSM_sequential_tx_state[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => reset_time_out,
      I1 => time_tlock_max_reg_n_0,
      O => \FSM_sequential_tx_state[3]_i_7_n_0\
    );
\FSM_sequential_tx_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sync_pll0lock_n_0,
      D => \FSM_sequential_tx_state[0]_i_1_n_0\,
      Q => tx_state(0),
      R => pma_reset
    );
\FSM_sequential_tx_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sync_pll0lock_n_0,
      D => \FSM_sequential_tx_state[1]_i_1_n_0\,
      Q => tx_state(1),
      R => pma_reset
    );
\FSM_sequential_tx_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sync_pll0lock_n_0,
      D => \FSM_sequential_tx_state[2]_i_1_n_0\,
      Q => tx_state(2),
      R => pma_reset
    );
\FSM_sequential_tx_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sync_pll0lock_n_0,
      D => \FSM_sequential_tx_state[3]_i_2_n_0\,
      Q => tx_state(3),
      R => pma_reset
    );
MMCM_RESET_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70004"
    )
        port map (
      I0 => tx_state(2),
      I1 => tx_state(0),
      I2 => tx_state(1),
      I3 => tx_state(3),
      I4 => \^mmcm_reset\,
      O => MMCM_RESET_i_1_n_0
    );
MMCM_RESET_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => MMCM_RESET_i_1_n_0,
      Q => \^mmcm_reset\,
      R => pma_reset
    );
PLL0_RESET_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => PLL0_RESET0,
      I1 => tx_state(2),
      I2 => tx_state(0),
      I3 => tx_state(1),
      I4 => tx_state(3),
      I5 => \^pll0_reset_reg_0\,
      O => PLL0_RESET_i_1_n_0
    );
PLL0_RESET_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"37"
    )
        port map (
      I0 => pll_reset_asserted_reg_n_0,
      I1 => refclk_stable_reg_n_0,
      I2 => gt0_pll0refclklost_in,
      O => PLL0_RESET0
    );
PLL0_RESET_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => PLL0_RESET_i_1_n_0,
      Q => \^pll0_reset_reg_0\,
      R => pma_reset
    );
TXUSERRDY_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD2000"
    )
        port map (
      I0 => tx_state(0),
      I1 => tx_state(3),
      I2 => tx_state(1),
      I3 => tx_state(2),
      I4 => \^gt0_txuserrdy_i\,
      O => TXUSERRDY_i_1_n_0
    );
TXUSERRDY_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => TXUSERRDY_i_1_n_0,
      Q => \^gt0_txuserrdy_i\,
      R => pma_reset
    );
gtpe2_i_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => gt0_gttxreset_t,
      I1 => \^data_in\,
      I2 => txn,
      O => gt0_gttxreset_gt
    );
gttxreset_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0002"
    )
        port map (
      I0 => tx_state(0),
      I1 => tx_state(2),
      I2 => tx_state(1),
      I3 => tx_state(3),
      I4 => gt0_gttxreset_t,
      O => gttxreset_i_i_1_n_0
    );
gttxreset_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gttxreset_i_i_1_n_0,
      Q => gt0_gttxreset_t,
      R => pma_reset
    );
\init_wait_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => init_wait_count_reg(0),
      O => \init_wait_count[0]_i_1_n_0\
    );
\init_wait_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => init_wait_count_reg(0),
      I1 => init_wait_count_reg(1),
      O => \p_0_in__1\(1)
    );
\init_wait_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => init_wait_count_reg(2),
      I1 => init_wait_count_reg(0),
      I2 => init_wait_count_reg(1),
      O => \p_0_in__1\(2)
    );
\init_wait_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => init_wait_count_reg(3),
      I1 => init_wait_count_reg(1),
      I2 => init_wait_count_reg(0),
      I3 => init_wait_count_reg(2),
      O => \p_0_in__1\(3)
    );
\init_wait_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => init_wait_count_reg(4),
      I1 => init_wait_count_reg(2),
      I2 => init_wait_count_reg(0),
      I3 => init_wait_count_reg(1),
      I4 => init_wait_count_reg(3),
      O => \p_0_in__1\(4)
    );
\init_wait_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => init_wait_count_reg(3),
      I1 => init_wait_count_reg(1),
      I2 => init_wait_count_reg(0),
      I3 => init_wait_count_reg(2),
      I4 => init_wait_count_reg(4),
      I5 => init_wait_count_reg(5),
      O => \p_0_in__1\(5)
    );
\init_wait_count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => init_wait_count_reg(6),
      I1 => \init_wait_count[7]_i_4_n_0\,
      O => \p_0_in__1\(6)
    );
\init_wait_count[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFFFF"
    )
        port map (
      I0 => \init_wait_count[7]_i_3_n_0\,
      I1 => init_wait_count_reg(7),
      I2 => init_wait_count_reg(4),
      I3 => init_wait_count_reg(3),
      I4 => init_wait_count_reg(2),
      O => init_wait_count
    );
\init_wait_count[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => init_wait_count_reg(7),
      I1 => \init_wait_count[7]_i_4_n_0\,
      I2 => init_wait_count_reg(6),
      O => \p_0_in__1\(7)
    );
\init_wait_count[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => init_wait_count_reg(5),
      I1 => init_wait_count_reg(0),
      I2 => init_wait_count_reg(6),
      I3 => init_wait_count_reg(1),
      O => \init_wait_count[7]_i_3_n_0\
    );
\init_wait_count[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => init_wait_count_reg(5),
      I1 => init_wait_count_reg(4),
      I2 => init_wait_count_reg(2),
      I3 => init_wait_count_reg(0),
      I4 => init_wait_count_reg(1),
      I5 => init_wait_count_reg(3),
      O => \init_wait_count[7]_i_4_n_0\
    );
\init_wait_count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => pma_reset,
      D => \init_wait_count[0]_i_1_n_0\,
      Q => init_wait_count_reg(0)
    );
\init_wait_count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => pma_reset,
      D => \p_0_in__1\(1),
      Q => init_wait_count_reg(1)
    );
\init_wait_count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => pma_reset,
      D => \p_0_in__1\(2),
      Q => init_wait_count_reg(2)
    );
\init_wait_count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => pma_reset,
      D => \p_0_in__1\(3),
      Q => init_wait_count_reg(3)
    );
\init_wait_count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => pma_reset,
      D => \p_0_in__1\(4),
      Q => init_wait_count_reg(4)
    );
\init_wait_count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => pma_reset,
      D => \p_0_in__1\(5),
      Q => init_wait_count_reg(5)
    );
\init_wait_count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => pma_reset,
      D => \p_0_in__1\(6),
      Q => init_wait_count_reg(6)
    );
\init_wait_count_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => pma_reset,
      D => \p_0_in__1\(7),
      Q => init_wait_count_reg(7)
    );
init_wait_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF01000000"
    )
        port map (
      I0 => \init_wait_count[7]_i_3_n_0\,
      I1 => init_wait_count_reg(7),
      I2 => init_wait_count_reg(4),
      I3 => init_wait_count_reg(3),
      I4 => init_wait_count_reg(2),
      I5 => init_wait_done_reg_n_0,
      O => init_wait_done_i_1_n_0
    );
init_wait_done_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      CLR => pma_reset,
      D => init_wait_done_i_1_n_0,
      Q => init_wait_done_reg_n_0
    );
\mmcm_lock_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mmcm_lock_count_reg(0),
      O => \p_0_in__2\(0)
    );
\mmcm_lock_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mmcm_lock_count_reg(1),
      I1 => mmcm_lock_count_reg(0),
      O => \p_0_in__2\(1)
    );
\mmcm_lock_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => mmcm_lock_count_reg(2),
      I1 => mmcm_lock_count_reg(1),
      I2 => mmcm_lock_count_reg(0),
      O => \p_0_in__2\(2)
    );
\mmcm_lock_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => mmcm_lock_count_reg(3),
      I1 => mmcm_lock_count_reg(0),
      I2 => mmcm_lock_count_reg(1),
      I3 => mmcm_lock_count_reg(2),
      O => \p_0_in__2\(3)
    );
\mmcm_lock_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => mmcm_lock_count_reg(4),
      I1 => mmcm_lock_count_reg(2),
      I2 => mmcm_lock_count_reg(1),
      I3 => mmcm_lock_count_reg(0),
      I4 => mmcm_lock_count_reg(3),
      O => \p_0_in__2\(4)
    );
\mmcm_lock_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => mmcm_lock_count_reg(3),
      I1 => mmcm_lock_count_reg(0),
      I2 => mmcm_lock_count_reg(1),
      I3 => mmcm_lock_count_reg(2),
      I4 => mmcm_lock_count_reg(4),
      I5 => mmcm_lock_count_reg(5),
      O => \p_0_in__2\(5)
    );
\mmcm_lock_count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mmcm_lock_count_reg(6),
      I1 => \mmcm_lock_count[7]_i_4_n_0\,
      O => \p_0_in__2\(6)
    );
\mmcm_lock_count[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => mmcm_lock_count_reg(6),
      I1 => \mmcm_lock_count[7]_i_4_n_0\,
      I2 => mmcm_lock_count_reg(7),
      O => \mmcm_lock_count[7]_i_2_n_0\
    );
\mmcm_lock_count[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => mmcm_lock_count_reg(7),
      I1 => \mmcm_lock_count[7]_i_4_n_0\,
      I2 => mmcm_lock_count_reg(6),
      O => \p_0_in__2\(7)
    );
\mmcm_lock_count[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => mmcm_lock_count_reg(5),
      I1 => mmcm_lock_count_reg(4),
      I2 => mmcm_lock_count_reg(2),
      I3 => mmcm_lock_count_reg(1),
      I4 => mmcm_lock_count_reg(0),
      I5 => mmcm_lock_count_reg(3),
      O => \mmcm_lock_count[7]_i_4_n_0\
    );
\mmcm_lock_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2_n_0\,
      D => \p_0_in__2\(0),
      Q => mmcm_lock_count_reg(0),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2_n_0\,
      D => \p_0_in__2\(1),
      Q => mmcm_lock_count_reg(1),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2_n_0\,
      D => \p_0_in__2\(2),
      Q => mmcm_lock_count_reg(2),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2_n_0\,
      D => \p_0_in__2\(3),
      Q => mmcm_lock_count_reg(3),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2_n_0\,
      D => \p_0_in__2\(4),
      Q => mmcm_lock_count_reg(4),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2_n_0\,
      D => \p_0_in__2\(5),
      Q => mmcm_lock_count_reg(5),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2_n_0\,
      D => \p_0_in__2\(6),
      Q => mmcm_lock_count_reg(6),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2_n_0\,
      D => \p_0_in__2\(7),
      Q => mmcm_lock_count_reg(7),
      R => sync_mmcm_lock_reclocked_n_0
    );
mmcm_lock_reclocked_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => sync_mmcm_lock_reclocked_n_1,
      Q => mmcm_lock_reclocked,
      R => '0'
    );
pll_reset_asserted_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBFFFF00000400"
    )
        port map (
      I0 => tx_state(3),
      I1 => tx_state(0),
      I2 => tx_state(2),
      I3 => PLL0_RESET0,
      I4 => tx_state(1),
      I5 => pll_reset_asserted_reg_n_0,
      O => pll_reset_asserted_i_1_n_0
    );
pll_reset_asserted_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => pll_reset_asserted_i_1_n_0,
      Q => pll_reset_asserted_reg_n_0,
      R => pma_reset
    );
\refclk_stable_count[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEF"
    )
        port map (
      I0 => \refclk_stable_count[0]_i_3_n_0\,
      I1 => refclk_stable_count_reg(4),
      I2 => refclk_stable_count_reg(8),
      I3 => refclk_stable_count_reg(5),
      I4 => refclk_stable_count_reg(17),
      I5 => \refclk_stable_count[0]_i_4_n_0\,
      O => refclk_stable_count
    );
\refclk_stable_count[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => refclk_stable_count_reg(2),
      I1 => refclk_stable_count_reg(15),
      I2 => refclk_stable_count_reg(0),
      I3 => refclk_stable_count_reg(11),
      I4 => \refclk_stable_count[0]_i_6_n_0\,
      I5 => \refclk_stable_count[0]_i_7_n_0\,
      O => \refclk_stable_count[0]_i_3_n_0\
    );
\refclk_stable_count[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => refclk_stable_count_reg(6),
      I1 => refclk_stable_count_reg(1),
      I2 => refclk_stable_count_reg(10),
      I3 => refclk_stable_count_reg(18),
      O => \refclk_stable_count[0]_i_4_n_0\
    );
\refclk_stable_count[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => refclk_stable_count_reg(0),
      O => \refclk_stable_count[0]_i_5_n_0\
    );
\refclk_stable_count[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => refclk_stable_count_reg(13),
      I1 => refclk_stable_count_reg(19),
      I2 => refclk_stable_count_reg(12),
      I3 => refclk_stable_count_reg(14),
      O => \refclk_stable_count[0]_i_6_n_0\
    );
\refclk_stable_count[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => refclk_stable_count_reg(16),
      I1 => refclk_stable_count_reg(7),
      I2 => refclk_stable_count_reg(9),
      I3 => refclk_stable_count_reg(3),
      O => \refclk_stable_count[0]_i_7_n_0\
    );
\refclk_stable_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[0]_i_2_n_7\,
      Q => refclk_stable_count_reg(0),
      R => '0'
    );
\refclk_stable_count_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \refclk_stable_count_reg[0]_i_2_n_0\,
      CO(2) => \refclk_stable_count_reg[0]_i_2_n_1\,
      CO(1) => \refclk_stable_count_reg[0]_i_2_n_2\,
      CO(0) => \refclk_stable_count_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \refclk_stable_count_reg[0]_i_2_n_4\,
      O(2) => \refclk_stable_count_reg[0]_i_2_n_5\,
      O(1) => \refclk_stable_count_reg[0]_i_2_n_6\,
      O(0) => \refclk_stable_count_reg[0]_i_2_n_7\,
      S(3 downto 1) => refclk_stable_count_reg(3 downto 1),
      S(0) => \refclk_stable_count[0]_i_5_n_0\
    );
\refclk_stable_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[8]_i_1_n_5\,
      Q => refclk_stable_count_reg(10),
      R => '0'
    );
\refclk_stable_count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[8]_i_1_n_4\,
      Q => refclk_stable_count_reg(11),
      R => '0'
    );
\refclk_stable_count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[12]_i_1_n_7\,
      Q => refclk_stable_count_reg(12),
      R => '0'
    );
\refclk_stable_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \refclk_stable_count_reg[8]_i_1_n_0\,
      CO(3) => \refclk_stable_count_reg[12]_i_1_n_0\,
      CO(2) => \refclk_stable_count_reg[12]_i_1_n_1\,
      CO(1) => \refclk_stable_count_reg[12]_i_1_n_2\,
      CO(0) => \refclk_stable_count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \refclk_stable_count_reg[12]_i_1_n_4\,
      O(2) => \refclk_stable_count_reg[12]_i_1_n_5\,
      O(1) => \refclk_stable_count_reg[12]_i_1_n_6\,
      O(0) => \refclk_stable_count_reg[12]_i_1_n_7\,
      S(3 downto 0) => refclk_stable_count_reg(15 downto 12)
    );
\refclk_stable_count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[12]_i_1_n_6\,
      Q => refclk_stable_count_reg(13),
      R => '0'
    );
\refclk_stable_count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[12]_i_1_n_5\,
      Q => refclk_stable_count_reg(14),
      R => '0'
    );
\refclk_stable_count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[12]_i_1_n_4\,
      Q => refclk_stable_count_reg(15),
      R => '0'
    );
\refclk_stable_count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[16]_i_1_n_7\,
      Q => refclk_stable_count_reg(16),
      R => '0'
    );
\refclk_stable_count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \refclk_stable_count_reg[12]_i_1_n_0\,
      CO(3) => \NLW_refclk_stable_count_reg[16]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \refclk_stable_count_reg[16]_i_1_n_1\,
      CO(1) => \refclk_stable_count_reg[16]_i_1_n_2\,
      CO(0) => \refclk_stable_count_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \refclk_stable_count_reg[16]_i_1_n_4\,
      O(2) => \refclk_stable_count_reg[16]_i_1_n_5\,
      O(1) => \refclk_stable_count_reg[16]_i_1_n_6\,
      O(0) => \refclk_stable_count_reg[16]_i_1_n_7\,
      S(3 downto 0) => refclk_stable_count_reg(19 downto 16)
    );
\refclk_stable_count_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[16]_i_1_n_6\,
      Q => refclk_stable_count_reg(17),
      R => '0'
    );
\refclk_stable_count_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[16]_i_1_n_5\,
      Q => refclk_stable_count_reg(18),
      R => '0'
    );
\refclk_stable_count_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[16]_i_1_n_4\,
      Q => refclk_stable_count_reg(19),
      R => '0'
    );
\refclk_stable_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[0]_i_2_n_6\,
      Q => refclk_stable_count_reg(1),
      R => '0'
    );
\refclk_stable_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[0]_i_2_n_5\,
      Q => refclk_stable_count_reg(2),
      R => '0'
    );
\refclk_stable_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[0]_i_2_n_4\,
      Q => refclk_stable_count_reg(3),
      R => '0'
    );
\refclk_stable_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[4]_i_1_n_7\,
      Q => refclk_stable_count_reg(4),
      R => '0'
    );
\refclk_stable_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \refclk_stable_count_reg[0]_i_2_n_0\,
      CO(3) => \refclk_stable_count_reg[4]_i_1_n_0\,
      CO(2) => \refclk_stable_count_reg[4]_i_1_n_1\,
      CO(1) => \refclk_stable_count_reg[4]_i_1_n_2\,
      CO(0) => \refclk_stable_count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \refclk_stable_count_reg[4]_i_1_n_4\,
      O(2) => \refclk_stable_count_reg[4]_i_1_n_5\,
      O(1) => \refclk_stable_count_reg[4]_i_1_n_6\,
      O(0) => \refclk_stable_count_reg[4]_i_1_n_7\,
      S(3 downto 0) => refclk_stable_count_reg(7 downto 4)
    );
\refclk_stable_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[4]_i_1_n_6\,
      Q => refclk_stable_count_reg(5),
      R => '0'
    );
\refclk_stable_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[4]_i_1_n_5\,
      Q => refclk_stable_count_reg(6),
      R => '0'
    );
\refclk_stable_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[4]_i_1_n_4\,
      Q => refclk_stable_count_reg(7),
      R => '0'
    );
\refclk_stable_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[8]_i_1_n_7\,
      Q => refclk_stable_count_reg(8),
      R => '0'
    );
\refclk_stable_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \refclk_stable_count_reg[4]_i_1_n_0\,
      CO(3) => \refclk_stable_count_reg[8]_i_1_n_0\,
      CO(2) => \refclk_stable_count_reg[8]_i_1_n_1\,
      CO(1) => \refclk_stable_count_reg[8]_i_1_n_2\,
      CO(0) => \refclk_stable_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \refclk_stable_count_reg[8]_i_1_n_4\,
      O(2) => \refclk_stable_count_reg[8]_i_1_n_5\,
      O(1) => \refclk_stable_count_reg[8]_i_1_n_6\,
      O(0) => \refclk_stable_count_reg[8]_i_1_n_7\,
      S(3 downto 0) => refclk_stable_count_reg(11 downto 8)
    );
\refclk_stable_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[8]_i_1_n_6\,
      Q => refclk_stable_count_reg(9),
      R => '0'
    );
refclk_stable_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \refclk_stable_count[0]_i_4_n_0\,
      I1 => refclk_stable_count_reg(17),
      I2 => refclk_stable_count_reg(5),
      I3 => refclk_stable_count_reg(8),
      I4 => refclk_stable_count_reg(4),
      I5 => \refclk_stable_count[0]_i_3_n_0\,
      O => refclk_stable_i_1_n_0
    );
refclk_stable_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => refclk_stable_i_1_n_0,
      Q => refclk_stable_reg_n_0,
      R => '0'
    );
reset_time_out_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B833"
    )
        port map (
      I0 => txresetdone_s3,
      I1 => tx_state(1),
      I2 => mmcm_lock_reclocked,
      I3 => tx_state(2),
      O => reset_time_out_i_3_n_0
    );
reset_time_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => sync_pll0lock_n_1,
      Q => reset_time_out,
      R => pma_reset
    );
run_phase_alignment_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0100"
    )
        port map (
      I0 => tx_state(1),
      I1 => tx_state(2),
      I2 => tx_state(0),
      I3 => tx_state(3),
      I4 => run_phase_alignment_int_reg_n_0,
      O => run_phase_alignment_int_i_1_n_0
    );
run_phase_alignment_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => run_phase_alignment_int_i_1_n_0,
      Q => run_phase_alignment_int_reg_n_0,
      R => pma_reset
    );
run_phase_alignment_int_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => run_phase_alignment_int_s2,
      Q => run_phase_alignment_int_s3,
      R => '0'
    );
sync_TXRESETDONE: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_7
     port map (
      data_out => txresetdone_s2,
      data_sync_reg1_0 => data_sync_reg1,
      independent_clock_bufg => independent_clock_bufg
    );
sync_mmcm_lock_reclocked: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_8
     port map (
      Q(1 downto 0) => mmcm_lock_count_reg(7 downto 6),
      SR(0) => sync_mmcm_lock_reclocked_n_0,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_lock_reclocked => mmcm_lock_reclocked,
      mmcm_lock_reclocked_reg => sync_mmcm_lock_reclocked_n_1,
      mmcm_lock_reclocked_reg_0 => \mmcm_lock_count[7]_i_4_n_0\,
      mmcm_locked => mmcm_locked
    );
sync_pll0lock: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_9
     port map (
      E(0) => sync_pll0lock_n_0,
      \FSM_sequential_tx_state[3]_i_3_0\ => refclk_stable_reg_n_0,
      \FSM_sequential_tx_state[3]_i_3_1\ => pll_reset_asserted_reg_n_0,
      \FSM_sequential_tx_state[3]_i_3_2\ => time_out_500us_reg_n_0,
      \FSM_sequential_tx_state[3]_i_3_3\ => time_out_2ms_reg_n_0,
      \FSM_sequential_tx_state_reg[0]\ => init_wait_done_reg_n_0,
      \FSM_sequential_tx_state_reg[0]_0\ => \FSM_sequential_tx_state[3]_i_4_n_0\,
      \FSM_sequential_tx_state_reg[0]_1\ => \FSM_sequential_tx_state[3]_i_7_n_0\,
      \FSM_sequential_tx_state_reg[1]\ => sync_pll0lock_n_1,
      Q(3 downto 0) => tx_state(3 downto 0),
      gt0_pll0lock_in => gt0_pll0lock_in,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_lock_reclocked => mmcm_lock_reclocked,
      reset_time_out => reset_time_out,
      reset_time_out_reg => reset_time_out_i_3_n_0,
      sel => sel,
      txresetdone_s3 => txresetdone_s3
    );
sync_run_phase_alignment_int: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_10
     port map (
      data_in => run_phase_alignment_int_reg_n_0,
      data_out => run_phase_alignment_int_s2,
      userclk => userclk
    );
sync_time_out_wait_bypass: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_11
     port map (
      data_in => time_out_wait_bypass_reg_n_0,
      data_out => time_out_wait_bypass_s2,
      independent_clock_bufg => independent_clock_bufg
    );
sync_tx_fsm_reset_done_int: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_12
     port map (
      data_in => \^data_in\,
      data_out => tx_fsm_reset_done_int_s2,
      userclk => userclk
    );
\time_out_2ms_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => time_out_2ms_reg_n_0,
      I1 => time_out_2ms,
      I2 => reset_time_out,
      O => \time_out_2ms_i_1__0_n_0\
    );
time_out_2ms_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => \time_out_2ms_i_1__0_n_0\,
      Q => time_out_2ms_reg_n_0,
      R => '0'
    );
time_out_500us_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AAEA"
    )
        port map (
      I0 => time_out_500us_reg_n_0,
      I1 => time_out_500us_i_2_n_0,
      I2 => \time_tlock_max_i_2__0_n_0\,
      I3 => time_out_500us_i_3_n_0,
      I4 => reset_time_out,
      O => time_out_500us_i_1_n_0
    );
time_out_500us_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \time_out_counter[0]_i_5_n_0\,
      I1 => time_out_counter_reg(16),
      I2 => time_out_counter_reg(11),
      I3 => time_out_counter_reg(15),
      I4 => \time_tlock_max_i_3__0_n_0\,
      O => time_out_500us_i_2_n_0
    );
time_out_500us_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => time_out_counter_reg(13),
      I1 => time_out_counter_reg(8),
      I2 => time_out_counter_reg(6),
      I3 => time_out_counter_reg(7),
      I4 => time_out_counter_reg(14),
      O => time_out_500us_i_3_n_0
    );
time_out_500us_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => time_out_500us_i_1_n_0,
      Q => time_out_500us_reg_n_0,
      R => '0'
    );
\time_out_counter[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_2ms,
      O => time_out_counter
    );
\time_out_counter[0]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \time_out_counter[0]_i_5_n_0\,
      I1 => \time_out_counter[0]_i_6__0_n_0\,
      I2 => \time_out_counter[0]_i_7_n_0\,
      I3 => \time_out_counter[0]_i_8_n_0\,
      I4 => time_out_500us_i_3_n_0,
      O => time_out_2ms
    );
\time_out_counter[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(0),
      O => \time_out_counter[0]_i_4_n_0\
    );
\time_out_counter[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => time_out_counter_reg(12),
      I1 => time_out_counter_reg(13),
      I2 => time_out_counter_reg(14),
      O => \time_out_counter[0]_i_5_n_0\
    );
\time_out_counter[0]_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => time_out_counter_reg(3),
      I1 => time_out_counter_reg(5),
      I2 => time_out_counter_reg(9),
      I3 => time_out_counter_reg(10),
      O => \time_out_counter[0]_i_6__0_n_0\
    );
\time_out_counter[0]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => time_out_counter_reg(1),
      I1 => time_out_counter_reg(2),
      I2 => time_out_counter_reg(0),
      O => \time_out_counter[0]_i_7_n_0\
    );
\time_out_counter[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFFFFFFFFFF"
    )
        port map (
      I0 => time_out_counter_reg(16),
      I1 => time_out_counter_reg(15),
      I2 => time_out_counter_reg(4),
      I3 => time_out_counter_reg(18),
      I4 => time_out_counter_reg(11),
      I5 => time_out_counter_reg(17),
      O => \time_out_counter[0]_i_8_n_0\
    );
\time_out_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2_n_7\,
      Q => time_out_counter_reg(0),
      R => reset_time_out
    );
\time_out_counter_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \time_out_counter_reg[0]_i_2_n_0\,
      CO(2) => \time_out_counter_reg[0]_i_2_n_1\,
      CO(1) => \time_out_counter_reg[0]_i_2_n_2\,
      CO(0) => \time_out_counter_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \time_out_counter_reg[0]_i_2_n_4\,
      O(2) => \time_out_counter_reg[0]_i_2_n_5\,
      O(1) => \time_out_counter_reg[0]_i_2_n_6\,
      O(0) => \time_out_counter_reg[0]_i_2_n_7\,
      S(3 downto 1) => time_out_counter_reg(3 downto 1),
      S(0) => \time_out_counter[0]_i_4_n_0\
    );
\time_out_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1_n_5\,
      Q => time_out_counter_reg(10),
      R => reset_time_out
    );
\time_out_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1_n_4\,
      Q => time_out_counter_reg(11),
      R => reset_time_out
    );
\time_out_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1_n_7\,
      Q => time_out_counter_reg(12),
      R => reset_time_out
    );
\time_out_counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[8]_i_1_n_0\,
      CO(3) => \time_out_counter_reg[12]_i_1_n_0\,
      CO(2) => \time_out_counter_reg[12]_i_1_n_1\,
      CO(1) => \time_out_counter_reg[12]_i_1_n_2\,
      CO(0) => \time_out_counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[12]_i_1_n_4\,
      O(2) => \time_out_counter_reg[12]_i_1_n_5\,
      O(1) => \time_out_counter_reg[12]_i_1_n_6\,
      O(0) => \time_out_counter_reg[12]_i_1_n_7\,
      S(3 downto 0) => time_out_counter_reg(15 downto 12)
    );
\time_out_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1_n_6\,
      Q => time_out_counter_reg(13),
      R => reset_time_out
    );
\time_out_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1_n_5\,
      Q => time_out_counter_reg(14),
      R => reset_time_out
    );
\time_out_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1_n_4\,
      Q => time_out_counter_reg(15),
      R => reset_time_out
    );
\time_out_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[16]_i_1_n_7\,
      Q => time_out_counter_reg(16),
      R => reset_time_out
    );
\time_out_counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[12]_i_1_n_0\,
      CO(3 downto 2) => \NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \time_out_counter_reg[16]_i_1_n_2\,
      CO(0) => \time_out_counter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED\(3),
      O(2) => \time_out_counter_reg[16]_i_1_n_5\,
      O(1) => \time_out_counter_reg[16]_i_1_n_6\,
      O(0) => \time_out_counter_reg[16]_i_1_n_7\,
      S(3) => '0',
      S(2 downto 0) => time_out_counter_reg(18 downto 16)
    );
\time_out_counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[16]_i_1_n_6\,
      Q => time_out_counter_reg(17),
      R => reset_time_out
    );
\time_out_counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[16]_i_1_n_5\,
      Q => time_out_counter_reg(18),
      R => reset_time_out
    );
\time_out_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2_n_6\,
      Q => time_out_counter_reg(1),
      R => reset_time_out
    );
\time_out_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2_n_5\,
      Q => time_out_counter_reg(2),
      R => reset_time_out
    );
\time_out_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2_n_4\,
      Q => time_out_counter_reg(3),
      R => reset_time_out
    );
\time_out_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1_n_7\,
      Q => time_out_counter_reg(4),
      R => reset_time_out
    );
\time_out_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[0]_i_2_n_0\,
      CO(3) => \time_out_counter_reg[4]_i_1_n_0\,
      CO(2) => \time_out_counter_reg[4]_i_1_n_1\,
      CO(1) => \time_out_counter_reg[4]_i_1_n_2\,
      CO(0) => \time_out_counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[4]_i_1_n_4\,
      O(2) => \time_out_counter_reg[4]_i_1_n_5\,
      O(1) => \time_out_counter_reg[4]_i_1_n_6\,
      O(0) => \time_out_counter_reg[4]_i_1_n_7\,
      S(3 downto 0) => time_out_counter_reg(7 downto 4)
    );
\time_out_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1_n_6\,
      Q => time_out_counter_reg(5),
      R => reset_time_out
    );
\time_out_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1_n_5\,
      Q => time_out_counter_reg(6),
      R => reset_time_out
    );
\time_out_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1_n_4\,
      Q => time_out_counter_reg(7),
      R => reset_time_out
    );
\time_out_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1_n_7\,
      Q => time_out_counter_reg(8),
      R => reset_time_out
    );
\time_out_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[4]_i_1_n_0\,
      CO(3) => \time_out_counter_reg[8]_i_1_n_0\,
      CO(2) => \time_out_counter_reg[8]_i_1_n_1\,
      CO(1) => \time_out_counter_reg[8]_i_1_n_2\,
      CO(0) => \time_out_counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[8]_i_1_n_4\,
      O(2) => \time_out_counter_reg[8]_i_1_n_5\,
      O(1) => \time_out_counter_reg[8]_i_1_n_6\,
      O(0) => \time_out_counter_reg[8]_i_1_n_7\,
      S(3 downto 0) => time_out_counter_reg(11 downto 8)
    );
\time_out_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1_n_6\,
      Q => time_out_counter_reg(9),
      R => reset_time_out
    );
time_out_wait_bypass_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AB00"
    )
        port map (
      I0 => time_out_wait_bypass_reg_n_0,
      I1 => tx_fsm_reset_done_int_s3,
      I2 => \wait_bypass_count[0]_i_4_n_0\,
      I3 => run_phase_alignment_int_s3,
      O => time_out_wait_bypass_i_1_n_0
    );
time_out_wait_bypass_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => time_out_wait_bypass_i_1_n_0,
      Q => time_out_wait_bypass_reg_n_0,
      R => '0'
    );
time_out_wait_bypass_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => time_out_wait_bypass_s2,
      Q => time_out_wait_bypass_s3,
      R => '0'
    );
\time_tlock_max_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAAAAE"
    )
        port map (
      I0 => time_tlock_max_reg_n_0,
      I1 => \time_tlock_max_i_2__0_n_0\,
      I2 => \time_tlock_max_i_3__0_n_0\,
      I3 => \time_tlock_max_i_4__0_n_0\,
      I4 => \time_tlock_max_i_5__0_n_0\,
      I5 => reset_time_out,
      O => \time_tlock_max_i_1__0_n_0\
    );
\time_tlock_max_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => time_out_counter_reg(0),
      I1 => time_out_counter_reg(2),
      I2 => time_out_counter_reg(1),
      I3 => time_out_counter_reg(4),
      I4 => time_out_counter_reg(5),
      I5 => time_out_counter_reg(3),
      O => \time_tlock_max_i_2__0_n_0\
    );
\time_tlock_max_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => time_out_counter_reg(9),
      I1 => time_out_counter_reg(17),
      I2 => time_out_counter_reg(10),
      I3 => time_out_counter_reg(18),
      O => \time_tlock_max_i_3__0_n_0\
    );
\time_tlock_max_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => time_out_counter_reg(7),
      I1 => time_out_counter_reg(11),
      I2 => time_out_counter_reg(12),
      O => \time_tlock_max_i_4__0_n_0\
    );
\time_tlock_max_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => time_out_counter_reg(13),
      I1 => time_out_counter_reg(8),
      I2 => time_out_counter_reg(6),
      I3 => time_out_counter_reg(14),
      I4 => time_out_counter_reg(15),
      I5 => time_out_counter_reg(16),
      O => \time_tlock_max_i_5__0_n_0\
    );
time_tlock_max_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => \time_tlock_max_i_1__0_n_0\,
      Q => time_tlock_max_reg_n_0,
      R => '0'
    );
tx_fsm_reset_done_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0200"
    )
        port map (
      I0 => tx_state(0),
      I1 => tx_state(1),
      I2 => tx_state(2),
      I3 => tx_state(3),
      I4 => \^data_in\,
      O => tx_fsm_reset_done_int_i_1_n_0
    );
tx_fsm_reset_done_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => tx_fsm_reset_done_int_i_1_n_0,
      Q => \^data_in\,
      R => pma_reset
    );
tx_fsm_reset_done_int_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => tx_fsm_reset_done_int_s2,
      Q => tx_fsm_reset_done_int_s3,
      R => '0'
    );
txresetdone_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => txresetdone_s2,
      Q => txresetdone_s3,
      R => '0'
    );
\wait_bypass_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => run_phase_alignment_int_s3,
      O => clear
    );
\wait_bypass_count[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \wait_bypass_count[0]_i_4_n_0\,
      I1 => tx_fsm_reset_done_int_s3,
      O => \wait_bypass_count[0]_i_2_n_0\
    );
\wait_bypass_count[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEFFFFFFFFF"
    )
        port map (
      I0 => \wait_bypass_count[0]_i_6_n_0\,
      I1 => \wait_bypass_count[0]_i_7_n_0\,
      I2 => wait_bypass_count_reg(5),
      I3 => wait_bypass_count_reg(13),
      I4 => wait_bypass_count_reg(11),
      I5 => \wait_bypass_count[0]_i_8_n_0\,
      O => \wait_bypass_count[0]_i_4_n_0\
    );
\wait_bypass_count[0]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_bypass_count_reg(0),
      O => \wait_bypass_count[0]_i_5__0_n_0\
    );
\wait_bypass_count[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => wait_bypass_count_reg(16),
      I1 => wait_bypass_count_reg(9),
      I2 => wait_bypass_count_reg(12),
      I3 => wait_bypass_count_reg(10),
      O => \wait_bypass_count[0]_i_6_n_0\
    );
\wait_bypass_count[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => wait_bypass_count_reg(4),
      I1 => wait_bypass_count_reg(15),
      I2 => wait_bypass_count_reg(6),
      I3 => wait_bypass_count_reg(0),
      O => \wait_bypass_count[0]_i_7_n_0\
    );
\wait_bypass_count[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => wait_bypass_count_reg(8),
      I1 => wait_bypass_count_reg(1),
      I2 => wait_bypass_count_reg(7),
      I3 => wait_bypass_count_reg(14),
      I4 => wait_bypass_count_reg(2),
      I5 => wait_bypass_count_reg(3),
      O => \wait_bypass_count[0]_i_8_n_0\
    );
\wait_bypass_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[0]_i_3_n_7\,
      Q => wait_bypass_count_reg(0),
      R => clear
    );
\wait_bypass_count_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \wait_bypass_count_reg[0]_i_3_n_0\,
      CO(2) => \wait_bypass_count_reg[0]_i_3_n_1\,
      CO(1) => \wait_bypass_count_reg[0]_i_3_n_2\,
      CO(0) => \wait_bypass_count_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \wait_bypass_count_reg[0]_i_3_n_4\,
      O(2) => \wait_bypass_count_reg[0]_i_3_n_5\,
      O(1) => \wait_bypass_count_reg[0]_i_3_n_6\,
      O(0) => \wait_bypass_count_reg[0]_i_3_n_7\,
      S(3 downto 1) => wait_bypass_count_reg(3 downto 1),
      S(0) => \wait_bypass_count[0]_i_5__0_n_0\
    );
\wait_bypass_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[8]_i_1_n_5\,
      Q => wait_bypass_count_reg(10),
      R => clear
    );
\wait_bypass_count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[8]_i_1_n_4\,
      Q => wait_bypass_count_reg(11),
      R => clear
    );
\wait_bypass_count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[12]_i_1_n_7\,
      Q => wait_bypass_count_reg(12),
      R => clear
    );
\wait_bypass_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[8]_i_1_n_0\,
      CO(3) => \wait_bypass_count_reg[12]_i_1_n_0\,
      CO(2) => \wait_bypass_count_reg[12]_i_1_n_1\,
      CO(1) => \wait_bypass_count_reg[12]_i_1_n_2\,
      CO(0) => \wait_bypass_count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_bypass_count_reg[12]_i_1_n_4\,
      O(2) => \wait_bypass_count_reg[12]_i_1_n_5\,
      O(1) => \wait_bypass_count_reg[12]_i_1_n_6\,
      O(0) => \wait_bypass_count_reg[12]_i_1_n_7\,
      S(3 downto 0) => wait_bypass_count_reg(15 downto 12)
    );
\wait_bypass_count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[12]_i_1_n_6\,
      Q => wait_bypass_count_reg(13),
      R => clear
    );
\wait_bypass_count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[12]_i_1_n_5\,
      Q => wait_bypass_count_reg(14),
      R => clear
    );
\wait_bypass_count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[12]_i_1_n_4\,
      Q => wait_bypass_count_reg(15),
      R => clear
    );
\wait_bypass_count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[16]_i_1_n_7\,
      Q => wait_bypass_count_reg(16),
      R => clear
    );
\wait_bypass_count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[12]_i_1_n_0\,
      CO(3 downto 0) => \NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \wait_bypass_count_reg[16]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => wait_bypass_count_reg(16)
    );
\wait_bypass_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[0]_i_3_n_6\,
      Q => wait_bypass_count_reg(1),
      R => clear
    );
\wait_bypass_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[0]_i_3_n_5\,
      Q => wait_bypass_count_reg(2),
      R => clear
    );
\wait_bypass_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[0]_i_3_n_4\,
      Q => wait_bypass_count_reg(3),
      R => clear
    );
\wait_bypass_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[4]_i_1_n_7\,
      Q => wait_bypass_count_reg(4),
      R => clear
    );
\wait_bypass_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[0]_i_3_n_0\,
      CO(3) => \wait_bypass_count_reg[4]_i_1_n_0\,
      CO(2) => \wait_bypass_count_reg[4]_i_1_n_1\,
      CO(1) => \wait_bypass_count_reg[4]_i_1_n_2\,
      CO(0) => \wait_bypass_count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_bypass_count_reg[4]_i_1_n_4\,
      O(2) => \wait_bypass_count_reg[4]_i_1_n_5\,
      O(1) => \wait_bypass_count_reg[4]_i_1_n_6\,
      O(0) => \wait_bypass_count_reg[4]_i_1_n_7\,
      S(3 downto 0) => wait_bypass_count_reg(7 downto 4)
    );
\wait_bypass_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[4]_i_1_n_6\,
      Q => wait_bypass_count_reg(5),
      R => clear
    );
\wait_bypass_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[4]_i_1_n_5\,
      Q => wait_bypass_count_reg(6),
      R => clear
    );
\wait_bypass_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[4]_i_1_n_4\,
      Q => wait_bypass_count_reg(7),
      R => clear
    );
\wait_bypass_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[8]_i_1_n_7\,
      Q => wait_bypass_count_reg(8),
      R => clear
    );
\wait_bypass_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[4]_i_1_n_0\,
      CO(3) => \wait_bypass_count_reg[8]_i_1_n_0\,
      CO(2) => \wait_bypass_count_reg[8]_i_1_n_1\,
      CO(1) => \wait_bypass_count_reg[8]_i_1_n_2\,
      CO(0) => \wait_bypass_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_bypass_count_reg[8]_i_1_n_4\,
      O(2) => \wait_bypass_count_reg[8]_i_1_n_5\,
      O(1) => \wait_bypass_count_reg[8]_i_1_n_6\,
      O(0) => \wait_bypass_count_reg[8]_i_1_n_7\,
      S(3 downto 0) => wait_bypass_count_reg(11 downto 8)
    );
\wait_bypass_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[8]_i_1_n_6\,
      Q => wait_bypass_count_reg(9),
      R => clear
    );
\wait_time_cnt[0]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(1),
      O => \wait_time_cnt[0]_i_10_n_0\
    );
\wait_time_cnt[0]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(0),
      O => \wait_time_cnt[0]_i_11_n_0\
    );
\wait_time_cnt[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0444"
    )
        port map (
      I0 => tx_state(3),
      I1 => tx_state(0),
      I2 => tx_state(1),
      I3 => tx_state(2),
      O => wait_time_cnt0
    );
\wait_time_cnt[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \wait_time_cnt[0]_i_4_n_0\,
      I1 => \wait_time_cnt[0]_i_5_n_0\,
      I2 => \wait_time_cnt[0]_i_6_n_0\,
      I3 => \wait_time_cnt[0]_i_7_n_0\,
      O => sel
    );
\wait_time_cnt[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => wait_time_cnt_reg(8),
      I1 => wait_time_cnt_reg(9),
      I2 => wait_time_cnt_reg(10),
      I3 => wait_time_cnt_reg(11),
      O => \wait_time_cnt[0]_i_4_n_0\
    );
\wait_time_cnt[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => wait_time_cnt_reg(15),
      I1 => wait_time_cnt_reg(13),
      I2 => wait_time_cnt_reg(14),
      I3 => wait_time_cnt_reg(12),
      O => \wait_time_cnt[0]_i_5_n_0\
    );
\wait_time_cnt[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => wait_time_cnt_reg(6),
      I1 => wait_time_cnt_reg(7),
      I2 => wait_time_cnt_reg(4),
      I3 => wait_time_cnt_reg(5),
      O => \wait_time_cnt[0]_i_6_n_0\
    );
\wait_time_cnt[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => wait_time_cnt_reg(0),
      I1 => wait_time_cnt_reg(3),
      I2 => wait_time_cnt_reg(1),
      I3 => wait_time_cnt_reg(2),
      O => \wait_time_cnt[0]_i_7_n_0\
    );
\wait_time_cnt[0]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(3),
      O => \wait_time_cnt[0]_i_8_n_0\
    );
\wait_time_cnt[0]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(2),
      O => \wait_time_cnt[0]_i_9_n_0\
    );
\wait_time_cnt[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(15),
      O => \wait_time_cnt[12]_i_2_n_0\
    );
\wait_time_cnt[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(14),
      O => \wait_time_cnt[12]_i_3_n_0\
    );
\wait_time_cnt[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(13),
      O => \wait_time_cnt[12]_i_4_n_0\
    );
\wait_time_cnt[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(12),
      O => \wait_time_cnt[12]_i_5_n_0\
    );
\wait_time_cnt[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(7),
      O => \wait_time_cnt[4]_i_2_n_0\
    );
\wait_time_cnt[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(6),
      O => \wait_time_cnt[4]_i_3_n_0\
    );
\wait_time_cnt[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(5),
      O => \wait_time_cnt[4]_i_4_n_0\
    );
\wait_time_cnt[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(4),
      O => \wait_time_cnt[4]_i_5_n_0\
    );
\wait_time_cnt[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(11),
      O => \wait_time_cnt[8]_i_2_n_0\
    );
\wait_time_cnt[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(10),
      O => \wait_time_cnt[8]_i_3_n_0\
    );
\wait_time_cnt[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(9),
      O => \wait_time_cnt[8]_i_4_n_0\
    );
\wait_time_cnt[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(8),
      O => \wait_time_cnt[8]_i_5_n_0\
    );
\wait_time_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => independent_clock_bufg,
      CE => sel,
      D => \wait_time_cnt_reg[0]_i_3_n_7\,
      Q => wait_time_cnt_reg(0),
      R => wait_time_cnt0
    );
\wait_time_cnt_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \wait_time_cnt_reg[0]_i_3_n_0\,
      CO(2) => \wait_time_cnt_reg[0]_i_3_n_1\,
      CO(1) => \wait_time_cnt_reg[0]_i_3_n_2\,
      CO(0) => \wait_time_cnt_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \wait_time_cnt_reg[0]_i_3_n_4\,
      O(2) => \wait_time_cnt_reg[0]_i_3_n_5\,
      O(1) => \wait_time_cnt_reg[0]_i_3_n_6\,
      O(0) => \wait_time_cnt_reg[0]_i_3_n_7\,
      S(3) => \wait_time_cnt[0]_i_8_n_0\,
      S(2) => \wait_time_cnt[0]_i_9_n_0\,
      S(1) => \wait_time_cnt[0]_i_10_n_0\,
      S(0) => \wait_time_cnt[0]_i_11_n_0\
    );
\wait_time_cnt_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => independent_clock_bufg,
      CE => sel,
      D => \wait_time_cnt_reg[8]_i_1_n_5\,
      Q => wait_time_cnt_reg(10),
      S => wait_time_cnt0
    );
\wait_time_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => independent_clock_bufg,
      CE => sel,
      D => \wait_time_cnt_reg[8]_i_1_n_4\,
      Q => wait_time_cnt_reg(11),
      R => wait_time_cnt0
    );
\wait_time_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => independent_clock_bufg,
      CE => sel,
      D => \wait_time_cnt_reg[12]_i_1_n_7\,
      Q => wait_time_cnt_reg(12),
      R => wait_time_cnt0
    );
\wait_time_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_time_cnt_reg[8]_i_1_n_0\,
      CO(3) => \NLW_wait_time_cnt_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \wait_time_cnt_reg[12]_i_1_n_1\,
      CO(1) => \wait_time_cnt_reg[12]_i_1_n_2\,
      CO(0) => \wait_time_cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3) => \wait_time_cnt_reg[12]_i_1_n_4\,
      O(2) => \wait_time_cnt_reg[12]_i_1_n_5\,
      O(1) => \wait_time_cnt_reg[12]_i_1_n_6\,
      O(0) => \wait_time_cnt_reg[12]_i_1_n_7\,
      S(3) => \wait_time_cnt[12]_i_2_n_0\,
      S(2) => \wait_time_cnt[12]_i_3_n_0\,
      S(1) => \wait_time_cnt[12]_i_4_n_0\,
      S(0) => \wait_time_cnt[12]_i_5_n_0\
    );
\wait_time_cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => independent_clock_bufg,
      CE => sel,
      D => \wait_time_cnt_reg[12]_i_1_n_6\,
      Q => wait_time_cnt_reg(13),
      R => wait_time_cnt0
    );
\wait_time_cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => independent_clock_bufg,
      CE => sel,
      D => \wait_time_cnt_reg[12]_i_1_n_5\,
      Q => wait_time_cnt_reg(14),
      R => wait_time_cnt0
    );
\wait_time_cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => independent_clock_bufg,
      CE => sel,
      D => \wait_time_cnt_reg[12]_i_1_n_4\,
      Q => wait_time_cnt_reg(15),
      R => wait_time_cnt0
    );
\wait_time_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => independent_clock_bufg,
      CE => sel,
      D => \wait_time_cnt_reg[0]_i_3_n_6\,
      Q => wait_time_cnt_reg(1),
      R => wait_time_cnt0
    );
\wait_time_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => independent_clock_bufg,
      CE => sel,
      D => \wait_time_cnt_reg[0]_i_3_n_5\,
      Q => wait_time_cnt_reg(2),
      R => wait_time_cnt0
    );
\wait_time_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => independent_clock_bufg,
      CE => sel,
      D => \wait_time_cnt_reg[0]_i_3_n_4\,
      Q => wait_time_cnt_reg(3),
      R => wait_time_cnt0
    );
\wait_time_cnt_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => independent_clock_bufg,
      CE => sel,
      D => \wait_time_cnt_reg[4]_i_1_n_7\,
      Q => wait_time_cnt_reg(4),
      S => wait_time_cnt0
    );
\wait_time_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_time_cnt_reg[0]_i_3_n_0\,
      CO(3) => \wait_time_cnt_reg[4]_i_1_n_0\,
      CO(2) => \wait_time_cnt_reg[4]_i_1_n_1\,
      CO(1) => \wait_time_cnt_reg[4]_i_1_n_2\,
      CO(0) => \wait_time_cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \wait_time_cnt_reg[4]_i_1_n_4\,
      O(2) => \wait_time_cnt_reg[4]_i_1_n_5\,
      O(1) => \wait_time_cnt_reg[4]_i_1_n_6\,
      O(0) => \wait_time_cnt_reg[4]_i_1_n_7\,
      S(3) => \wait_time_cnt[4]_i_2_n_0\,
      S(2) => \wait_time_cnt[4]_i_3_n_0\,
      S(1) => \wait_time_cnt[4]_i_4_n_0\,
      S(0) => \wait_time_cnt[4]_i_5_n_0\
    );
\wait_time_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => independent_clock_bufg,
      CE => sel,
      D => \wait_time_cnt_reg[4]_i_1_n_6\,
      Q => wait_time_cnt_reg(5),
      R => wait_time_cnt0
    );
\wait_time_cnt_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => independent_clock_bufg,
      CE => sel,
      D => \wait_time_cnt_reg[4]_i_1_n_5\,
      Q => wait_time_cnt_reg(6),
      S => wait_time_cnt0
    );
\wait_time_cnt_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => independent_clock_bufg,
      CE => sel,
      D => \wait_time_cnt_reg[4]_i_1_n_4\,
      Q => wait_time_cnt_reg(7),
      S => wait_time_cnt0
    );
\wait_time_cnt_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => independent_clock_bufg,
      CE => sel,
      D => \wait_time_cnt_reg[8]_i_1_n_7\,
      Q => wait_time_cnt_reg(8),
      S => wait_time_cnt0
    );
\wait_time_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_time_cnt_reg[4]_i_1_n_0\,
      CO(3) => \wait_time_cnt_reg[8]_i_1_n_0\,
      CO(2) => \wait_time_cnt_reg[8]_i_1_n_1\,
      CO(1) => \wait_time_cnt_reg[8]_i_1_n_2\,
      CO(0) => \wait_time_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \wait_time_cnt_reg[8]_i_1_n_4\,
      O(2) => \wait_time_cnt_reg[8]_i_1_n_5\,
      O(1) => \wait_time_cnt_reg[8]_i_1_n_6\,
      O(0) => \wait_time_cnt_reg[8]_i_1_n_7\,
      S(3) => \wait_time_cnt[8]_i_2_n_0\,
      S(2) => \wait_time_cnt[8]_i_3_n_0\,
      S(1) => \wait_time_cnt[8]_i_4_n_0\,
      S(0) => \wait_time_cnt[8]_i_5_n_0\
    );
\wait_time_cnt_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => independent_clock_bufg,
      CE => sel,
      D => \wait_time_cnt_reg[8]_i_1_n_6\,
      Q => wait_time_cnt_reg(9),
      S => wait_time_cnt0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_gtwizard_gtrxreset_seq is
  port (
    gtrxreset_out : out STD_LOGIC;
    \FSM_onehot_state_reg[5]_0\ : out STD_LOGIC;
    DRPDI : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \FSM_onehot_state_reg[7]_0\ : out STD_LOGIC;
    DRPADDR : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk_bufg : in STD_LOGIC;
    \original_rd_data_reg[0]_0\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_in : in STD_LOGIC;
    reset_sync5 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_gtwizard_gtrxreset_seq : entity is "gig_ethernet_pcs_pma_0_gtwizard_gtrxreset_seq";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_gtwizard_gtrxreset_seq;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_gtwizard_gtrxreset_seq is
  signal DRP_OP_DONE_i_1_n_0 : STD_LOGIC;
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[7]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[7]\ : STD_LOGIC;
  signal drp_op_done : STD_LOGIC;
  signal flag : STD_LOGIC;
  signal flag_i_1_n_0 : STD_LOGIC;
  signal flag_reg_n_0 : STD_LOGIC;
  signal \gtrxreset_i__0\ : STD_LOGIC;
  signal gtrxreset_in_sync : STD_LOGIC;
  signal gtrxreset_s : STD_LOGIC;
  signal gtrxreset_ss : STD_LOGIC;
  signal in7 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal next_rd_data : STD_LOGIC;
  signal original_rd_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal original_rd_data0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal \rd_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[10]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[11]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[12]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[13]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[14]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[15]_i_2_n_0\ : STD_LOGIC;
  signal \rd_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[8]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[9]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data_reg_n_0_[11]\ : STD_LOGIC;
  signal rst_sync : STD_LOGIC;
  signal rxpmaresetdone_s : STD_LOGIC;
  signal rxpmaresetdone_ss : STD_LOGIC;
  signal rxpmaresetdone_sss : STD_LOGIC;
  signal rxpmaresetdone_sync : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of DRP_OP_DONE_i_1 : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \FSM_onehot_state[5]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \FSM_onehot_state[6]_i_1\ : label is "soft_lutpair81";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[5]\ : label is "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[6]\ : label is "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[7]\ : label is "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010";
  attribute SOFT_HLUTNM of gtpe2_i_i_1 : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of gtpe2_i_i_10 : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of gtpe2_i_i_11 : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of gtpe2_i_i_12 : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of gtpe2_i_i_13 : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of gtpe2_i_i_14 : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of gtpe2_i_i_15 : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of gtpe2_i_i_16 : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of gtpe2_i_i_17 : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of gtpe2_i_i_18 : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of gtpe2_i_i_19 : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of gtpe2_i_i_2 : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of gtpe2_i_i_20 : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of gtpe2_i_i_4 : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of gtpe2_i_i_5 : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of gtpe2_i_i_6 : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of gtpe2_i_i_7 : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of gtpe2_i_i_8 : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of gtpe2_i_i_9 : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \rd_data[0]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \rd_data[10]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \rd_data[11]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \rd_data[12]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \rd_data[13]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \rd_data[14]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \rd_data[15]_i_2\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \rd_data[1]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \rd_data[2]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \rd_data[3]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \rd_data[4]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \rd_data[5]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \rd_data[6]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \rd_data[7]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \rd_data[8]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \rd_data[9]_i_1\ : label is "soft_lutpair85";
begin
DRP_OP_DONE_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \original_rd_data_reg[0]_0\,
      I1 => flag,
      I2 => drp_op_done,
      O => DRP_OP_DONE_i_1_n_0
    );
DRP_OP_DONE_reg: unisim.vcomponents.FDCE
     port map (
      C => gtrefclk_bufg,
      CE => '1',
      CLR => gtrxreset_ss,
      D => DRP_OP_DONE_i_1_n_0,
      Q => drp_op_done
    );
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => p_2_in,
      I1 => \original_rd_data_reg[0]_0\,
      I2 => flag,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \original_rd_data_reg[0]_0\,
      I1 => flag,
      I2 => gtrxreset_ss,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => p_1_in,
      I1 => rxpmaresetdone_ss,
      I2 => rxpmaresetdone_sss,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD0D0D0"
    )
        port map (
      I0 => rxpmaresetdone_sss,
      I1 => rxpmaresetdone_ss,
      I2 => p_1_in,
      I3 => \original_rd_data_reg[0]_0\,
      I4 => p_3_in,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => \original_rd_data_reg[0]_0\,
      I2 => p_3_in,
      O => \FSM_onehot_state[4]_i_1_n_0\
    );
\FSM_onehot_state[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in,
      I1 => \original_rd_data_reg[0]_0\,
      O => \FSM_onehot_state[5]_i_1_n_0\
    );
\FSM_onehot_state[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[7]\,
      I1 => \original_rd_data_reg[0]_0\,
      I2 => p_0_in,
      O => \FSM_onehot_state[6]_i_1_n_0\
    );
\FSM_onehot_state[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => gtrxreset_ss,
      O => \FSM_onehot_state[7]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      CLR => rst_sync,
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => flag
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      PRE => rst_sync,
      Q => \FSM_onehot_state_reg_n_0_[1]\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      CLR => rst_sync,
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => p_2_in
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      CLR => rst_sync,
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => p_1_in
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      CLR => rst_sync,
      D => \FSM_onehot_state[4]_i_1_n_0\,
      Q => p_3_in
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      CLR => rst_sync,
      D => \FSM_onehot_state[5]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[5]\
    );
\FSM_onehot_state_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      CLR => rst_sync,
      D => \FSM_onehot_state[6]_i_1_n_0\,
      Q => p_0_in
    );
\FSM_onehot_state_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      CLR => rst_sync,
      D => \FSM_onehot_state[7]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[7]\
    );
flag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF4"
    )
        port map (
      I0 => flag,
      I1 => flag_reg_n_0,
      I2 => p_2_in,
      I3 => p_1_in,
      I4 => \FSM_onehot_state_reg_n_0_[5]\,
      I5 => p_3_in,
      O => flag_i_1_n_0
    );
flag_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      D => flag_i_1_n_0,
      Q => flag_reg_n_0,
      R => '0'
    );
gtpe2_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[7]\,
      I1 => p_2_in,
      I2 => \FSM_onehot_state_reg_n_0_[5]\,
      I3 => drp_op_done,
      O => \FSM_onehot_state_reg[7]_0\
    );
gtpe2_i_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(9),
      I3 => drp_op_done,
      O => DRPDI(9)
    );
gtpe2_i_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(8),
      I3 => drp_op_done,
      O => DRPDI(8)
    );
gtpe2_i_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(7),
      I3 => drp_op_done,
      O => DRPDI(7)
    );
gtpe2_i_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(6),
      I3 => drp_op_done,
      O => DRPDI(6)
    );
gtpe2_i_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(5),
      I3 => drp_op_done,
      O => DRPDI(5)
    );
gtpe2_i_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(4),
      I3 => drp_op_done,
      O => DRPDI(4)
    );
gtpe2_i_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(3),
      I3 => drp_op_done,
      O => DRPDI(3)
    );
gtpe2_i_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(2),
      I3 => drp_op_done,
      O => DRPDI(2)
    );
gtpe2_i_i_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(1),
      I3 => drp_op_done,
      O => DRPDI(1)
    );
gtpe2_i_i_19: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(0),
      I3 => drp_op_done,
      O => DRPDI(0)
    );
gtpe2_i_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => p_2_in,
      I2 => drp_op_done,
      O => \FSM_onehot_state_reg[5]_0\
    );
gtpe2_i_i_20: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => drp_op_done,
      O => DRPADDR(0)
    );
gtpe2_i_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(15),
      I3 => drp_op_done,
      O => DRPDI(15)
    );
gtpe2_i_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(14),
      I3 => drp_op_done,
      O => DRPDI(14)
    );
gtpe2_i_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(13),
      I3 => drp_op_done,
      O => DRPDI(13)
    );
gtpe2_i_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(12),
      I3 => drp_op_done,
      O => DRPDI(12)
    );
gtpe2_i_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \rd_data_reg_n_0_[11]\,
      I1 => p_2_in,
      I2 => drp_op_done,
      O => DRPDI(11)
    );
gtpe2_i_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(10),
      I3 => drp_op_done,
      O => DRPDI(10)
    );
gtrxreset_i: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[7]\,
      I1 => p_3_in,
      I2 => gtrxreset_ss,
      I3 => p_1_in,
      I4 => p_0_in,
      I5 => \FSM_onehot_state_reg_n_0_[5]\,
      O => \gtrxreset_i__0\
    );
gtrxreset_o_reg: unisim.vcomponents.FDCE
     port map (
      C => gtrefclk_bufg,
      CE => '1',
      CLR => rst_sync,
      D => \gtrxreset_i__0\,
      Q => gtrxreset_out
    );
gtrxreset_s_reg: unisim.vcomponents.FDCE
     port map (
      C => gtrefclk_bufg,
      CE => '1',
      CLR => rst_sync,
      D => gtrxreset_in_sync,
      Q => gtrxreset_s
    );
gtrxreset_ss_reg: unisim.vcomponents.FDCE
     port map (
      C => gtrefclk_bufg,
      CE => '1',
      CLR => rst_sync,
      D => gtrxreset_s,
      Q => gtrxreset_ss
    );
\original_rd_data[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => p_0_in,
      I1 => flag_reg_n_0,
      I2 => \original_rd_data_reg[0]_0\,
      O => original_rd_data0
    );
\original_rd_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtrefclk_bufg,
      CE => original_rd_data0,
      D => D(0),
      Q => original_rd_data(0),
      R => '0'
    );
\original_rd_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => gtrefclk_bufg,
      CE => original_rd_data0,
      D => D(10),
      Q => original_rd_data(10),
      R => '0'
    );
\original_rd_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => gtrefclk_bufg,
      CE => original_rd_data0,
      D => D(11),
      Q => original_rd_data(11),
      R => '0'
    );
\original_rd_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => gtrefclk_bufg,
      CE => original_rd_data0,
      D => D(12),
      Q => original_rd_data(12),
      R => '0'
    );
\original_rd_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => gtrefclk_bufg,
      CE => original_rd_data0,
      D => D(13),
      Q => original_rd_data(13),
      R => '0'
    );
\original_rd_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => gtrefclk_bufg,
      CE => original_rd_data0,
      D => D(14),
      Q => original_rd_data(14),
      R => '0'
    );
\original_rd_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => gtrefclk_bufg,
      CE => original_rd_data0,
      D => D(15),
      Q => original_rd_data(15),
      R => '0'
    );
\original_rd_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtrefclk_bufg,
      CE => original_rd_data0,
      D => D(1),
      Q => original_rd_data(1),
      R => '0'
    );
\original_rd_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => gtrefclk_bufg,
      CE => original_rd_data0,
      D => D(2),
      Q => original_rd_data(2),
      R => '0'
    );
\original_rd_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => gtrefclk_bufg,
      CE => original_rd_data0,
      D => D(3),
      Q => original_rd_data(3),
      R => '0'
    );
\original_rd_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => gtrefclk_bufg,
      CE => original_rd_data0,
      D => D(4),
      Q => original_rd_data(4),
      R => '0'
    );
\original_rd_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => gtrefclk_bufg,
      CE => original_rd_data0,
      D => D(5),
      Q => original_rd_data(5),
      R => '0'
    );
\original_rd_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => gtrefclk_bufg,
      CE => original_rd_data0,
      D => D(6),
      Q => original_rd_data(6),
      R => '0'
    );
\original_rd_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => gtrefclk_bufg,
      CE => original_rd_data0,
      D => D(7),
      Q => original_rd_data(7),
      R => '0'
    );
\original_rd_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => gtrefclk_bufg,
      CE => original_rd_data0,
      D => D(8),
      Q => original_rd_data(8),
      R => '0'
    );
\original_rd_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => gtrefclk_bufg,
      CE => original_rd_data0,
      D => D(9),
      Q => original_rd_data(9),
      R => '0'
    );
\rd_data[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(0),
      I1 => original_rd_data(0),
      I2 => flag_reg_n_0,
      O => \rd_data[0]_i_1_n_0\
    );
\rd_data[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(10),
      I1 => original_rd_data(10),
      I2 => flag_reg_n_0,
      O => \rd_data[10]_i_1_n_0\
    );
\rd_data[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(11),
      I1 => original_rd_data(11),
      I2 => flag_reg_n_0,
      O => \rd_data[11]_i_1_n_0\
    );
\rd_data[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(12),
      I1 => original_rd_data(12),
      I2 => flag_reg_n_0,
      O => \rd_data[12]_i_1_n_0\
    );
\rd_data[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(13),
      I1 => original_rd_data(13),
      I2 => flag_reg_n_0,
      O => \rd_data[13]_i_1_n_0\
    );
\rd_data[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(14),
      I1 => original_rd_data(14),
      I2 => flag_reg_n_0,
      O => \rd_data[14]_i_1_n_0\
    );
\rd_data[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in,
      I1 => \original_rd_data_reg[0]_0\,
      O => next_rd_data
    );
\rd_data[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(15),
      I1 => original_rd_data(15),
      I2 => flag_reg_n_0,
      O => \rd_data[15]_i_2_n_0\
    );
\rd_data[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(1),
      I1 => original_rd_data(1),
      I2 => flag_reg_n_0,
      O => \rd_data[1]_i_1_n_0\
    );
\rd_data[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(2),
      I1 => original_rd_data(2),
      I2 => flag_reg_n_0,
      O => \rd_data[2]_i_1_n_0\
    );
\rd_data[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(3),
      I1 => original_rd_data(3),
      I2 => flag_reg_n_0,
      O => \rd_data[3]_i_1_n_0\
    );
\rd_data[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(4),
      I1 => original_rd_data(4),
      I2 => flag_reg_n_0,
      O => \rd_data[4]_i_1_n_0\
    );
\rd_data[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(5),
      I1 => original_rd_data(5),
      I2 => flag_reg_n_0,
      O => \rd_data[5]_i_1_n_0\
    );
\rd_data[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(6),
      I1 => original_rd_data(6),
      I2 => flag_reg_n_0,
      O => \rd_data[6]_i_1_n_0\
    );
\rd_data[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(7),
      I1 => original_rd_data(7),
      I2 => flag_reg_n_0,
      O => \rd_data[7]_i_1_n_0\
    );
\rd_data[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(8),
      I1 => original_rd_data(8),
      I2 => flag_reg_n_0,
      O => \rd_data[8]_i_1_n_0\
    );
\rd_data[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(9),
      I1 => original_rd_data(9),
      I2 => flag_reg_n_0,
      O => \rd_data[9]_i_1_n_0\
    );
\rd_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => gtrefclk_bufg,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[0]_i_1_n_0\,
      Q => in7(0)
    );
\rd_data_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => gtrefclk_bufg,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[10]_i_1_n_0\,
      Q => in7(10)
    );
\rd_data_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => gtrefclk_bufg,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[11]_i_1_n_0\,
      Q => \rd_data_reg_n_0_[11]\
    );
\rd_data_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => gtrefclk_bufg,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[12]_i_1_n_0\,
      Q => in7(12)
    );
\rd_data_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => gtrefclk_bufg,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[13]_i_1_n_0\,
      Q => in7(13)
    );
\rd_data_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => gtrefclk_bufg,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[14]_i_1_n_0\,
      Q => in7(14)
    );
\rd_data_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => gtrefclk_bufg,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[15]_i_2_n_0\,
      Q => in7(15)
    );
\rd_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => gtrefclk_bufg,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[1]_i_1_n_0\,
      Q => in7(1)
    );
\rd_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => gtrefclk_bufg,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[2]_i_1_n_0\,
      Q => in7(2)
    );
\rd_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => gtrefclk_bufg,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[3]_i_1_n_0\,
      Q => in7(3)
    );
\rd_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => gtrefclk_bufg,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[4]_i_1_n_0\,
      Q => in7(4)
    );
\rd_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => gtrefclk_bufg,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[5]_i_1_n_0\,
      Q => in7(5)
    );
\rd_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => gtrefclk_bufg,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[6]_i_1_n_0\,
      Q => in7(6)
    );
\rd_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => gtrefclk_bufg,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[7]_i_1_n_0\,
      Q => in7(7)
    );
\rd_data_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => gtrefclk_bufg,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[8]_i_1_n_0\,
      Q => in7(8)
    );
\rd_data_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => gtrefclk_bufg,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[9]_i_1_n_0\,
      Q => in7(9)
    );
rxpmaresetdone_s_reg: unisim.vcomponents.FDCE
     port map (
      C => gtrefclk_bufg,
      CE => '1',
      CLR => rst_sync,
      D => rxpmaresetdone_sync,
      Q => rxpmaresetdone_s
    );
rxpmaresetdone_ss_reg: unisim.vcomponents.FDCE
     port map (
      C => gtrefclk_bufg,
      CE => '1',
      CLR => rst_sync,
      D => rxpmaresetdone_s,
      Q => rxpmaresetdone_ss
    );
rxpmaresetdone_sss_reg: unisim.vcomponents.FDCE
     port map (
      C => gtrefclk_bufg,
      CE => '1',
      CLR => rst_sync,
      D => rxpmaresetdone_ss,
      Q => rxpmaresetdone_sss
    );
sync_gtrxreset_in: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_4
     port map (
      SR(0) => SR(0),
      gtrefclk_bufg => gtrefclk_bufg,
      reset_out => gtrxreset_in_sync
    );
sync_rst: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_5
     port map (
      gtrefclk_bufg => gtrefclk_bufg,
      reset_out => rst_sync,
      reset_sync5_0 => reset_sync5
    );
sync_rxpmaresetdone: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_6
     port map (
      data_in => data_in,
      data_out => rxpmaresetdone_sync,
      gtrefclk_bufg => gtrefclk_bufg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_GPCS_PMA_GEN is
  port (
    MGT_TX_RESET : out STD_LOGIC;
    status_vector : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[3]_0\ : out STD_LOGIC;
    \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[2]_0\ : out STD_LOGIC;
    MGT_RX_RESET : out STD_LOGIC;
    gmii_rxd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_rx_er : out STD_LOGIC;
    txchardispmode : out STD_LOGIC;
    txcharisk : out STD_LOGIC;
    txdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_rx_dv : out STD_LOGIC;
    enablealign : out STD_LOGIC;
    txchardispval : out STD_LOGIC;
    userclk2 : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    signal_detect : in STD_LOGIC;
    reset : in STD_LOGIC;
    gmii_tx_en : in STD_LOGIC;
    gmii_tx_er : in STD_LOGIC;
    configuration_vector : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gmii_txd : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rxnotintable : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxbufstatus : in STD_LOGIC_VECTOR ( 0 to 0 );
    txbuferr : in STD_LOGIC;
    rxdisperr : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxclkcorcnt : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxcharisk : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxchariscomma : in STD_LOGIC_VECTOR ( 0 to 0 );
    reset_done : in STD_LOGIC;
    rxdata : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_GPCS_PMA_GEN : entity is "GPCS_PMA_GEN";
end gig_ethernet_pcs_pma_0_GPCS_PMA_GEN;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_GPCS_PMA_GEN is
  signal CONFIGURATION_VECTOR_REG : STD_LOGIC_VECTOR ( 1 to 1 );
  signal D : STD_LOGIC;
  signal \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[10]\ : STD_LOGIC;
  signal \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[11]\ : STD_LOGIC;
  signal \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[12]\ : STD_LOGIC;
  signal \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[13]\ : STD_LOGIC;
  signal \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[8]\ : STD_LOGIC;
  signal \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[9]\ : STD_LOGIC;
  signal \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[10]\ : STD_LOGIC;
  signal \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[11]\ : STD_LOGIC;
  signal \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[12]\ : STD_LOGIC;
  signal \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[13]\ : STD_LOGIC;
  signal \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[8]\ : STD_LOGIC;
  signal \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[9]\ : STD_LOGIC;
  signal I0 : STD_LOGIC;
  signal \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_0\ : STD_LOGIC;
  signal \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_1\ : STD_LOGIC;
  signal \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_10\ : STD_LOGIC;
  signal \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_11\ : STD_LOGIC;
  signal \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_12\ : STD_LOGIC;
  signal \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_13\ : STD_LOGIC;
  signal \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_14\ : STD_LOGIC;
  signal \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_15\ : STD_LOGIC;
  signal \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_16\ : STD_LOGIC;
  signal \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_17\ : STD_LOGIC;
  signal \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_18\ : STD_LOGIC;
  signal \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_19\ : STD_LOGIC;
  signal \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_2\ : STD_LOGIC;
  signal \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_20\ : STD_LOGIC;
  signal \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_21\ : STD_LOGIC;
  signal \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_3\ : STD_LOGIC;
  signal \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_4\ : STD_LOGIC;
  signal \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_5\ : STD_LOGIC;
  signal \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_6\ : STD_LOGIC;
  signal \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_7\ : STD_LOGIC;
  signal \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_8\ : STD_LOGIC;
  signal \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_9\ : STD_LOGIC;
  signal \MGT_RESET.SYNC_ASYNC_RESET_n_0\ : STD_LOGIC;
  signal \^mgt_rx_reset\ : STD_LOGIC;
  signal MGT_RX_RESET_INT : STD_LOGIC;
  signal \^mgt_tx_reset\ : STD_LOGIC;
  signal MGT_TX_RESET_INT : STD_LOGIC;
  signal \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[1]_i_1_n_0\ : STD_LOGIC;
  signal \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[2]_i_1_n_0\ : STD_LOGIC;
  signal \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[3]_i_1_n_0\ : STD_LOGIC;
  signal \^no_management.configuration_vector_reg_reg[2]_0\ : STD_LOGIC;
  signal \^no_management.configuration_vector_reg_reg[3]_0\ : STD_LOGIC;
  signal RESET_INT : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of RESET_INT : signal is "true";
  signal RESET_INT_PIPE : STD_LOGIC;
  attribute async_reg of RESET_INT_PIPE : signal is "true";
  signal RESET_INT_PIPE_RXRECCLK : STD_LOGIC;
  attribute async_reg of RESET_INT_PIPE_RXRECCLK : signal is "true";
  signal RESET_INT_RXRECCLK : STD_LOGIC;
  attribute async_reg of RESET_INT_RXRECCLK : signal is "true";
  signal RXCLKCORCNT_INT : STD_LOGIC;
  signal RXDISPERR_SRL1_out : STD_LOGIC;
  signal RXEVEN0_out : STD_LOGIC;
  signal RXNOTINTABLE_INT : STD_LOGIC;
  signal RXNOTINTABLE_SRL0_out : STD_LOGIC;
  signal RXRECRESET : STD_LOGIC;
  attribute async_reg of RXRECRESET : signal is "true";
  signal RXRECRESET_PIPE : STD_LOGIC;
  attribute async_reg of RXRECRESET_PIPE : signal is "true";
  signal RXRECRESET_PIPE_1 : STD_LOGIC;
  attribute async_reg of RXRECRESET_PIPE_1 : signal is "true";
  signal RXRECRESET_PIPE_2 : STD_LOGIC;
  attribute async_reg of RXRECRESET_PIPE_2 : signal is "true";
  signal RXRECRESET_PIPE_3 : STD_LOGIC;
  attribute async_reg of RXRECRESET_PIPE_3 : signal is "true";
  signal RXSYNC_STATUS : STD_LOGIC;
  signal \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_6\ : STD_LOGIC;
  signal \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_7\ : STD_LOGIC;
  signal S2 : STD_LOGIC;
  signal SIGNAL_DETECT_MOD : STD_LOGIC;
  signal SOFT_RESET_RXRECCLK : STD_LOGIC;
  signal SRESET : STD_LOGIC;
  attribute async_reg of SRESET : signal is "true";
  signal SRESET_PIPE : STD_LOGIC;
  attribute async_reg of SRESET_PIPE : signal is "true";
  signal STATUS_VECTOR_0_PRE : STD_LOGIC;
  signal STATUS_VECTOR_0_PRE0 : STD_LOGIC;
  signal SYNC_STATUS_REG : STD_LOGIC;
  signal SYNC_STATUS_REG0 : STD_LOGIC;
  signal TXBUFERR_INT : STD_LOGIC;
  signal \USE_ROCKET_IO.MGT_TX_RESET_INT_i_3_n_0\ : STD_LOGIC;
  signal \USE_ROCKET_IO.MGT_TX_RESET_INT_i_4_n_0\ : STD_LOGIC;
  signal \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXBUFSTATUS_INT_reg_n_0_[1]\ : STD_LOGIC;
  signal \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXCHARISCOMMA_INT_reg_n_0\ : STD_LOGIC;
  signal \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXCHARISK_INT_reg_n_0\ : STD_LOGIC;
  signal \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXCLKCORCNT_INT_reg_n_0_[0]\ : STD_LOGIC;
  signal \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXCLKCORCNT_INT_reg_n_0_[1]\ : STD_LOGIC;
  signal \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[0]\ : STD_LOGIC;
  signal \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[1]\ : STD_LOGIC;
  signal \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[2]\ : STD_LOGIC;
  signal \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[3]\ : STD_LOGIC;
  signal \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[4]\ : STD_LOGIC;
  signal \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[5]\ : STD_LOGIC;
  signal \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[6]\ : STD_LOGIC;
  signal \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[7]\ : STD_LOGIC;
  signal \USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.MGT_RX_RESET_INT_i_3_n_0\ : STD_LOGIC;
  signal \USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.MGT_RX_RESET_INT_i_4_n_0\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC;
  signal p_1_out : STD_LOGIC;
  signal p_6_out : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \DELAY_ERROR_TXOUTCLK.DELAY_RXDISPERR\ : label is "SRL16";
  attribute box_type : string;
  attribute box_type of \DELAY_ERROR_TXOUTCLK.DELAY_RXDISPERR\ : label is "PRIMITIVE";
  attribute srl_name : string;
  attribute srl_name of \DELAY_ERROR_TXOUTCLK.DELAY_RXDISPERR\ : label is "inst/gig_ethernet_pcs_pma_0_core/\gpcs_pma_inst/DELAY_ERROR_TXOUTCLK.DELAY_RXDISPERR ";
  attribute XILINX_LEGACY_PRIM of \DELAY_ERROR_TXOUTCLK.DELAY_RXNOTINTABLE\ : label is "SRL16";
  attribute box_type of \DELAY_ERROR_TXOUTCLK.DELAY_RXNOTINTABLE\ : label is "PRIMITIVE";
  attribute srl_name of \DELAY_ERROR_TXOUTCLK.DELAY_RXNOTINTABLE\ : label is "inst/gig_ethernet_pcs_pma_0_core/\gpcs_pma_inst/DELAY_ERROR_TXOUTCLK.DELAY_RXNOTINTABLE ";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[0]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[10]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[11]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[12]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[13]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[1]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[2]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[3]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[4]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[5]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[6]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[7]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[8]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[9]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[0]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[10]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[11]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[12]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[13]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[1]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[2]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[3]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[4]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[5]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[6]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[7]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[8]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[9]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000100000000,iSTATE11:000000001000000,iSTATE12:100000000000000,iSTATE13:000000000100000";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \MGT_RESET.RESET_INT_PIPE_RXRECCLK_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \MGT_RESET.RESET_INT_PIPE_RXRECCLK_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \MGT_RESET.RESET_INT_PIPE_reg\ : label is std.standard.true;
  attribute KEEP of \MGT_RESET.RESET_INT_PIPE_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \MGT_RESET.RESET_INT_RXRECCLK_reg\ : label is std.standard.true;
  attribute KEEP of \MGT_RESET.RESET_INT_RXRECCLK_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \MGT_RESET.RESET_INT_reg\ : label is std.standard.true;
  attribute KEEP of \MGT_RESET.RESET_INT_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \MGT_RESET.SRESET_PIPE_reg\ : label is std.standard.true;
  attribute KEEP of \MGT_RESET.SRESET_PIPE_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \MGT_RESET.SRESET_reg\ : label is std.standard.true;
  attribute KEEP of \MGT_RESET.SRESET_reg\ : label is "yes";
begin
  MGT_RX_RESET <= \^mgt_rx_reset\;
  MGT_TX_RESET <= \^mgt_tx_reset\;
  \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[2]_0\ <= \^no_management.configuration_vector_reg_reg[2]_0\;
  \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[3]_0\ <= \^no_management.configuration_vector_reg_reg[3]_0\;
\DELAY_ERROR_TXOUTCLK.DELAY_RXDISPERR\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => userclk2,
      D => D,
      Q => RXDISPERR_SRL1_out
    );
\DELAY_ERROR_TXOUTCLK.DELAY_RXNOTINTABLE\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => userclk2,
      D => RXNOTINTABLE_INT,
      Q => RXNOTINTABLE_SRL0_out
    );
\DELAY_ERROR_TXOUTCLK.RXDISPERR_REG_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => RXDISPERR_SRL1_out,
      Q => status_vector(5),
      R => '0'
    );
\DELAY_ERROR_TXOUTCLK.RXNOTINTABLE_REG_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => RXNOTINTABLE_SRL0_out,
      Q => status_vector(6),
      R => '0'
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => '0',
      Q => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[0]\,
      S => p_0_out
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[9]\,
      Q => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[10]\,
      R => p_0_out
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[10]\,
      Q => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[11]\,
      R => p_0_out
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[11]\,
      Q => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[12]\,
      R => p_0_out
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[12]\,
      Q => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[13]\,
      R => p_0_out
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[0]\,
      Q => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[1]\,
      R => p_0_out
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[1]\,
      Q => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[2]\,
      R => p_0_out
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[2]\,
      Q => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[3]\,
      R => p_0_out
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[3]\,
      Q => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[4]\,
      R => p_0_out
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[4]\,
      Q => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[5]\,
      R => p_0_out
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[5]\,
      Q => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[6]\,
      R => p_0_out
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[6]\,
      Q => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[7]\,
      R => p_0_out
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[7]\,
      Q => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[8]\,
      R => p_0_out
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[8]\,
      Q => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[9]\,
      R => p_0_out
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => '0',
      Q => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[0]\,
      S => p_1_out
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[9]\,
      Q => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[10]\,
      R => p_1_out
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[10]\,
      Q => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[11]\,
      R => p_1_out
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[11]\,
      Q => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[12]\,
      R => p_1_out
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[12]\,
      Q => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[13]\,
      R => p_1_out
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[0]\,
      Q => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[1]\,
      R => p_1_out
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[1]\,
      Q => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[2]\,
      R => p_1_out
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[2]\,
      Q => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[3]\,
      R => p_1_out
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[3]\,
      Q => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[4]\,
      R => p_1_out
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[4]\,
      Q => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[5]\,
      R => p_1_out
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[5]\,
      Q => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[6]\,
      R => p_1_out
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[6]\,
      Q => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[7]\,
      R => p_1_out
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[7]\,
      Q => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[8]\,
      R => p_1_out
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[8]\,
      Q => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[9]\,
      R => p_1_out
    );
\IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER\: entity work.gig_ethernet_pcs_pma_0_TX
     port map (
      \CODE_GRP_CNT_reg[0]_0\ => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_5\,
      \CODE_GRP_CNT_reg[0]_1\ => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_6\,
      CONFIGURATION_VECTOR_REG(0) => CONFIGURATION_VECTOR_REG(1),
      D(3) => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_1\,
      D(2) => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_2\,
      D(1) => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_3\,
      D(0) => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_4\,
      \NO_QSGMII_CHAR.TXCHARDISPVAL_reg_0\ => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_13\,
      \NO_QSGMII_DATA.TXCHARISK_reg_0\ => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_7\,
      \NO_QSGMII_DATA.TXCHARISK_reg_1\ => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_8\,
      \NO_QSGMII_DATA.TXDATA_reg[2]_0\ => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_9\,
      \NO_QSGMII_DATA.TXDATA_reg[3]_0\ => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_10\,
      \NO_QSGMII_DATA.TXDATA_reg[4]_0\ => \^mgt_tx_reset\,
      \NO_QSGMII_DATA.TXDATA_reg[5]_0\ => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_11\,
      \NO_QSGMII_DATA.TXDATA_reg[7]_0\ => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_12\,
      \NO_QSGMII_DATA.TXDATA_reg[7]_1\(7) => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_14\,
      \NO_QSGMII_DATA.TXDATA_reg[7]_1\(6) => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_15\,
      \NO_QSGMII_DATA.TXDATA_reg[7]_1\(5) => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_16\,
      \NO_QSGMII_DATA.TXDATA_reg[7]_1\(4) => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_17\,
      \NO_QSGMII_DATA.TXDATA_reg[7]_1\(3) => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_18\,
      \NO_QSGMII_DATA.TXDATA_reg[7]_1\(2) => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_19\,
      \NO_QSGMII_DATA.TXDATA_reg[7]_1\(1) => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_20\,
      \NO_QSGMII_DATA.TXDATA_reg[7]_1\(0) => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_21\,
      SR(0) => \^no_management.configuration_vector_reg_reg[3]_0\,
      \USE_ROCKET_IO.MGT_TX_RESET_INT_reg\ => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_0\,
      gmii_tx_en => gmii_tx_en,
      gmii_tx_er => gmii_tx_er,
      gmii_txd(7 downto 0) => gmii_txd(7 downto 0),
      rxchariscomma(0) => rxchariscomma(0),
      rxcharisk(0) => rxcharisk(0),
      rxdata(7 downto 0) => rxdata(7 downto 0),
      userclk2 => userclk2
    );
\MGT_RESET.RESET_INT_PIPE_RXRECCLK_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => '0',
      CE => '1',
      D => '0',
      PRE => p_6_out,
      Q => RESET_INT_PIPE_RXRECCLK
    );
\MGT_RESET.RESET_INT_PIPE_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => '0',
      PRE => \MGT_RESET.SYNC_ASYNC_RESET_n_0\,
      Q => RESET_INT_PIPE
    );
\MGT_RESET.RESET_INT_RXRECCLK_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => '0',
      CE => '1',
      D => RESET_INT_PIPE_RXRECCLK,
      PRE => p_6_out,
      Q => RESET_INT_RXRECCLK
    );
\MGT_RESET.RESET_INT_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => RESET_INT_PIPE,
      PRE => \MGT_RESET.SYNC_ASYNC_RESET_n_0\,
      Q => RESET_INT
    );
\MGT_RESET.SRESET_PIPE_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => RESET_INT,
      Q => SRESET_PIPE,
      R => '0'
    );
\MGT_RESET.SRESET_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => SRESET_PIPE,
      Q => SRESET,
      S => RESET_INT
    );
\MGT_RESET.SYNC_ASYNC_RESET\: entity work.gig_ethernet_pcs_pma_0_reset_sync_block
     port map (
      dcm_locked => dcm_locked,
      reset => reset,
      reset_sync6_0 => \MGT_RESET.SYNC_ASYNC_RESET_n_0\,
      userclk2 => userclk2
    );
\MGT_RESET.SYNC_ASYNC_RESET_RECCLK\: entity work.gig_ethernet_pcs_pma_0_reset_sync_block_20
     port map (
      dcm_locked => dcm_locked,
      p_6_out => p_6_out,
      reset => reset,
      reset_out => SOFT_RESET_RXRECCLK
    );
\MGT_RESET.SYNC_SOFT_RESET_RECCLK\: entity work.gig_ethernet_pcs_pma_0_reset_sync_block_21
     port map (
      reset_out => SOFT_RESET_RXRECCLK
    );
\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => configuration_vector(0),
      I1 => SRESET,
      O => \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[1]_i_1_n_0\
    );
\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => configuration_vector(1),
      I1 => SRESET,
      O => \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[2]_i_1_n_0\
    );
\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => configuration_vector(2),
      I1 => SRESET,
      O => \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[3]_i_1_n_0\
    );
\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[1]_i_1_n_0\,
      Q => CONFIGURATION_VECTOR_REG(1),
      R => '0'
    );
\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[2]_i_1_n_0\,
      Q => \^no_management.configuration_vector_reg_reg[2]_0\,
      R => '0'
    );
\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[3]_i_1_n_0\,
      Q => \^no_management.configuration_vector_reg_reg[3]_0\,
      R => '0'
    );
\RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK\: entity work.gig_ethernet_pcs_pma_0_RX
     port map (
      CGBAD_reg_0 => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXBUFSTATUS_INT_reg_n_0_[1]\,
      C_HDR_REMOVED_REG_reg_0(1) => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXCLKCORCNT_INT_reg_n_0_[1]\,
      C_HDR_REMOVED_REG_reg_0(0) => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXCLKCORCNT_INT_reg_n_0_[0]\,
      D => D,
      FALSE_NIT_reg_0 => \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_7\,
      I0 => I0,
      Q(7) => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[7]\,
      Q(6) => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[6]\,
      Q(5) => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[5]\,
      Q(4) => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[4]\,
      Q(3) => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[3]\,
      Q(2) => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[2]\,
      Q(1) => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[1]\,
      Q(0) => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[0]\,
      RUDI_I_reg_0 => \^mgt_rx_reset\,
      RXCHARISK_REG1_reg_0 => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXCHARISK_INT_reg_n_0\,
      RXEVEN0_out => RXEVEN0_out,
      RXNOTINTABLE_INT => RXNOTINTABLE_INT,
      RXSYNC_STATUS => RXSYNC_STATUS,
      RX_ER_reg_0 => \^no_management.configuration_vector_reg_reg[2]_0\,
      S2 => S2,
      SR(0) => \^no_management.configuration_vector_reg_reg[3]_0\,
      SYNC_STATUS_REG0 => SYNC_STATUS_REG0,
      \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXCHARISK_INT_reg\ => \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_6\,
      gmii_rx_dv => gmii_rx_dv,
      gmii_rx_er => gmii_rx_er,
      gmii_rxd(7 downto 0) => gmii_rxd(7 downto 0),
      status_vector(2 downto 0) => status_vector(4 downto 2),
      userclk2 => userclk2
    );
\RX_GMII_AT_TXOUTCLK.SYNCHRONISATION\: entity work.gig_ethernet_pcs_pma_0_SYNCHRONISE
     port map (
      CONFIGURATION_VECTOR_REG(0) => CONFIGURATION_VECTOR_REG(1),
      D => D,
      EVEN_reg_0 => \^mgt_rx_reset\,
      \FSM_onehot_STATE_reg[0]_0\ => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXBUFSTATUS_INT_reg_n_0_[1]\,
      \FSM_onehot_STATE_reg[1]_0\ => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXCHARISCOMMA_INT_reg_n_0\,
      \FSM_onehot_STATE_reg[2]_0\ => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXCHARISK_INT_reg_n_0\,
      I0 => I0,
      I_reg => \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_6\,
      I_reg_0 => \RX_GMII_AT_TXOUTCLK.RECEIVER_TXOUTCLK_n_7\,
      RXEVEN0_out => RXEVEN0_out,
      RXNOTINTABLE_INT => RXNOTINTABLE_INT,
      RXSYNC_STATUS => RXSYNC_STATUS,
      S2 => S2,
      SIGNAL_DETECT_MOD => SIGNAL_DETECT_MOD,
      STATUS_VECTOR_0_PRE0 => STATUS_VECTOR_0_PRE0,
      SYNC_STATUS_REG0 => SYNC_STATUS_REG0,
      enablealign => enablealign,
      reset_done => reset_done,
      userclk2 => userclk2
    );
STATUS_VECTOR_0_PRE_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => STATUS_VECTOR_0_PRE0,
      Q => STATUS_VECTOR_0_PRE,
      R => '0'
    );
\STATUS_VECTOR_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => STATUS_VECTOR_0_PRE,
      Q => status_vector(0),
      R => '0'
    );
\STATUS_VECTOR_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => SYNC_STATUS_REG,
      Q => status_vector(1),
      R => '0'
    );
SYNC_SIGNAL_DETECT: entity work.gig_ethernet_pcs_pma_0_sync_block
     port map (
      SIGNAL_DETECT_MOD => SIGNAL_DETECT_MOD,
      SIGNAL_DETECT_REG_reg => \^no_management.configuration_vector_reg_reg[2]_0\,
      signal_detect => signal_detect,
      userclk2 => userclk2
    );
SYNC_STATUS_REG_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => RXSYNC_STATUS,
      Q => SYNC_STATUS_REG,
      R => '0'
    );
\USE_ROCKET_IO.MGT_TX_RESET_INT_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => RESET_INT,
      I1 => TXBUFERR_INT,
      O => p_1_out
    );
\USE_ROCKET_IO.MGT_TX_RESET_INT_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \USE_ROCKET_IO.MGT_TX_RESET_INT_i_3_n_0\,
      I1 => \USE_ROCKET_IO.MGT_TX_RESET_INT_i_4_n_0\,
      I2 => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[6]\,
      I3 => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[7]\,
      I4 => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[4]\,
      I5 => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[5]\,
      O => MGT_TX_RESET_INT
    );
\USE_ROCKET_IO.MGT_TX_RESET_INT_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[13]\,
      I1 => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[12]\,
      I2 => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[9]\,
      I3 => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[8]\,
      I4 => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[11]\,
      I5 => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[10]\,
      O => \USE_ROCKET_IO.MGT_TX_RESET_INT_i_3_n_0\
    );
\USE_ROCKET_IO.MGT_TX_RESET_INT_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[2]\,
      I1 => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[3]\,
      I2 => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[0]\,
      I3 => \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg_n_0_[1]\,
      O => \USE_ROCKET_IO.MGT_TX_RESET_INT_i_4_n_0\
    );
\USE_ROCKET_IO.MGT_TX_RESET_INT_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => MGT_TX_RESET_INT,
      Q => \^mgt_tx_reset\,
      S => p_1_out
    );
\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXBUFSTATUS_INT_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => rxbufstatus(0),
      Q => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXBUFSTATUS_INT_reg_n_0_[1]\,
      R => RXCLKCORCNT_INT
    );
\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXCHARISCOMMA_INT_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_8\,
      Q => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXCHARISCOMMA_INT_reg_n_0\,
      R => \^mgt_rx_reset\
    );
\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXCHARISK_INT_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_7\,
      Q => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXCHARISK_INT_reg_n_0\,
      R => \^mgt_rx_reset\
    );
\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXCLKCORCNT_INT_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => rxclkcorcnt(0),
      Q => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXCLKCORCNT_INT_reg_n_0_[0]\,
      R => RXCLKCORCNT_INT
    );
\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXCLKCORCNT_INT_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => rxclkcorcnt(1),
      Q => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXCLKCORCNT_INT_reg_n_0_[1]\,
      R => RXCLKCORCNT_INT
    );
\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_21\,
      Q => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[0]\,
      R => \^mgt_rx_reset\
    );
\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_20\,
      Q => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[1]\,
      R => \^mgt_rx_reset\
    );
\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_19\,
      Q => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[2]\,
      R => \^mgt_rx_reset\
    );
\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_18\,
      Q => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[3]\,
      R => \^mgt_rx_reset\
    );
\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_17\,
      Q => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[4]\,
      R => \^mgt_rx_reset\
    );
\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_16\,
      Q => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[5]\,
      R => \^mgt_rx_reset\
    );
\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_15\,
      Q => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[6]\,
      R => \^mgt_rx_reset\
    );
\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_14\,
      Q => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDATA_INT_reg_n_0_[7]\,
      R => \^mgt_rx_reset\
    );
\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXDISPERR_INT_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => rxdisperr(0),
      Q => D,
      R => RXCLKCORCNT_INT
    );
\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXNOTINTABLE_INT_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => CONFIGURATION_VECTOR_REG(1),
      I1 => \^mgt_rx_reset\,
      O => RXCLKCORCNT_INT
    );
\USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXNOTINTABLE_INT_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => rxnotintable(0),
      Q => RXNOTINTABLE_INT,
      R => RXCLKCORCNT_INT
    );
\USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.MGT_RX_RESET_INT_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \USE_ROCKET_IO.NO_1588.RECLOCK_MGT_SIGNALS_TXOUTCLK.RXBUFSTATUS_INT_reg_n_0_[1]\,
      I1 => RESET_INT,
      O => p_0_out
    );
\USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.MGT_RX_RESET_INT_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.MGT_RX_RESET_INT_i_3_n_0\,
      I1 => \USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.MGT_RX_RESET_INT_i_4_n_0\,
      I2 => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[6]\,
      I3 => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[7]\,
      I4 => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[4]\,
      I5 => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[5]\,
      O => MGT_RX_RESET_INT
    );
\USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.MGT_RX_RESET_INT_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[13]\,
      I1 => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[12]\,
      I2 => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[9]\,
      I3 => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[8]\,
      I4 => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[11]\,
      I5 => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[10]\,
      O => \USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.MGT_RX_RESET_INT_i_3_n_0\
    );
\USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.MGT_RX_RESET_INT_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[2]\,
      I1 => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[3]\,
      I2 => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[0]\,
      I3 => \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.RX_RST_SM_reg_n_0_[1]\,
      O => \USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.MGT_RX_RESET_INT_i_4_n_0\
    );
\USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.MGT_RX_RESET_INT_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => MGT_RX_RESET_INT,
      Q => \^mgt_rx_reset\,
      S => p_0_out
    );
\USE_ROCKET_IO.TXBUFERR_INT_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => txbuferr,
      Q => TXBUFERR_INT,
      R => \^mgt_tx_reset\
    );
\USE_ROCKET_IO.TXCHARDISPMODE_reg\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_5\,
      Q => txchardispmode,
      R => \^mgt_tx_reset\
    );
\USE_ROCKET_IO.TXCHARDISPVAL_reg\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_13\,
      Q => txchardispval,
      R => '0'
    );
\USE_ROCKET_IO.TXCHARISK_reg\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_6\,
      Q => txcharisk,
      R => \^mgt_tx_reset\
    );
\USE_ROCKET_IO.TXDATA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_4\,
      Q => txdata(0),
      R => '0'
    );
\USE_ROCKET_IO.TXDATA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_3\,
      Q => txdata(1),
      R => '0'
    );
\USE_ROCKET_IO.TXDATA_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => userclk2,
      CE => '1',
      D => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_9\,
      Q => txdata(2),
      S => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_0\
    );
\USE_ROCKET_IO.TXDATA_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => userclk2,
      CE => '1',
      D => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_10\,
      Q => txdata(3),
      S => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_0\
    );
\USE_ROCKET_IO.TXDATA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_2\,
      Q => txdata(4),
      R => '0'
    );
\USE_ROCKET_IO.TXDATA_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => userclk2,
      CE => '1',
      D => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_11\,
      Q => txdata(5),
      S => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_0\
    );
\USE_ROCKET_IO.TXDATA_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_1\,
      Q => txdata(6),
      R => '0'
    );
\USE_ROCKET_IO.TXDATA_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => userclk2,
      CE => '1',
      D => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_12\,
      Q => txdata(7),
      S => \IS_2_5G_DISABLED_PRE_SHRINK.TRANSMITTER_n_0\
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => RXRECRESET
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => RXRECRESET_PIPE
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => RXRECRESET_PIPE_1
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => RXRECRESET_PIPE_2
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => RXRECRESET_PIPE_3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_GTWIZARD_GT is
  port (
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    rxoutclk : out STD_LOGIC;
    gtrefclk_bufg_0 : out STD_LOGIC;
    txoutclk : out STD_LOGIC;
    gtrefclk_bufg_1 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    RXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk_bufg_2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gtrefclk_bufg_3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtrefclk_bufg_4 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtrefclk_bufg_5 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtrefclk_bufg_6 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtrefclk_bufg : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt0_gttxreset_gt : in STD_LOGIC;
    gt0_pll0outclk_in : in STD_LOGIC;
    gt0_pll0outrefclk_in : in STD_LOGIC;
    gt0_pll1outclk_in : in STD_LOGIC;
    gt0_pll1outrefclk_in : in STD_LOGIC;
    reset_out : in STD_LOGIC;
    wtd_rxpcsreset_in : in STD_LOGIC;
    gt0_rxuserrdy_i : in STD_LOGIC;
    userclk : in STD_LOGIC;
    TXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_txuserrdy_i : in STD_LOGIC;
    RXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    txn_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txn_1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txn_2 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    reset_sync5 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_GTWIZARD_GT : entity is "gig_ethernet_pcs_pma_0_GTWIZARD_GT";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_GTWIZARD_GT;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_GTWIZARD_GT is
  signal drpaddr_i : STD_LOGIC_VECTOR ( 4 to 4 );
  signal gtpe2_i_n_0 : STD_LOGIC;
  signal gtpe2_i_n_1 : STD_LOGIC;
  signal gtpe2_i_n_102 : STD_LOGIC;
  signal gtpe2_i_n_104 : STD_LOGIC;
  signal gtpe2_i_n_105 : STD_LOGIC;
  signal gtpe2_i_n_14 : STD_LOGIC;
  signal gtpe2_i_n_28 : STD_LOGIC;
  signal gtpe2_i_n_29 : STD_LOGIC;
  signal gtpe2_i_n_39 : STD_LOGIC;
  signal gtpe2_i_n_40 : STD_LOGIC;
  signal gtpe2_i_n_43 : STD_LOGIC;
  signal gtpe2_i_n_48 : STD_LOGIC;
  signal gtpe2_i_n_49 : STD_LOGIC;
  signal gtpe2_i_n_50 : STD_LOGIC;
  signal gtpe2_i_n_51 : STD_LOGIC;
  signal gtpe2_i_n_52 : STD_LOGIC;
  signal gtpe2_i_n_53 : STD_LOGIC;
  signal gtpe2_i_n_54 : STD_LOGIC;
  signal gtpe2_i_n_55 : STD_LOGIC;
  signal gtpe2_i_n_56 : STD_LOGIC;
  signal gtpe2_i_n_57 : STD_LOGIC;
  signal gtpe2_i_n_58 : STD_LOGIC;
  signal gtpe2_i_n_59 : STD_LOGIC;
  signal gtpe2_i_n_60 : STD_LOGIC;
  signal gtpe2_i_n_61 : STD_LOGIC;
  signal gtpe2_i_n_62 : STD_LOGIC;
  signal gtpe2_i_n_63 : STD_LOGIC;
  signal gtpe2_i_n_64 : STD_LOGIC;
  signal gtpe2_i_n_65 : STD_LOGIC;
  signal gtpe2_i_n_66 : STD_LOGIC;
  signal gtpe2_i_n_67 : STD_LOGIC;
  signal gtpe2_i_n_68 : STD_LOGIC;
  signal gtpe2_i_n_69 : STD_LOGIC;
  signal gtpe2_i_n_7 : STD_LOGIC;
  signal gtpe2_i_n_70 : STD_LOGIC;
  signal gtpe2_i_n_71 : STD_LOGIC;
  signal gtpe2_i_n_72 : STD_LOGIC;
  signal gtpe2_i_n_73 : STD_LOGIC;
  signal gtpe2_i_n_74 : STD_LOGIC;
  signal gtpe2_i_n_75 : STD_LOGIC;
  signal gtpe2_i_n_76 : STD_LOGIC;
  signal gtpe2_i_n_77 : STD_LOGIC;
  signal gtpe2_i_n_78 : STD_LOGIC;
  signal gtpe2_i_n_8 : STD_LOGIC;
  signal gtrxreset_out : STD_LOGIC;
  signal gtrxreset_seq_i_n_1 : STD_LOGIC;
  signal gtrxreset_seq_i_n_10 : STD_LOGIC;
  signal gtrxreset_seq_i_n_11 : STD_LOGIC;
  signal gtrxreset_seq_i_n_12 : STD_LOGIC;
  signal gtrxreset_seq_i_n_13 : STD_LOGIC;
  signal gtrxreset_seq_i_n_14 : STD_LOGIC;
  signal gtrxreset_seq_i_n_15 : STD_LOGIC;
  signal gtrxreset_seq_i_n_16 : STD_LOGIC;
  signal gtrxreset_seq_i_n_17 : STD_LOGIC;
  signal gtrxreset_seq_i_n_18 : STD_LOGIC;
  signal gtrxreset_seq_i_n_2 : STD_LOGIC;
  signal gtrxreset_seq_i_n_3 : STD_LOGIC;
  signal gtrxreset_seq_i_n_4 : STD_LOGIC;
  signal gtrxreset_seq_i_n_5 : STD_LOGIC;
  signal gtrxreset_seq_i_n_6 : STD_LOGIC;
  signal gtrxreset_seq_i_n_7 : STD_LOGIC;
  signal gtrxreset_seq_i_n_8 : STD_LOGIC;
  signal gtrxreset_seq_i_n_9 : STD_LOGIC;
  signal NLW_gtpe2_i_PHYSTATUS_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_PMARSVDOUT0_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_PMARSVDOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXCDRLOCK_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXCHANBONDSEQ_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXCHANISALIGNED_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXCHANREALIGN_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXCOMINITDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXCOMSASDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXCOMWAKEDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXDLYSRESETDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXELECIDLE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXHEADERVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXOSINTDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXOSINTSTARTED_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXOSINTSTROBEDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXOSINTSTROBESTARTED_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXOUTCLKFABRIC_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXOUTCLKPCS_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXPHALIGNDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXRATEDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXSYNCDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXSYNCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXCOMFINISH_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXDLYSRESETDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXGEARBOXREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXPHALIGNDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXPHINITDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXRATEDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXSYNCDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXSYNCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_PCSRSVDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_gtpe2_i_RXCHARISCOMMA_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_gtpe2_i_RXCHARISK_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_gtpe2_i_RXCHBONDO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_gtpe2_i_RXDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal NLW_gtpe2_i_RXDATAVALID_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_gtpe2_i_RXDISPERR_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_gtpe2_i_RXHEADER_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_gtpe2_i_RXNOTINTABLE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_gtpe2_i_RXPHMONITOR_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtpe2_i_RXPHSLIPMONITOR_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtpe2_i_RXSTARTOFSEQ_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_gtpe2_i_RXSTATUS_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute box_type : string;
  attribute box_type of gtpe2_i : label is "PRIMITIVE";
begin
gtpe2_i: unisim.vcomponents.GTPE2_CHANNEL
    generic map(
      ACJTAG_DEBUG_MODE => '0',
      ACJTAG_MODE => '0',
      ACJTAG_RESET => '0',
      ADAPT_CFG0 => B"00000000000000000000",
      ALIGN_COMMA_DOUBLE => "FALSE",
      ALIGN_COMMA_ENABLE => B"0001111111",
      ALIGN_COMMA_WORD => 2,
      ALIGN_MCOMMA_DET => "TRUE",
      ALIGN_MCOMMA_VALUE => B"1010000011",
      ALIGN_PCOMMA_DET => "TRUE",
      ALIGN_PCOMMA_VALUE => B"0101111100",
      CBCC_DATA_SOURCE_SEL => "DECODED",
      CFOK_CFG => B"1001001000000000000000001000000111010000000",
      CFOK_CFG2 => B"0100000",
      CFOK_CFG3 => B"0100000",
      CFOK_CFG4 => '0',
      CFOK_CFG5 => B"00",
      CFOK_CFG6 => B"0000",
      CHAN_BOND_KEEP_ALIGN => "FALSE",
      CHAN_BOND_MAX_SKEW => 1,
      CHAN_BOND_SEQ_1_1 => B"0000000000",
      CHAN_BOND_SEQ_1_2 => B"0000000000",
      CHAN_BOND_SEQ_1_3 => B"0000000000",
      CHAN_BOND_SEQ_1_4 => B"0000000000",
      CHAN_BOND_SEQ_1_ENABLE => B"1111",
      CHAN_BOND_SEQ_2_1 => B"0000000000",
      CHAN_BOND_SEQ_2_2 => B"0000000000",
      CHAN_BOND_SEQ_2_3 => B"0000000000",
      CHAN_BOND_SEQ_2_4 => B"0000000000",
      CHAN_BOND_SEQ_2_ENABLE => B"1111",
      CHAN_BOND_SEQ_2_USE => "FALSE",
      CHAN_BOND_SEQ_LEN => 1,
      CLK_COMMON_SWING => '0',
      CLK_CORRECT_USE => "TRUE",
      CLK_COR_KEEP_IDLE => "FALSE",
      CLK_COR_MAX_LAT => 36,
      CLK_COR_MIN_LAT => 33,
      CLK_COR_PRECEDENCE => "TRUE",
      CLK_COR_REPEAT_WAIT => 0,
      CLK_COR_SEQ_1_1 => B"0110111100",
      CLK_COR_SEQ_1_2 => B"0001010000",
      CLK_COR_SEQ_1_3 => B"0000000000",
      CLK_COR_SEQ_1_4 => B"0000000000",
      CLK_COR_SEQ_1_ENABLE => B"1111",
      CLK_COR_SEQ_2_1 => B"0110111100",
      CLK_COR_SEQ_2_2 => B"0010110101",
      CLK_COR_SEQ_2_3 => B"0000000000",
      CLK_COR_SEQ_2_4 => B"0000000000",
      CLK_COR_SEQ_2_ENABLE => B"1111",
      CLK_COR_SEQ_2_USE => "TRUE",
      CLK_COR_SEQ_LEN => 2,
      DEC_MCOMMA_DETECT => "TRUE",
      DEC_PCOMMA_DETECT => "TRUE",
      DEC_VALID_COMMA_ONLY => "FALSE",
      DMONITOR_CFG => X"000A00",
      ES_CLK_PHASE_SEL => '0',
      ES_CONTROL => B"000000",
      ES_ERRDET_EN => "FALSE",
      ES_EYE_SCAN_EN => "FALSE",
      ES_HORZ_OFFSET => X"010",
      ES_PMA_CFG => B"0000000000",
      ES_PRESCALE => B"00000",
      ES_QUALIFIER => X"00000000000000000000",
      ES_QUAL_MASK => X"00000000000000000000",
      ES_SDATA_MASK => X"00000000000000000000",
      ES_VERT_OFFSET => B"000000000",
      FTS_DESKEW_SEQ_ENABLE => B"1111",
      FTS_LANE_DESKEW_CFG => B"1111",
      FTS_LANE_DESKEW_EN => "FALSE",
      GEARBOX_MODE => B"000",
      IS_CLKRSVD0_INVERTED => '0',
      IS_CLKRSVD1_INVERTED => '0',
      IS_DMONITORCLK_INVERTED => '0',
      IS_DRPCLK_INVERTED => '0',
      IS_RXUSRCLK2_INVERTED => '0',
      IS_RXUSRCLK_INVERTED => '0',
      IS_SIGVALIDCLK_INVERTED => '0',
      IS_TXPHDLYTSTCLK_INVERTED => '0',
      IS_TXUSRCLK2_INVERTED => '0',
      IS_TXUSRCLK_INVERTED => '0',
      LOOPBACK_CFG => '0',
      OUTREFCLK_SEL_INV => B"11",
      PCS_PCIE_EN => "FALSE",
      PCS_RSVD_ATTR => X"000000000000",
      PD_TRANS_TIME_FROM_P2 => X"03C",
      PD_TRANS_TIME_NONE_P2 => X"19",
      PD_TRANS_TIME_TO_P2 => X"64",
      PMA_LOOPBACK_CFG => '0',
      PMA_RSV => X"00000333",
      PMA_RSV2 => X"00002040",
      PMA_RSV3 => B"00",
      PMA_RSV4 => B"0000",
      PMA_RSV5 => '0',
      PMA_RSV6 => '0',
      PMA_RSV7 => '0',
      RXBUFRESET_TIME => B"00001",
      RXBUF_ADDR_MODE => "FULL",
      RXBUF_EIDLE_HI_CNT => B"1000",
      RXBUF_EIDLE_LO_CNT => B"0000",
      RXBUF_EN => "TRUE",
      RXBUF_RESET_ON_CB_CHANGE => "TRUE",
      RXBUF_RESET_ON_COMMAALIGN => "FALSE",
      RXBUF_RESET_ON_EIDLE => "FALSE",
      RXBUF_RESET_ON_RATE_CHANGE => "TRUE",
      RXBUF_THRESH_OVFLW => 61,
      RXBUF_THRESH_OVRD => "FALSE",
      RXBUF_THRESH_UNDFLW => 8,
      RXCDRFREQRESET_TIME => B"00001",
      RXCDRPHRESET_TIME => B"00001",
      RXCDR_CFG => X"0000107FE106001041010",
      RXCDR_FR_RESET_ON_EIDLE => '0',
      RXCDR_HOLD_DURING_EIDLE => '0',
      RXCDR_LOCK_CFG => B"001001",
      RXCDR_PH_RESET_ON_EIDLE => '0',
      RXDLY_CFG => X"001F",
      RXDLY_LCFG => X"030",
      RXDLY_TAP_CFG => X"0000",
      RXGEARBOX_EN => "FALSE",
      RXISCANRESET_TIME => B"00001",
      RXLPMRESET_TIME => B"0001111",
      RXLPM_BIAS_STARTUP_DISABLE => '0',
      RXLPM_CFG => B"0110",
      RXLPM_CFG1 => '0',
      RXLPM_CM_CFG => '0',
      RXLPM_GC_CFG => B"111100010",
      RXLPM_GC_CFG2 => B"001",
      RXLPM_HF_CFG => B"00001111110000",
      RXLPM_HF_CFG2 => B"01010",
      RXLPM_HF_CFG3 => B"0000",
      RXLPM_HOLD_DURING_EIDLE => '0',
      RXLPM_INCM_CFG => '1',
      RXLPM_IPCM_CFG => '0',
      RXLPM_LF_CFG => B"000000001111110000",
      RXLPM_LF_CFG2 => B"01010",
      RXLPM_OSINT_CFG => B"100",
      RXOOB_CFG => B"0000110",
      RXOOB_CLK_CFG => "PMA",
      RXOSCALRESET_TIME => B"00011",
      RXOSCALRESET_TIMEOUT => B"00000",
      RXOUT_DIV => 4,
      RXPCSRESET_TIME => B"00001",
      RXPHDLY_CFG => X"084020",
      RXPH_CFG => X"C00002",
      RXPH_MONITOR_SEL => B"00000",
      RXPI_CFG0 => B"000",
      RXPI_CFG1 => '1',
      RXPI_CFG2 => '1',
      RXPMARESET_TIME => B"00011",
      RXPRBS_ERR_LOOPBACK => '0',
      RXSLIDE_AUTO_WAIT => 7,
      RXSLIDE_MODE => "OFF",
      RXSYNC_MULTILANE => '0',
      RXSYNC_OVRD => '0',
      RXSYNC_SKIP_DA => '0',
      RX_BIAS_CFG => B"0000111100110011",
      RX_BUFFER_CFG => B"000000",
      RX_CLK25_DIV => 5,
      RX_CLKMUX_EN => '1',
      RX_CM_SEL => B"11",
      RX_CM_TRIM => B"1010",
      RX_DATA_WIDTH => 20,
      RX_DDI_SEL => B"000000",
      RX_DEBUG_CFG => B"00000000000000",
      RX_DEFER_RESET_BUF_EN => "TRUE",
      RX_DISPERR_SEQ_MATCH => "TRUE",
      RX_OS_CFG => B"0000010000000",
      RX_SIG_VALID_DLY => 10,
      RX_XCLK_SEL => "RXREC",
      SAS_MAX_COM => 64,
      SAS_MIN_COM => 36,
      SATA_BURST_SEQ_LEN => B"0101",
      SATA_BURST_VAL => B"100",
      SATA_EIDLE_VAL => B"100",
      SATA_MAX_BURST => 8,
      SATA_MAX_INIT => 21,
      SATA_MAX_WAKE => 7,
      SATA_MIN_BURST => 4,
      SATA_MIN_INIT => 12,
      SATA_MIN_WAKE => 4,
      SATA_PLL_CFG => "VCO_3000MHZ",
      SHOW_REALIGN_COMMA => "TRUE",
      SIM_RECEIVER_DETECT_PASS => "TRUE",
      SIM_RESET_SPEEDUP => "FALSE",
      SIM_TX_EIDLE_DRIVE_LEVEL => "X",
      SIM_VERSION => "2.0",
      TERM_RCAL_CFG => B"100001000010000",
      TERM_RCAL_OVRD => B"000",
      TRANS_TIME_RATE => X"0E",
      TST_RSV => X"00000000",
      TXBUF_EN => "TRUE",
      TXBUF_RESET_ON_RATE_CHANGE => "TRUE",
      TXDLY_CFG => X"001F",
      TXDLY_LCFG => X"030",
      TXDLY_TAP_CFG => X"0000",
      TXGEARBOX_EN => "FALSE",
      TXOOB_CFG => '0',
      TXOUT_DIV => 4,
      TXPCSRESET_TIME => B"00001",
      TXPHDLY_CFG => X"084020",
      TXPH_CFG => X"0780",
      TXPH_MONITOR_SEL => B"00000",
      TXPI_CFG0 => B"00",
      TXPI_CFG1 => B"00",
      TXPI_CFG2 => B"00",
      TXPI_CFG3 => '0',
      TXPI_CFG4 => '0',
      TXPI_CFG5 => B"000",
      TXPI_GREY_SEL => '0',
      TXPI_INVSTROBE_SEL => '0',
      TXPI_PPMCLK_SEL => "TXUSRCLK2",
      TXPI_PPM_CFG => B"00000000",
      TXPI_SYNFREQ_PPM => B"001",
      TXPMARESET_TIME => B"00001",
      TXSYNC_MULTILANE => '0',
      TXSYNC_OVRD => '0',
      TXSYNC_SKIP_DA => '0',
      TX_CLK25_DIV => 5,
      TX_CLKMUX_EN => '1',
      TX_DATA_WIDTH => 20,
      TX_DEEMPH0 => B"000000",
      TX_DEEMPH1 => B"000000",
      TX_DRIVE_MODE => "DIRECT",
      TX_EIDLE_ASSERT_DELAY => B"110",
      TX_EIDLE_DEASSERT_DELAY => B"100",
      TX_LOOPBACK_DRIVE_HIZ => "FALSE",
      TX_MAINCURSOR_SEL => '0',
      TX_MARGIN_FULL_0 => B"1001110",
      TX_MARGIN_FULL_1 => B"1001001",
      TX_MARGIN_FULL_2 => B"1000101",
      TX_MARGIN_FULL_3 => B"1000010",
      TX_MARGIN_FULL_4 => B"1000000",
      TX_MARGIN_LOW_0 => B"1000110",
      TX_MARGIN_LOW_1 => B"1000100",
      TX_MARGIN_LOW_2 => B"1000010",
      TX_MARGIN_LOW_3 => B"1000000",
      TX_MARGIN_LOW_4 => B"1000000",
      TX_PREDRIVER_MODE => '0',
      TX_RXDETECT_CFG => X"1832",
      TX_RXDETECT_REF => B"100",
      TX_XCLK_SEL => "TXOUT",
      UCODEER_CLR => '0',
      USE_PCS_CLK_PHASE_SEL => '0'
    )
        port map (
      CFGRESET => '0',
      CLKRSVD0 => '0',
      CLKRSVD1 => '0',
      DMONFIFORESET => '0',
      DMONITORCLK => '0',
      DMONITOROUT(14) => gtpe2_i_n_48,
      DMONITOROUT(13) => gtpe2_i_n_49,
      DMONITOROUT(12) => gtpe2_i_n_50,
      DMONITOROUT(11) => gtpe2_i_n_51,
      DMONITOROUT(10) => gtpe2_i_n_52,
      DMONITOROUT(9) => gtpe2_i_n_53,
      DMONITOROUT(8) => gtpe2_i_n_54,
      DMONITOROUT(7) => gtpe2_i_n_55,
      DMONITOROUT(6) => gtpe2_i_n_56,
      DMONITOROUT(5) => gtpe2_i_n_57,
      DMONITOROUT(4) => gtpe2_i_n_58,
      DMONITOROUT(3) => gtpe2_i_n_59,
      DMONITOROUT(2) => gtpe2_i_n_60,
      DMONITOROUT(1) => gtpe2_i_n_61,
      DMONITOROUT(0) => gtpe2_i_n_62,
      DRPADDR(8 downto 5) => B"0000",
      DRPADDR(4) => drpaddr_i(4),
      DRPADDR(3 downto 1) => B"000",
      DRPADDR(0) => drpaddr_i(4),
      DRPCLK => gtrefclk_bufg,
      DRPDI(15) => gtrxreset_seq_i_n_2,
      DRPDI(14) => gtrxreset_seq_i_n_3,
      DRPDI(13) => gtrxreset_seq_i_n_4,
      DRPDI(12) => gtrxreset_seq_i_n_5,
      DRPDI(11) => gtrxreset_seq_i_n_6,
      DRPDI(10) => gtrxreset_seq_i_n_7,
      DRPDI(9) => gtrxreset_seq_i_n_8,
      DRPDI(8) => gtrxreset_seq_i_n_9,
      DRPDI(7) => gtrxreset_seq_i_n_10,
      DRPDI(6) => gtrxreset_seq_i_n_11,
      DRPDI(5) => gtrxreset_seq_i_n_12,
      DRPDI(4) => gtrxreset_seq_i_n_13,
      DRPDI(3) => gtrxreset_seq_i_n_14,
      DRPDI(2) => gtrxreset_seq_i_n_15,
      DRPDI(1) => gtrxreset_seq_i_n_16,
      DRPDI(0) => gtrxreset_seq_i_n_17,
      DRPDO(15) => gtpe2_i_n_63,
      DRPDO(14) => gtpe2_i_n_64,
      DRPDO(13) => gtpe2_i_n_65,
      DRPDO(12) => gtpe2_i_n_66,
      DRPDO(11) => gtpe2_i_n_67,
      DRPDO(10) => gtpe2_i_n_68,
      DRPDO(9) => gtpe2_i_n_69,
      DRPDO(8) => gtpe2_i_n_70,
      DRPDO(7) => gtpe2_i_n_71,
      DRPDO(6) => gtpe2_i_n_72,
      DRPDO(5) => gtpe2_i_n_73,
      DRPDO(4) => gtpe2_i_n_74,
      DRPDO(3) => gtpe2_i_n_75,
      DRPDO(2) => gtpe2_i_n_76,
      DRPDO(1) => gtpe2_i_n_77,
      DRPDO(0) => gtpe2_i_n_78,
      DRPEN => gtrxreset_seq_i_n_18,
      DRPRDY => gtpe2_i_n_0,
      DRPWE => gtrxreset_seq_i_n_1,
      EYESCANDATAERROR => gtpe2_i_n_1,
      EYESCANMODE => '0',
      EYESCANRESET => '0',
      EYESCANTRIGGER => '0',
      GTPRXN => rxn,
      GTPRXP => rxp,
      GTPTXN => txn,
      GTPTXP => txp,
      GTRESETSEL => '0',
      GTRSVD(15 downto 0) => B"0000000000000000",
      GTRXRESET => gtrxreset_out,
      GTTXRESET => gt0_gttxreset_gt,
      LOOPBACK(2 downto 0) => B"000",
      PCSRSVDIN(15 downto 0) => B"0000000000000000",
      PCSRSVDOUT(15 downto 0) => NLW_gtpe2_i_PCSRSVDOUT_UNCONNECTED(15 downto 0),
      PHYSTATUS => NLW_gtpe2_i_PHYSTATUS_UNCONNECTED,
      PLL0CLK => gt0_pll0outclk_in,
      PLL0REFCLK => gt0_pll0outrefclk_in,
      PLL1CLK => gt0_pll1outclk_in,
      PLL1REFCLK => gt0_pll1outrefclk_in,
      PMARSVDIN0 => '0',
      PMARSVDIN1 => '0',
      PMARSVDIN2 => '0',
      PMARSVDIN3 => '0',
      PMARSVDIN4 => '0',
      PMARSVDOUT0 => NLW_gtpe2_i_PMARSVDOUT0_UNCONNECTED,
      PMARSVDOUT1 => NLW_gtpe2_i_PMARSVDOUT1_UNCONNECTED,
      RESETOVRD => '0',
      RX8B10BEN => '1',
      RXADAPTSELTEST(13 downto 0) => B"00000000000000",
      RXBUFRESET => '0',
      RXBUFSTATUS(2) => RXBUFSTATUS(0),
      RXBUFSTATUS(1) => gtpe2_i_n_104,
      RXBUFSTATUS(0) => gtpe2_i_n_105,
      RXBYTEISALIGNED => gtpe2_i_n_7,
      RXBYTEREALIGN => gtpe2_i_n_8,
      RXCDRFREQRESET => '0',
      RXCDRHOLD => '0',
      RXCDRLOCK => NLW_gtpe2_i_RXCDRLOCK_UNCONNECTED,
      RXCDROVRDEN => '0',
      RXCDRRESET => '0',
      RXCDRRESETRSV => '0',
      RXCHANBONDSEQ => NLW_gtpe2_i_RXCHANBONDSEQ_UNCONNECTED,
      RXCHANISALIGNED => NLW_gtpe2_i_RXCHANISALIGNED_UNCONNECTED,
      RXCHANREALIGN => NLW_gtpe2_i_RXCHANREALIGN_UNCONNECTED,
      RXCHARISCOMMA(3 downto 2) => NLW_gtpe2_i_RXCHARISCOMMA_UNCONNECTED(3 downto 2),
      RXCHARISCOMMA(1 downto 0) => gtrefclk_bufg_3(1 downto 0),
      RXCHARISK(3 downto 2) => NLW_gtpe2_i_RXCHARISK_UNCONNECTED(3 downto 2),
      RXCHARISK(1 downto 0) => gtrefclk_bufg_4(1 downto 0),
      RXCHBONDEN => '0',
      RXCHBONDI(3 downto 0) => B"0000",
      RXCHBONDLEVEL(2 downto 0) => B"000",
      RXCHBONDMASTER => '0',
      RXCHBONDO(3 downto 0) => NLW_gtpe2_i_RXCHBONDO_UNCONNECTED(3 downto 0),
      RXCHBONDSLAVE => '0',
      RXCLKCORCNT(1 downto 0) => D(1 downto 0),
      RXCOMINITDET => NLW_gtpe2_i_RXCOMINITDET_UNCONNECTED,
      RXCOMMADET => gtpe2_i_n_14,
      RXCOMMADETEN => '1',
      RXCOMSASDET => NLW_gtpe2_i_RXCOMSASDET_UNCONNECTED,
      RXCOMWAKEDET => NLW_gtpe2_i_RXCOMWAKEDET_UNCONNECTED,
      RXDATA(31 downto 16) => NLW_gtpe2_i_RXDATA_UNCONNECTED(31 downto 16),
      RXDATA(15 downto 0) => gtrefclk_bufg_2(15 downto 0),
      RXDATAVALID(1 downto 0) => NLW_gtpe2_i_RXDATAVALID_UNCONNECTED(1 downto 0),
      RXDDIEN => '0',
      RXDFEXYDEN => '0',
      RXDISPERR(3 downto 2) => NLW_gtpe2_i_RXDISPERR_UNCONNECTED(3 downto 2),
      RXDISPERR(1 downto 0) => gtrefclk_bufg_5(1 downto 0),
      RXDLYBYPASS => '1',
      RXDLYEN => '0',
      RXDLYOVRDEN => '0',
      RXDLYSRESET => '0',
      RXDLYSRESETDONE => NLW_gtpe2_i_RXDLYSRESETDONE_UNCONNECTED,
      RXELECIDLE => NLW_gtpe2_i_RXELECIDLE_UNCONNECTED,
      RXELECIDLEMODE(1 downto 0) => B"11",
      RXGEARBOXSLIP => '0',
      RXHEADER(2 downto 0) => NLW_gtpe2_i_RXHEADER_UNCONNECTED(2 downto 0),
      RXHEADERVALID => NLW_gtpe2_i_RXHEADERVALID_UNCONNECTED,
      RXLPMHFHOLD => '0',
      RXLPMHFOVRDEN => '0',
      RXLPMLFHOLD => '0',
      RXLPMLFOVRDEN => '0',
      RXLPMOSINTNTRLEN => '0',
      RXLPMRESET => '0',
      RXMCOMMAALIGNEN => reset_out,
      RXNOTINTABLE(3 downto 2) => NLW_gtpe2_i_RXNOTINTABLE_UNCONNECTED(3 downto 2),
      RXNOTINTABLE(1 downto 0) => gtrefclk_bufg_6(1 downto 0),
      RXOOBRESET => '0',
      RXOSCALRESET => '0',
      RXOSHOLD => '0',
      RXOSINTCFG(3 downto 0) => B"0010",
      RXOSINTDONE => NLW_gtpe2_i_RXOSINTDONE_UNCONNECTED,
      RXOSINTEN => '1',
      RXOSINTHOLD => '0',
      RXOSINTID0(3 downto 0) => B"0000",
      RXOSINTNTRLEN => '0',
      RXOSINTOVRDEN => '0',
      RXOSINTPD => '0',
      RXOSINTSTARTED => NLW_gtpe2_i_RXOSINTSTARTED_UNCONNECTED,
      RXOSINTSTROBE => '0',
      RXOSINTSTROBEDONE => NLW_gtpe2_i_RXOSINTSTROBEDONE_UNCONNECTED,
      RXOSINTSTROBESTARTED => NLW_gtpe2_i_RXOSINTSTROBESTARTED_UNCONNECTED,
      RXOSINTTESTOVRDEN => '0',
      RXOSOVRDEN => '0',
      RXOUTCLK => rxoutclk,
      RXOUTCLKFABRIC => NLW_gtpe2_i_RXOUTCLKFABRIC_UNCONNECTED,
      RXOUTCLKPCS => NLW_gtpe2_i_RXOUTCLKPCS_UNCONNECTED,
      RXOUTCLKSEL(2 downto 0) => B"010",
      RXPCOMMAALIGNEN => reset_out,
      RXPCSRESET => wtd_rxpcsreset_in,
      RXPD(1) => RXPD(0),
      RXPD(0) => RXPD(0),
      RXPHALIGN => '0',
      RXPHALIGNDONE => NLW_gtpe2_i_RXPHALIGNDONE_UNCONNECTED,
      RXPHALIGNEN => '0',
      RXPHDLYPD => '0',
      RXPHDLYRESET => '0',
      RXPHMONITOR(4 downto 0) => NLW_gtpe2_i_RXPHMONITOR_UNCONNECTED(4 downto 0),
      RXPHOVRDEN => '0',
      RXPHSLIPMONITOR(4 downto 0) => NLW_gtpe2_i_RXPHSLIPMONITOR_UNCONNECTED(4 downto 0),
      RXPMARESET => '0',
      RXPMARESETDONE => gtpe2_i_n_28,
      RXPOLARITY => '0',
      RXPRBSCNTRESET => '0',
      RXPRBSERR => gtpe2_i_n_29,
      RXPRBSSEL(2 downto 0) => B"000",
      RXRATE(2 downto 0) => B"000",
      RXRATEDONE => NLW_gtpe2_i_RXRATEDONE_UNCONNECTED,
      RXRATEMODE => '0',
      RXRESETDONE => gtrefclk_bufg_0,
      RXSLIDE => '0',
      RXSTARTOFSEQ(1 downto 0) => NLW_gtpe2_i_RXSTARTOFSEQ_UNCONNECTED(1 downto 0),
      RXSTATUS(2 downto 0) => NLW_gtpe2_i_RXSTATUS_UNCONNECTED(2 downto 0),
      RXSYNCALLIN => '0',
      RXSYNCDONE => NLW_gtpe2_i_RXSYNCDONE_UNCONNECTED,
      RXSYNCIN => '0',
      RXSYNCMODE => '0',
      RXSYNCOUT => NLW_gtpe2_i_RXSYNCOUT_UNCONNECTED,
      RXSYSCLKSEL(1 downto 0) => B"00",
      RXUSERRDY => gt0_rxuserrdy_i,
      RXUSRCLK => userclk,
      RXUSRCLK2 => userclk,
      RXVALID => NLW_gtpe2_i_RXVALID_UNCONNECTED,
      SETERRSTATUS => '0',
      SIGVALIDCLK => '0',
      TSTIN(19 downto 0) => B"11111111111111111111",
      TX8B10BBYPASS(3 downto 0) => B"0000",
      TX8B10BEN => '1',
      TXBUFDIFFCTRL(2 downto 0) => B"100",
      TXBUFSTATUS(1) => TXBUFSTATUS(0),
      TXBUFSTATUS(0) => gtpe2_i_n_102,
      TXCHARDISPMODE(3 downto 2) => B"00",
      TXCHARDISPMODE(1 downto 0) => txn_0(1 downto 0),
      TXCHARDISPVAL(3 downto 2) => B"00",
      TXCHARDISPVAL(1 downto 0) => txn_1(1 downto 0),
      TXCHARISK(3 downto 2) => B"00",
      TXCHARISK(1 downto 0) => txn_2(1 downto 0),
      TXCOMFINISH => NLW_gtpe2_i_TXCOMFINISH_UNCONNECTED,
      TXCOMINIT => '0',
      TXCOMSAS => '0',
      TXCOMWAKE => '0',
      TXDATA(31 downto 16) => B"0000000000000000",
      TXDATA(15 downto 0) => Q(15 downto 0),
      TXDEEMPH => '0',
      TXDETECTRX => '0',
      TXDIFFCTRL(3 downto 0) => B"1000",
      TXDIFFPD => '0',
      TXDLYBYPASS => '1',
      TXDLYEN => '0',
      TXDLYHOLD => '0',
      TXDLYOVRDEN => '0',
      TXDLYSRESET => '0',
      TXDLYSRESETDONE => NLW_gtpe2_i_TXDLYSRESETDONE_UNCONNECTED,
      TXDLYUPDOWN => '0',
      TXELECIDLE => TXPD(0),
      TXGEARBOXREADY => NLW_gtpe2_i_TXGEARBOXREADY_UNCONNECTED,
      TXHEADER(2 downto 0) => B"000",
      TXINHIBIT => '0',
      TXMAINCURSOR(6 downto 0) => B"0000000",
      TXMARGIN(2 downto 0) => B"000",
      TXOUTCLK => txoutclk,
      TXOUTCLKFABRIC => gtpe2_i_n_39,
      TXOUTCLKPCS => gtpe2_i_n_40,
      TXOUTCLKSEL(2 downto 0) => B"100",
      TXPCSRESET => '0',
      TXPD(1) => TXPD(0),
      TXPD(0) => TXPD(0),
      TXPDELECIDLEMODE => '0',
      TXPHALIGN => '0',
      TXPHALIGNDONE => NLW_gtpe2_i_TXPHALIGNDONE_UNCONNECTED,
      TXPHALIGNEN => '0',
      TXPHDLYPD => '0',
      TXPHDLYRESET => '0',
      TXPHDLYTSTCLK => '0',
      TXPHINIT => '0',
      TXPHINITDONE => NLW_gtpe2_i_TXPHINITDONE_UNCONNECTED,
      TXPHOVRDEN => '0',
      TXPIPPMEN => '0',
      TXPIPPMOVRDEN => '0',
      TXPIPPMPD => '0',
      TXPIPPMSEL => '1',
      TXPIPPMSTEPSIZE(4 downto 0) => B"00000",
      TXPISOPD => '0',
      TXPMARESET => '0',
      TXPMARESETDONE => gtpe2_i_n_43,
      TXPOLARITY => '0',
      TXPOSTCURSOR(4 downto 0) => B"00000",
      TXPOSTCURSORINV => '0',
      TXPRBSFORCEERR => '0',
      TXPRBSSEL(2 downto 0) => B"000",
      TXPRECURSOR(4 downto 0) => B"00000",
      TXPRECURSORINV => '0',
      TXRATE(2 downto 0) => B"000",
      TXRATEDONE => NLW_gtpe2_i_TXRATEDONE_UNCONNECTED,
      TXRATEMODE => '0',
      TXRESETDONE => gtrefclk_bufg_1,
      TXSEQUENCE(6 downto 0) => B"0000000",
      TXSTARTSEQ => '0',
      TXSWING => '0',
      TXSYNCALLIN => '0',
      TXSYNCDONE => NLW_gtpe2_i_TXSYNCDONE_UNCONNECTED,
      TXSYNCIN => '0',
      TXSYNCMODE => '0',
      TXSYNCOUT => NLW_gtpe2_i_TXSYNCOUT_UNCONNECTED,
      TXSYSCLKSEL(1 downto 0) => B"00",
      TXUSERRDY => gt0_txuserrdy_i,
      TXUSRCLK => userclk,
      TXUSRCLK2 => userclk
    );
gtrxreset_seq_i: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_gtwizard_gtrxreset_seq
     port map (
      D(15) => gtpe2_i_n_63,
      D(14) => gtpe2_i_n_64,
      D(13) => gtpe2_i_n_65,
      D(12) => gtpe2_i_n_66,
      D(11) => gtpe2_i_n_67,
      D(10) => gtpe2_i_n_68,
      D(9) => gtpe2_i_n_69,
      D(8) => gtpe2_i_n_70,
      D(7) => gtpe2_i_n_71,
      D(6) => gtpe2_i_n_72,
      D(5) => gtpe2_i_n_73,
      D(4) => gtpe2_i_n_74,
      D(3) => gtpe2_i_n_75,
      D(2) => gtpe2_i_n_76,
      D(1) => gtpe2_i_n_77,
      D(0) => gtpe2_i_n_78,
      DRPADDR(0) => drpaddr_i(4),
      DRPDI(15) => gtrxreset_seq_i_n_2,
      DRPDI(14) => gtrxreset_seq_i_n_3,
      DRPDI(13) => gtrxreset_seq_i_n_4,
      DRPDI(12) => gtrxreset_seq_i_n_5,
      DRPDI(11) => gtrxreset_seq_i_n_6,
      DRPDI(10) => gtrxreset_seq_i_n_7,
      DRPDI(9) => gtrxreset_seq_i_n_8,
      DRPDI(8) => gtrxreset_seq_i_n_9,
      DRPDI(7) => gtrxreset_seq_i_n_10,
      DRPDI(6) => gtrxreset_seq_i_n_11,
      DRPDI(5) => gtrxreset_seq_i_n_12,
      DRPDI(4) => gtrxreset_seq_i_n_13,
      DRPDI(3) => gtrxreset_seq_i_n_14,
      DRPDI(2) => gtrxreset_seq_i_n_15,
      DRPDI(1) => gtrxreset_seq_i_n_16,
      DRPDI(0) => gtrxreset_seq_i_n_17,
      \FSM_onehot_state_reg[5]_0\ => gtrxreset_seq_i_n_1,
      \FSM_onehot_state_reg[7]_0\ => gtrxreset_seq_i_n_18,
      SR(0) => SR(0),
      data_in => gtpe2_i_n_28,
      gtrefclk_bufg => gtrefclk_bufg,
      gtrxreset_out => gtrxreset_out,
      \original_rd_data_reg[0]_0\ => gtpe2_i_n_0,
      reset_sync5 => reset_sync5
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_6 is
  port (
    reset : in STD_LOGIC;
    signal_detect : in STD_LOGIC;
    link_timer_value : in STD_LOGIC_VECTOR ( 9 downto 0 );
    link_timer_basex : in STD_LOGIC_VECTOR ( 9 downto 0 );
    link_timer_sgmii : in STD_LOGIC_VECTOR ( 9 downto 0 );
    rx_gt_nominal_latency : in STD_LOGIC_VECTOR ( 15 downto 0 );
    speed_is_10_100 : in STD_LOGIC;
    speed_is_100 : in STD_LOGIC;
    mgt_rx_reset : out STD_LOGIC;
    mgt_tx_reset : out STD_LOGIC;
    userclk : in STD_LOGIC;
    userclk2 : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    rxbufstatus : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxchariscomma : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcharisk : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxclkcorcnt : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rxdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rxdisperr : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxnotintable : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxrundisp : in STD_LOGIC_VECTOR ( 0 to 0 );
    txbuferr : in STD_LOGIC;
    powerdown : out STD_LOGIC;
    txchardispmode : out STD_LOGIC;
    txchardispval : out STD_LOGIC;
    txcharisk : out STD_LOGIC;
    txdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    enablealign : out STD_LOGIC;
    gtx_clk : in STD_LOGIC;
    tx_code_group : out STD_LOGIC_VECTOR ( 9 downto 0 );
    loc_ref : out STD_LOGIC;
    ewrap : out STD_LOGIC;
    rx_code_group0 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    rx_code_group1 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    pma_rx_clk0 : in STD_LOGIC;
    pma_rx_clk1 : in STD_LOGIC;
    en_cdet : out STD_LOGIC;
    gmii_txd : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_tx_en : in STD_LOGIC;
    gmii_tx_er : in STD_LOGIC;
    gmii_rxd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_rx_dv : out STD_LOGIC;
    gmii_rx_er : out STD_LOGIC;
    gmii_isolate : out STD_LOGIC;
    an_interrupt : out STD_LOGIC;
    an_enable : out STD_LOGIC;
    speed_selection : out STD_LOGIC_VECTOR ( 1 downto 0 );
    phyad : in STD_LOGIC_VECTOR ( 4 downto 0 );
    mdc : in STD_LOGIC;
    mdio_in : in STD_LOGIC;
    mdio_out : out STD_LOGIC;
    mdio_tri : out STD_LOGIC;
    an_adv_config_vector : in STD_LOGIC_VECTOR ( 15 downto 0 );
    an_adv_config_val : in STD_LOGIC;
    an_restart_config : in STD_LOGIC;
    configuration_vector : in STD_LOGIC_VECTOR ( 4 downto 0 );
    configuration_valid : in STD_LOGIC;
    status_vector : out STD_LOGIC_VECTOR ( 15 downto 0 );
    basex_or_sgmii : in STD_LOGIC;
    drp_dclk : in STD_LOGIC;
    drp_req : out STD_LOGIC;
    drp_gnt : in STD_LOGIC;
    drp_den : out STD_LOGIC;
    drp_dwe : out STD_LOGIC;
    drp_drdy : in STD_LOGIC;
    drp_daddr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    drp_di : out STD_LOGIC_VECTOR ( 15 downto 0 );
    drp_do : in STD_LOGIC_VECTOR ( 15 downto 0 );
    systemtimer_s_field : in STD_LOGIC_VECTOR ( 47 downto 0 );
    systemtimer_ns_field : in STD_LOGIC_VECTOR ( 31 downto 0 );
    correction_timer : in STD_LOGIC_VECTOR ( 63 downto 0 );
    rxrecclk : in STD_LOGIC;
    rxphy_s_field : out STD_LOGIC_VECTOR ( 47 downto 0 );
    rxphy_ns_field : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rxphy_correction_timer : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_resetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    reset_done : in STD_LOGIC
  );
  attribute B_SHIFTER_ADDR : string;
  attribute B_SHIFTER_ADDR of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_6 : entity is "10'b0101010000";
  attribute C_1588 : integer;
  attribute C_1588 of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_6 : entity is 0;
  attribute C_2_5G : string;
  attribute C_2_5G of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_6 : entity is "FALSE";
  attribute C_COMPONENT_NAME : string;
  attribute C_COMPONENT_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_6 : entity is "gig_ethernet_pcs_pma_0";
  attribute C_DYNAMIC_SWITCHING : string;
  attribute C_DYNAMIC_SWITCHING of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_6 : entity is "FALSE";
  attribute C_ELABORATION_TRANSIENT_DIR : string;
  attribute C_ELABORATION_TRANSIENT_DIR of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_6 : entity is "BlankString";
  attribute C_FAMILY : string;
  attribute C_FAMILY of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_6 : entity is "artix7";
  attribute C_HAS_AN : string;
  attribute C_HAS_AN of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_6 : entity is "FALSE";
  attribute C_HAS_AXIL : string;
  attribute C_HAS_AXIL of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_6 : entity is "FALSE";
  attribute C_HAS_MDIO : string;
  attribute C_HAS_MDIO of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_6 : entity is "FALSE";
  attribute C_HAS_TEMAC : string;
  attribute C_HAS_TEMAC of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_6 : entity is "TRUE";
  attribute C_IS_SGMII : string;
  attribute C_IS_SGMII of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_6 : entity is "FALSE";
  attribute C_RX_GMII_CLK : string;
  attribute C_RX_GMII_CLK of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_6 : entity is "TXOUTCLK";
  attribute C_SGMII_FABRIC_BUFFER : string;
  attribute C_SGMII_FABRIC_BUFFER of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_6 : entity is "TRUE";
  attribute C_SGMII_PHY_MODE : string;
  attribute C_SGMII_PHY_MODE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_6 : entity is "FALSE";
  attribute C_USE_LVDS : string;
  attribute C_USE_LVDS of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_6 : entity is "FALSE";
  attribute C_USE_TBI : string;
  attribute C_USE_TBI of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_6 : entity is "FALSE";
  attribute C_USE_TRANSCEIVER : string;
  attribute C_USE_TRANSCEIVER of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_6 : entity is "TRUE";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_6 : entity is "yes";
  attribute GT_RX_BYTE_WIDTH : integer;
  attribute GT_RX_BYTE_WIDTH of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_6 : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_6 : entity is "gig_ethernet_pcs_pma_v16_1_6";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_6;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_6 is
  signal \<const0>\ : STD_LOGIC;
  signal \^status_vector\ : STD_LOGIC_VECTOR ( 6 downto 0 );
begin
  an_enable <= \<const0>\;
  an_interrupt <= \<const0>\;
  drp_daddr(9) <= \<const0>\;
  drp_daddr(8) <= \<const0>\;
  drp_daddr(7) <= \<const0>\;
  drp_daddr(6) <= \<const0>\;
  drp_daddr(5) <= \<const0>\;
  drp_daddr(4) <= \<const0>\;
  drp_daddr(3) <= \<const0>\;
  drp_daddr(2) <= \<const0>\;
  drp_daddr(1) <= \<const0>\;
  drp_daddr(0) <= \<const0>\;
  drp_den <= \<const0>\;
  drp_di(15) <= \<const0>\;
  drp_di(14) <= \<const0>\;
  drp_di(13) <= \<const0>\;
  drp_di(12) <= \<const0>\;
  drp_di(11) <= \<const0>\;
  drp_di(10) <= \<const0>\;
  drp_di(9) <= \<const0>\;
  drp_di(8) <= \<const0>\;
  drp_di(7) <= \<const0>\;
  drp_di(6) <= \<const0>\;
  drp_di(5) <= \<const0>\;
  drp_di(4) <= \<const0>\;
  drp_di(3) <= \<const0>\;
  drp_di(2) <= \<const0>\;
  drp_di(1) <= \<const0>\;
  drp_di(0) <= \<const0>\;
  drp_dwe <= \<const0>\;
  drp_req <= \<const0>\;
  en_cdet <= \<const0>\;
  ewrap <= \<const0>\;
  loc_ref <= \<const0>\;
  mdio_out <= \<const0>\;
  mdio_tri <= \<const0>\;
  rxphy_correction_timer(63) <= \<const0>\;
  rxphy_correction_timer(62) <= \<const0>\;
  rxphy_correction_timer(61) <= \<const0>\;
  rxphy_correction_timer(60) <= \<const0>\;
  rxphy_correction_timer(59) <= \<const0>\;
  rxphy_correction_timer(58) <= \<const0>\;
  rxphy_correction_timer(57) <= \<const0>\;
  rxphy_correction_timer(56) <= \<const0>\;
  rxphy_correction_timer(55) <= \<const0>\;
  rxphy_correction_timer(54) <= \<const0>\;
  rxphy_correction_timer(53) <= \<const0>\;
  rxphy_correction_timer(52) <= \<const0>\;
  rxphy_correction_timer(51) <= \<const0>\;
  rxphy_correction_timer(50) <= \<const0>\;
  rxphy_correction_timer(49) <= \<const0>\;
  rxphy_correction_timer(48) <= \<const0>\;
  rxphy_correction_timer(47) <= \<const0>\;
  rxphy_correction_timer(46) <= \<const0>\;
  rxphy_correction_timer(45) <= \<const0>\;
  rxphy_correction_timer(44) <= \<const0>\;
  rxphy_correction_timer(43) <= \<const0>\;
  rxphy_correction_timer(42) <= \<const0>\;
  rxphy_correction_timer(41) <= \<const0>\;
  rxphy_correction_timer(40) <= \<const0>\;
  rxphy_correction_timer(39) <= \<const0>\;
  rxphy_correction_timer(38) <= \<const0>\;
  rxphy_correction_timer(37) <= \<const0>\;
  rxphy_correction_timer(36) <= \<const0>\;
  rxphy_correction_timer(35) <= \<const0>\;
  rxphy_correction_timer(34) <= \<const0>\;
  rxphy_correction_timer(33) <= \<const0>\;
  rxphy_correction_timer(32) <= \<const0>\;
  rxphy_correction_timer(31) <= \<const0>\;
  rxphy_correction_timer(30) <= \<const0>\;
  rxphy_correction_timer(29) <= \<const0>\;
  rxphy_correction_timer(28) <= \<const0>\;
  rxphy_correction_timer(27) <= \<const0>\;
  rxphy_correction_timer(26) <= \<const0>\;
  rxphy_correction_timer(25) <= \<const0>\;
  rxphy_correction_timer(24) <= \<const0>\;
  rxphy_correction_timer(23) <= \<const0>\;
  rxphy_correction_timer(22) <= \<const0>\;
  rxphy_correction_timer(21) <= \<const0>\;
  rxphy_correction_timer(20) <= \<const0>\;
  rxphy_correction_timer(19) <= \<const0>\;
  rxphy_correction_timer(18) <= \<const0>\;
  rxphy_correction_timer(17) <= \<const0>\;
  rxphy_correction_timer(16) <= \<const0>\;
  rxphy_correction_timer(15) <= \<const0>\;
  rxphy_correction_timer(14) <= \<const0>\;
  rxphy_correction_timer(13) <= \<const0>\;
  rxphy_correction_timer(12) <= \<const0>\;
  rxphy_correction_timer(11) <= \<const0>\;
  rxphy_correction_timer(10) <= \<const0>\;
  rxphy_correction_timer(9) <= \<const0>\;
  rxphy_correction_timer(8) <= \<const0>\;
  rxphy_correction_timer(7) <= \<const0>\;
  rxphy_correction_timer(6) <= \<const0>\;
  rxphy_correction_timer(5) <= \<const0>\;
  rxphy_correction_timer(4) <= \<const0>\;
  rxphy_correction_timer(3) <= \<const0>\;
  rxphy_correction_timer(2) <= \<const0>\;
  rxphy_correction_timer(1) <= \<const0>\;
  rxphy_correction_timer(0) <= \<const0>\;
  rxphy_ns_field(31) <= \<const0>\;
  rxphy_ns_field(30) <= \<const0>\;
  rxphy_ns_field(29) <= \<const0>\;
  rxphy_ns_field(28) <= \<const0>\;
  rxphy_ns_field(27) <= \<const0>\;
  rxphy_ns_field(26) <= \<const0>\;
  rxphy_ns_field(25) <= \<const0>\;
  rxphy_ns_field(24) <= \<const0>\;
  rxphy_ns_field(23) <= \<const0>\;
  rxphy_ns_field(22) <= \<const0>\;
  rxphy_ns_field(21) <= \<const0>\;
  rxphy_ns_field(20) <= \<const0>\;
  rxphy_ns_field(19) <= \<const0>\;
  rxphy_ns_field(18) <= \<const0>\;
  rxphy_ns_field(17) <= \<const0>\;
  rxphy_ns_field(16) <= \<const0>\;
  rxphy_ns_field(15) <= \<const0>\;
  rxphy_ns_field(14) <= \<const0>\;
  rxphy_ns_field(13) <= \<const0>\;
  rxphy_ns_field(12) <= \<const0>\;
  rxphy_ns_field(11) <= \<const0>\;
  rxphy_ns_field(10) <= \<const0>\;
  rxphy_ns_field(9) <= \<const0>\;
  rxphy_ns_field(8) <= \<const0>\;
  rxphy_ns_field(7) <= \<const0>\;
  rxphy_ns_field(6) <= \<const0>\;
  rxphy_ns_field(5) <= \<const0>\;
  rxphy_ns_field(4) <= \<const0>\;
  rxphy_ns_field(3) <= \<const0>\;
  rxphy_ns_field(2) <= \<const0>\;
  rxphy_ns_field(1) <= \<const0>\;
  rxphy_ns_field(0) <= \<const0>\;
  rxphy_s_field(47) <= \<const0>\;
  rxphy_s_field(46) <= \<const0>\;
  rxphy_s_field(45) <= \<const0>\;
  rxphy_s_field(44) <= \<const0>\;
  rxphy_s_field(43) <= \<const0>\;
  rxphy_s_field(42) <= \<const0>\;
  rxphy_s_field(41) <= \<const0>\;
  rxphy_s_field(40) <= \<const0>\;
  rxphy_s_field(39) <= \<const0>\;
  rxphy_s_field(38) <= \<const0>\;
  rxphy_s_field(37) <= \<const0>\;
  rxphy_s_field(36) <= \<const0>\;
  rxphy_s_field(35) <= \<const0>\;
  rxphy_s_field(34) <= \<const0>\;
  rxphy_s_field(33) <= \<const0>\;
  rxphy_s_field(32) <= \<const0>\;
  rxphy_s_field(31) <= \<const0>\;
  rxphy_s_field(30) <= \<const0>\;
  rxphy_s_field(29) <= \<const0>\;
  rxphy_s_field(28) <= \<const0>\;
  rxphy_s_field(27) <= \<const0>\;
  rxphy_s_field(26) <= \<const0>\;
  rxphy_s_field(25) <= \<const0>\;
  rxphy_s_field(24) <= \<const0>\;
  rxphy_s_field(23) <= \<const0>\;
  rxphy_s_field(22) <= \<const0>\;
  rxphy_s_field(21) <= \<const0>\;
  rxphy_s_field(20) <= \<const0>\;
  rxphy_s_field(19) <= \<const0>\;
  rxphy_s_field(18) <= \<const0>\;
  rxphy_s_field(17) <= \<const0>\;
  rxphy_s_field(16) <= \<const0>\;
  rxphy_s_field(15) <= \<const0>\;
  rxphy_s_field(14) <= \<const0>\;
  rxphy_s_field(13) <= \<const0>\;
  rxphy_s_field(12) <= \<const0>\;
  rxphy_s_field(11) <= \<const0>\;
  rxphy_s_field(10) <= \<const0>\;
  rxphy_s_field(9) <= \<const0>\;
  rxphy_s_field(8) <= \<const0>\;
  rxphy_s_field(7) <= \<const0>\;
  rxphy_s_field(6) <= \<const0>\;
  rxphy_s_field(5) <= \<const0>\;
  rxphy_s_field(4) <= \<const0>\;
  rxphy_s_field(3) <= \<const0>\;
  rxphy_s_field(2) <= \<const0>\;
  rxphy_s_field(1) <= \<const0>\;
  rxphy_s_field(0) <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_wready <= \<const0>\;
  speed_selection(1) <= \<const0>\;
  speed_selection(0) <= \<const0>\;
  status_vector(15) <= \<const0>\;
  status_vector(14) <= \<const0>\;
  status_vector(13) <= \<const0>\;
  status_vector(12) <= \<const0>\;
  status_vector(11) <= \<const0>\;
  status_vector(10) <= \<const0>\;
  status_vector(9) <= \<const0>\;
  status_vector(8) <= \<const0>\;
  status_vector(7) <= \<const0>\;
  status_vector(6 downto 0) <= \^status_vector\(6 downto 0);
  tx_code_group(9) <= \<const0>\;
  tx_code_group(8) <= \<const0>\;
  tx_code_group(7) <= \<const0>\;
  tx_code_group(6) <= \<const0>\;
  tx_code_group(5) <= \<const0>\;
  tx_code_group(4) <= \<const0>\;
  tx_code_group(3) <= \<const0>\;
  tx_code_group(2) <= \<const0>\;
  tx_code_group(1) <= \<const0>\;
  tx_code_group(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
gpcs_pma_inst: entity work.gig_ethernet_pcs_pma_0_GPCS_PMA_GEN
     port map (
      MGT_RX_RESET => mgt_rx_reset,
      MGT_TX_RESET => mgt_tx_reset,
      \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[2]_0\ => powerdown,
      \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[3]_0\ => gmii_isolate,
      configuration_vector(2 downto 0) => configuration_vector(3 downto 1),
      dcm_locked => dcm_locked,
      enablealign => enablealign,
      gmii_rx_dv => gmii_rx_dv,
      gmii_rx_er => gmii_rx_er,
      gmii_rxd(7 downto 0) => gmii_rxd(7 downto 0),
      gmii_tx_en => gmii_tx_en,
      gmii_tx_er => gmii_tx_er,
      gmii_txd(7 downto 0) => gmii_txd(7 downto 0),
      reset => reset,
      reset_done => reset_done,
      rxbufstatus(0) => rxbufstatus(1),
      rxchariscomma(0) => rxchariscomma(0),
      rxcharisk(0) => rxcharisk(0),
      rxclkcorcnt(1 downto 0) => rxclkcorcnt(1 downto 0),
      rxdata(7 downto 0) => rxdata(7 downto 0),
      rxdisperr(0) => rxdisperr(0),
      rxnotintable(0) => rxnotintable(0),
      signal_detect => signal_detect,
      status_vector(6 downto 0) => \^status_vector\(6 downto 0),
      txbuferr => txbuferr,
      txchardispmode => txchardispmode,
      txchardispval => txchardispval,
      txcharisk => txcharisk,
      txdata(7 downto 0) => txdata(7 downto 0),
      userclk2 => userclk2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_GTWIZARD_multi_gt is
  port (
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    rxoutclk : out STD_LOGIC;
    gtrefclk_bufg_0 : out STD_LOGIC;
    txoutclk : out STD_LOGIC;
    gtrefclk_bufg_1 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    RXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk_bufg_2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gtrefclk_bufg_3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtrefclk_bufg_4 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtrefclk_bufg_5 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtrefclk_bufg_6 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtrefclk_bufg : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt0_gttxreset_gt : in STD_LOGIC;
    gt0_pll0outclk_in : in STD_LOGIC;
    gt0_pll0outrefclk_in : in STD_LOGIC;
    gt0_pll1outclk_in : in STD_LOGIC;
    gt0_pll1outrefclk_in : in STD_LOGIC;
    reset_out : in STD_LOGIC;
    wtd_rxpcsreset_in : in STD_LOGIC;
    gt0_rxuserrdy_i : in STD_LOGIC;
    userclk : in STD_LOGIC;
    TXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_txuserrdy_i : in STD_LOGIC;
    RXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    txn_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txn_1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txn_2 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    reset_sync5 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_GTWIZARD_multi_gt : entity is "gig_ethernet_pcs_pma_0_GTWIZARD_multi_gt";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_GTWIZARD_multi_gt;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_GTWIZARD_multi_gt is
begin
gt0_GTWIZARD_i: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_GTWIZARD_GT
     port map (
      D(1 downto 0) => D(1 downto 0),
      Q(15 downto 0) => Q(15 downto 0),
      RXBUFSTATUS(0) => RXBUFSTATUS(0),
      RXPD(0) => RXPD(0),
      SR(0) => SR(0),
      TXBUFSTATUS(0) => TXBUFSTATUS(0),
      TXPD(0) => TXPD(0),
      gt0_gttxreset_gt => gt0_gttxreset_gt,
      gt0_pll0outclk_in => gt0_pll0outclk_in,
      gt0_pll0outrefclk_in => gt0_pll0outrefclk_in,
      gt0_pll1outclk_in => gt0_pll1outclk_in,
      gt0_pll1outrefclk_in => gt0_pll1outrefclk_in,
      gt0_rxuserrdy_i => gt0_rxuserrdy_i,
      gt0_txuserrdy_i => gt0_txuserrdy_i,
      gtrefclk_bufg => gtrefclk_bufg,
      gtrefclk_bufg_0 => gtrefclk_bufg_0,
      gtrefclk_bufg_1 => gtrefclk_bufg_1,
      gtrefclk_bufg_2(15 downto 0) => gtrefclk_bufg_2(15 downto 0),
      gtrefclk_bufg_3(1 downto 0) => gtrefclk_bufg_3(1 downto 0),
      gtrefclk_bufg_4(1 downto 0) => gtrefclk_bufg_4(1 downto 0),
      gtrefclk_bufg_5(1 downto 0) => gtrefclk_bufg_5(1 downto 0),
      gtrefclk_bufg_6(1 downto 0) => gtrefclk_bufg_6(1 downto 0),
      reset_out => reset_out,
      reset_sync5 => reset_sync5,
      rxn => rxn,
      rxoutclk => rxoutclk,
      rxp => rxp,
      txn => txn,
      txn_0(1 downto 0) => txn_0(1 downto 0),
      txn_1(1 downto 0) => txn_1(1 downto 0),
      txn_2(1 downto 0) => txn_2(1 downto 0),
      txoutclk => txoutclk,
      txp => txp,
      userclk => userclk,
      wtd_rxpcsreset_in => wtd_rxpcsreset_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_GTWIZARD_init is
  port (
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    rxoutclk : out STD_LOGIC;
    txoutclk : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    RXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk_bufg_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gtrefclk_bufg_1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtrefclk_bufg_2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtrefclk_bufg_3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtrefclk_bufg_4 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mmcm_reset : out STD_LOGIC;
    reset_in : out STD_LOGIC;
    data_in : out STD_LOGIC;
    rx_fsm_reset_done_int_reg : out STD_LOGIC;
    gtrefclk_bufg : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt0_pll0outclk_in : in STD_LOGIC;
    gt0_pll0outrefclk_in : in STD_LOGIC;
    gt0_pll1outclk_in : in STD_LOGIC;
    gt0_pll1outrefclk_in : in STD_LOGIC;
    reset_out : in STD_LOGIC;
    wtd_rxpcsreset_in : in STD_LOGIC;
    userclk : in STD_LOGIC;
    TXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    RXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    txn_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txn_1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txn_2 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    independent_clock_bufg : in STD_LOGIC;
    pma_reset : in STD_LOGIC;
    gt0_pll0refclklost_in : in STD_LOGIC;
    gt0_gtrxreset_gt_d1_reg_0 : in STD_LOGIC;
    txn_3 : in STD_LOGIC;
    mmcm_locked : in STD_LOGIC;
    gt0_pll0lock_in : in STD_LOGIC;
    data_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_GTWIZARD_init : entity is "gig_ethernet_pcs_pma_0_GTWIZARD_init";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_GTWIZARD_init;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_GTWIZARD_init is
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal gt0_gtrxreset_gt : STD_LOGIC;
  signal gt0_gtrxreset_gt_d1 : STD_LOGIC;
  signal gt0_gttxreset_gt : STD_LOGIC;
  signal gt0_rx_cdrlock_counter : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \gt0_rx_cdrlock_counter0_carry__0_n_0\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__0_n_1\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__0_n_2\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__0_n_3\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__1_n_0\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__1_n_1\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__1_n_2\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__1_n_3\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__2_n_0\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__2_n_1\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__2_n_2\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__2_n_3\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__3_n_0\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__3_n_1\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__3_n_2\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__3_n_3\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__4_n_0\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__4_n_1\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__4_n_2\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__4_n_3\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__5_n_0\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__5_n_1\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__5_n_2\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__5_n_3\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__6_n_2\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__6_n_3\ : STD_LOGIC;
  signal gt0_rx_cdrlock_counter0_carry_n_0 : STD_LOGIC;
  signal gt0_rx_cdrlock_counter0_carry_n_1 : STD_LOGIC;
  signal gt0_rx_cdrlock_counter0_carry_n_2 : STD_LOGIC;
  signal gt0_rx_cdrlock_counter0_carry_n_3 : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter[31]_i_2_n_0\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter[31]_i_3_n_0\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter[31]_i_4_n_0\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter[31]_i_5_n_0\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter[31]_i_6_n_0\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter[31]_i_7_n_0\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter[31]_i_8_n_0\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter[31]_i_9_n_0\ : STD_LOGIC;
  signal gt0_rx_cdrlock_counter_0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal gt0_rx_cdrlocked_i_1_n_0 : STD_LOGIC;
  signal gt0_rx_cdrlocked_reg_n_0 : STD_LOGIC;
  signal gt0_rxuserrdy_i : STD_LOGIC;
  signal gt0_txuserrdy_i : STD_LOGIC;
  signal gtwizard_i_n_3 : STD_LOGIC;
  signal gtwizard_i_n_5 : STD_LOGIC;
  signal \^reset_in\ : STD_LOGIC;
  signal \NLW_gt0_rx_cdrlock_counter0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_gt0_rx_cdrlock_counter0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  reset_in <= \^reset_in\;
gt0_gtrxreset_gt_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_gtrxreset_gt,
      Q => gt0_gtrxreset_gt_d1,
      R => '0'
    );
gt0_rx_cdrlock_counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => gt0_rx_cdrlock_counter0_carry_n_0,
      CO(2) => gt0_rx_cdrlock_counter0_carry_n_1,
      CO(1) => gt0_rx_cdrlock_counter0_carry_n_2,
      CO(0) => gt0_rx_cdrlock_counter0_carry_n_3,
      CYINIT => gt0_rx_cdrlock_counter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => gt0_rx_cdrlock_counter(4 downto 1)
    );
\gt0_rx_cdrlock_counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => gt0_rx_cdrlock_counter0_carry_n_0,
      CO(3) => \gt0_rx_cdrlock_counter0_carry__0_n_0\,
      CO(2) => \gt0_rx_cdrlock_counter0_carry__0_n_1\,
      CO(1) => \gt0_rx_cdrlock_counter0_carry__0_n_2\,
      CO(0) => \gt0_rx_cdrlock_counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => gt0_rx_cdrlock_counter(8 downto 5)
    );
\gt0_rx_cdrlock_counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gt0_rx_cdrlock_counter0_carry__0_n_0\,
      CO(3) => \gt0_rx_cdrlock_counter0_carry__1_n_0\,
      CO(2) => \gt0_rx_cdrlock_counter0_carry__1_n_1\,
      CO(1) => \gt0_rx_cdrlock_counter0_carry__1_n_2\,
      CO(0) => \gt0_rx_cdrlock_counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => gt0_rx_cdrlock_counter(12 downto 9)
    );
\gt0_rx_cdrlock_counter0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \gt0_rx_cdrlock_counter0_carry__1_n_0\,
      CO(3) => \gt0_rx_cdrlock_counter0_carry__2_n_0\,
      CO(2) => \gt0_rx_cdrlock_counter0_carry__2_n_1\,
      CO(1) => \gt0_rx_cdrlock_counter0_carry__2_n_2\,
      CO(0) => \gt0_rx_cdrlock_counter0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => gt0_rx_cdrlock_counter(16 downto 13)
    );
\gt0_rx_cdrlock_counter0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \gt0_rx_cdrlock_counter0_carry__2_n_0\,
      CO(3) => \gt0_rx_cdrlock_counter0_carry__3_n_0\,
      CO(2) => \gt0_rx_cdrlock_counter0_carry__3_n_1\,
      CO(1) => \gt0_rx_cdrlock_counter0_carry__3_n_2\,
      CO(0) => \gt0_rx_cdrlock_counter0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3 downto 0) => gt0_rx_cdrlock_counter(20 downto 17)
    );
\gt0_rx_cdrlock_counter0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \gt0_rx_cdrlock_counter0_carry__3_n_0\,
      CO(3) => \gt0_rx_cdrlock_counter0_carry__4_n_0\,
      CO(2) => \gt0_rx_cdrlock_counter0_carry__4_n_1\,
      CO(1) => \gt0_rx_cdrlock_counter0_carry__4_n_2\,
      CO(0) => \gt0_rx_cdrlock_counter0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3 downto 0) => gt0_rx_cdrlock_counter(24 downto 21)
    );
\gt0_rx_cdrlock_counter0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \gt0_rx_cdrlock_counter0_carry__4_n_0\,
      CO(3) => \gt0_rx_cdrlock_counter0_carry__5_n_0\,
      CO(2) => \gt0_rx_cdrlock_counter0_carry__5_n_1\,
      CO(1) => \gt0_rx_cdrlock_counter0_carry__5_n_2\,
      CO(0) => \gt0_rx_cdrlock_counter0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(28 downto 25),
      S(3 downto 0) => gt0_rx_cdrlock_counter(28 downto 25)
    );
\gt0_rx_cdrlock_counter0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \gt0_rx_cdrlock_counter0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_gt0_rx_cdrlock_counter0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \gt0_rx_cdrlock_counter0_carry__6_n_2\,
      CO(0) => \gt0_rx_cdrlock_counter0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_gt0_rx_cdrlock_counter0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => gt0_rx_cdrlock_counter(31 downto 29)
    );
\gt0_rx_cdrlock_counter[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \gt0_rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => gt0_rx_cdrlock_counter(0),
      O => \gt0_rx_cdrlock_counter[0]_i_1_n_0\
    );
\gt0_rx_cdrlock_counter[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => data0(10),
      I1 => \gt0_rx_cdrlock_counter[31]_i_2_n_0\,
      I2 => \gt0_rx_cdrlock_counter[31]_i_3_n_0\,
      I3 => \gt0_rx_cdrlock_counter[31]_i_4_n_0\,
      I4 => \gt0_rx_cdrlock_counter[31]_i_5_n_0\,
      O => gt0_rx_cdrlock_counter_0(10)
    );
\gt0_rx_cdrlock_counter[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => data0(11),
      I1 => \gt0_rx_cdrlock_counter[31]_i_2_n_0\,
      I2 => \gt0_rx_cdrlock_counter[31]_i_3_n_0\,
      I3 => \gt0_rx_cdrlock_counter[31]_i_4_n_0\,
      I4 => \gt0_rx_cdrlock_counter[31]_i_5_n_0\,
      O => gt0_rx_cdrlock_counter_0(11)
    );
\gt0_rx_cdrlock_counter[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => data0(12),
      I1 => \gt0_rx_cdrlock_counter[31]_i_2_n_0\,
      I2 => \gt0_rx_cdrlock_counter[31]_i_3_n_0\,
      I3 => \gt0_rx_cdrlock_counter[31]_i_4_n_0\,
      I4 => \gt0_rx_cdrlock_counter[31]_i_5_n_0\,
      O => gt0_rx_cdrlock_counter_0(12)
    );
\gt0_rx_cdrlock_counter[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \gt0_rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(13),
      O => gt0_rx_cdrlock_counter_0(13)
    );
\gt0_rx_cdrlock_counter[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \gt0_rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(14),
      O => gt0_rx_cdrlock_counter_0(14)
    );
\gt0_rx_cdrlock_counter[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \gt0_rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(15),
      O => gt0_rx_cdrlock_counter_0(15)
    );
\gt0_rx_cdrlock_counter[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \gt0_rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(16),
      O => gt0_rx_cdrlock_counter_0(16)
    );
\gt0_rx_cdrlock_counter[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \gt0_rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(17),
      O => gt0_rx_cdrlock_counter_0(17)
    );
\gt0_rx_cdrlock_counter[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \gt0_rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(18),
      O => gt0_rx_cdrlock_counter_0(18)
    );
\gt0_rx_cdrlock_counter[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \gt0_rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(19),
      O => gt0_rx_cdrlock_counter_0(19)
    );
\gt0_rx_cdrlock_counter[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \gt0_rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(1),
      O => gt0_rx_cdrlock_counter_0(1)
    );
\gt0_rx_cdrlock_counter[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \gt0_rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(20),
      O => gt0_rx_cdrlock_counter_0(20)
    );
\gt0_rx_cdrlock_counter[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \gt0_rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(21),
      O => gt0_rx_cdrlock_counter_0(21)
    );
\gt0_rx_cdrlock_counter[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \gt0_rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(22),
      O => gt0_rx_cdrlock_counter_0(22)
    );
\gt0_rx_cdrlock_counter[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \gt0_rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(23),
      O => gt0_rx_cdrlock_counter_0(23)
    );
\gt0_rx_cdrlock_counter[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \gt0_rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(24),
      O => gt0_rx_cdrlock_counter_0(24)
    );
\gt0_rx_cdrlock_counter[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \gt0_rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(25),
      O => gt0_rx_cdrlock_counter_0(25)
    );
\gt0_rx_cdrlock_counter[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \gt0_rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(26),
      O => gt0_rx_cdrlock_counter_0(26)
    );
\gt0_rx_cdrlock_counter[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \gt0_rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(27),
      O => gt0_rx_cdrlock_counter_0(27)
    );
\gt0_rx_cdrlock_counter[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \gt0_rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(28),
      O => gt0_rx_cdrlock_counter_0(28)
    );
\gt0_rx_cdrlock_counter[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \gt0_rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(29),
      O => gt0_rx_cdrlock_counter_0(29)
    );
\gt0_rx_cdrlock_counter[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \gt0_rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(2),
      O => gt0_rx_cdrlock_counter_0(2)
    );
\gt0_rx_cdrlock_counter[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \gt0_rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(30),
      O => gt0_rx_cdrlock_counter_0(30)
    );
\gt0_rx_cdrlock_counter[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \gt0_rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(31),
      O => gt0_rx_cdrlock_counter_0(31)
    );
\gt0_rx_cdrlock_counter[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => gt0_rx_cdrlock_counter(18),
      I1 => gt0_rx_cdrlock_counter(19),
      I2 => gt0_rx_cdrlock_counter(16),
      I3 => gt0_rx_cdrlock_counter(17),
      I4 => \gt0_rx_cdrlock_counter[31]_i_6_n_0\,
      O => \gt0_rx_cdrlock_counter[31]_i_2_n_0\
    );
\gt0_rx_cdrlock_counter[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => gt0_rx_cdrlock_counter(26),
      I1 => gt0_rx_cdrlock_counter(27),
      I2 => gt0_rx_cdrlock_counter(24),
      I3 => gt0_rx_cdrlock_counter(25),
      I4 => \gt0_rx_cdrlock_counter[31]_i_7_n_0\,
      O => \gt0_rx_cdrlock_counter[31]_i_3_n_0\
    );
\gt0_rx_cdrlock_counter[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => gt0_rx_cdrlock_counter(2),
      I1 => gt0_rx_cdrlock_counter(3),
      I2 => gt0_rx_cdrlock_counter(0),
      I3 => gt0_rx_cdrlock_counter(1),
      I4 => \gt0_rx_cdrlock_counter[31]_i_8_n_0\,
      O => \gt0_rx_cdrlock_counter[31]_i_4_n_0\
    );
\gt0_rx_cdrlock_counter[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => gt0_rx_cdrlock_counter(10),
      I1 => gt0_rx_cdrlock_counter(11),
      I2 => gt0_rx_cdrlock_counter(8),
      I3 => gt0_rx_cdrlock_counter(9),
      I4 => \gt0_rx_cdrlock_counter[31]_i_9_n_0\,
      O => \gt0_rx_cdrlock_counter[31]_i_5_n_0\
    );
\gt0_rx_cdrlock_counter[31]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => gt0_rx_cdrlock_counter(21),
      I1 => gt0_rx_cdrlock_counter(20),
      I2 => gt0_rx_cdrlock_counter(23),
      I3 => gt0_rx_cdrlock_counter(22),
      O => \gt0_rx_cdrlock_counter[31]_i_6_n_0\
    );
\gt0_rx_cdrlock_counter[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => gt0_rx_cdrlock_counter(29),
      I1 => gt0_rx_cdrlock_counter(28),
      I2 => gt0_rx_cdrlock_counter(31),
      I3 => gt0_rx_cdrlock_counter(30),
      O => \gt0_rx_cdrlock_counter[31]_i_7_n_0\
    );
\gt0_rx_cdrlock_counter[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => gt0_rx_cdrlock_counter(5),
      I1 => gt0_rx_cdrlock_counter(4),
      I2 => gt0_rx_cdrlock_counter(6),
      I3 => gt0_rx_cdrlock_counter(7),
      O => \gt0_rx_cdrlock_counter[31]_i_8_n_0\
    );
\gt0_rx_cdrlock_counter[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => gt0_rx_cdrlock_counter(12),
      I1 => gt0_rx_cdrlock_counter(13),
      I2 => gt0_rx_cdrlock_counter(15),
      I3 => gt0_rx_cdrlock_counter(14),
      O => \gt0_rx_cdrlock_counter[31]_i_9_n_0\
    );
\gt0_rx_cdrlock_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \gt0_rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(3),
      O => gt0_rx_cdrlock_counter_0(3)
    );
\gt0_rx_cdrlock_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \gt0_rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(4),
      O => gt0_rx_cdrlock_counter_0(4)
    );
\gt0_rx_cdrlock_counter[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \gt0_rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(5),
      O => gt0_rx_cdrlock_counter_0(5)
    );
\gt0_rx_cdrlock_counter[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => data0(6),
      I1 => \gt0_rx_cdrlock_counter[31]_i_2_n_0\,
      I2 => \gt0_rx_cdrlock_counter[31]_i_3_n_0\,
      I3 => \gt0_rx_cdrlock_counter[31]_i_4_n_0\,
      I4 => \gt0_rx_cdrlock_counter[31]_i_5_n_0\,
      O => gt0_rx_cdrlock_counter_0(6)
    );
\gt0_rx_cdrlock_counter[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \gt0_rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(7),
      O => gt0_rx_cdrlock_counter_0(7)
    );
\gt0_rx_cdrlock_counter[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => data0(8),
      I1 => \gt0_rx_cdrlock_counter[31]_i_2_n_0\,
      I2 => \gt0_rx_cdrlock_counter[31]_i_3_n_0\,
      I3 => \gt0_rx_cdrlock_counter[31]_i_4_n_0\,
      I4 => \gt0_rx_cdrlock_counter[31]_i_5_n_0\,
      O => gt0_rx_cdrlock_counter_0(8)
    );
\gt0_rx_cdrlock_counter[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => data0(9),
      I1 => \gt0_rx_cdrlock_counter[31]_i_2_n_0\,
      I2 => \gt0_rx_cdrlock_counter[31]_i_3_n_0\,
      I3 => \gt0_rx_cdrlock_counter[31]_i_4_n_0\,
      I4 => \gt0_rx_cdrlock_counter[31]_i_5_n_0\,
      O => gt0_rx_cdrlock_counter_0(9)
    );
\gt0_rx_cdrlock_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => \gt0_rx_cdrlock_counter[0]_i_1_n_0\,
      Q => gt0_rx_cdrlock_counter(0),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(10),
      Q => gt0_rx_cdrlock_counter(10),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(11),
      Q => gt0_rx_cdrlock_counter(11),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(12),
      Q => gt0_rx_cdrlock_counter(12),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(13),
      Q => gt0_rx_cdrlock_counter(13),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(14),
      Q => gt0_rx_cdrlock_counter(14),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(15),
      Q => gt0_rx_cdrlock_counter(15),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(16),
      Q => gt0_rx_cdrlock_counter(16),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(17),
      Q => gt0_rx_cdrlock_counter(17),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(18),
      Q => gt0_rx_cdrlock_counter(18),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(19),
      Q => gt0_rx_cdrlock_counter(19),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(1),
      Q => gt0_rx_cdrlock_counter(1),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(20),
      Q => gt0_rx_cdrlock_counter(20),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(21),
      Q => gt0_rx_cdrlock_counter(21),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(22),
      Q => gt0_rx_cdrlock_counter(22),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(23),
      Q => gt0_rx_cdrlock_counter(23),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(24),
      Q => gt0_rx_cdrlock_counter(24),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(25),
      Q => gt0_rx_cdrlock_counter(25),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(26),
      Q => gt0_rx_cdrlock_counter(26),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(27),
      Q => gt0_rx_cdrlock_counter(27),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(28),
      Q => gt0_rx_cdrlock_counter(28),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(29),
      Q => gt0_rx_cdrlock_counter(29),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(2),
      Q => gt0_rx_cdrlock_counter(2),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(30),
      Q => gt0_rx_cdrlock_counter(30),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(31),
      Q => gt0_rx_cdrlock_counter(31),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(3),
      Q => gt0_rx_cdrlock_counter(3),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(4),
      Q => gt0_rx_cdrlock_counter(4),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(5),
      Q => gt0_rx_cdrlock_counter(5),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(6),
      Q => gt0_rx_cdrlock_counter(6),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(7),
      Q => gt0_rx_cdrlock_counter(7),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(8),
      Q => gt0_rx_cdrlock_counter(8),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(9),
      Q => gt0_rx_cdrlock_counter(9),
      R => gt0_gtrxreset_gt_d1
    );
gt0_rx_cdrlocked_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => gt0_rx_cdrlocked_reg_n_0,
      I1 => \gt0_rx_cdrlock_counter[31]_i_2_n_0\,
      I2 => \gt0_rx_cdrlock_counter[31]_i_3_n_0\,
      I3 => \gt0_rx_cdrlock_counter[31]_i_4_n_0\,
      I4 => \gt0_rx_cdrlock_counter[31]_i_5_n_0\,
      O => gt0_rx_cdrlocked_i_1_n_0
    );
gt0_rx_cdrlocked_reg: unisim.vcomponents.FDRE
     port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlocked_i_1_n_0,
      Q => gt0_rx_cdrlocked_reg_n_0,
      R => gt0_gtrxreset_gt_d1
    );
gt0_rxresetfsm_i: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_RX_STARTUP_FSM
     port map (
      data_in => rx_fsm_reset_done_int_reg,
      data_out => data_out,
      data_sync_reg1 => gtwizard_i_n_3,
      gt0_gtrxreset_gt => gt0_gtrxreset_gt,
      gt0_gtrxreset_gt_d1_reg => gt0_gtrxreset_gt_d1_reg_0,
      gt0_pll0lock_in => gt0_pll0lock_in,
      gt0_rxuserrdy_i => gt0_rxuserrdy_i,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_locked => mmcm_locked,
      pma_reset => pma_reset,
      reset_time_out_reg_0 => gt0_rx_cdrlocked_reg_n_0,
      userclk => userclk
    );
gt0_txresetfsm_i: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_TX_STARTUP_FSM
     port map (
      PLL0_RESET_reg_0 => \^reset_in\,
      data_in => data_in,
      data_sync_reg1 => gtwizard_i_n_5,
      gt0_gttxreset_gt => gt0_gttxreset_gt,
      gt0_pll0lock_in => gt0_pll0lock_in,
      gt0_pll0refclklost_in => gt0_pll0refclklost_in,
      gt0_txuserrdy_i => gt0_txuserrdy_i,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_locked => mmcm_locked,
      mmcm_reset => mmcm_reset,
      pma_reset => pma_reset,
      txn => txn_3,
      userclk => userclk
    );
gtwizard_i: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_GTWIZARD_multi_gt
     port map (
      D(1 downto 0) => D(1 downto 0),
      Q(15 downto 0) => Q(15 downto 0),
      RXBUFSTATUS(0) => RXBUFSTATUS(0),
      RXPD(0) => RXPD(0),
      SR(0) => gt0_gtrxreset_gt_d1,
      TXBUFSTATUS(0) => TXBUFSTATUS(0),
      TXPD(0) => TXPD(0),
      gt0_gttxreset_gt => gt0_gttxreset_gt,
      gt0_pll0outclk_in => gt0_pll0outclk_in,
      gt0_pll0outrefclk_in => gt0_pll0outrefclk_in,
      gt0_pll1outclk_in => gt0_pll1outclk_in,
      gt0_pll1outrefclk_in => gt0_pll1outrefclk_in,
      gt0_rxuserrdy_i => gt0_rxuserrdy_i,
      gt0_txuserrdy_i => gt0_txuserrdy_i,
      gtrefclk_bufg => gtrefclk_bufg,
      gtrefclk_bufg_0 => gtwizard_i_n_3,
      gtrefclk_bufg_1 => gtwizard_i_n_5,
      gtrefclk_bufg_2(15 downto 0) => gtrefclk_bufg_0(15 downto 0),
      gtrefclk_bufg_3(1 downto 0) => gtrefclk_bufg_1(1 downto 0),
      gtrefclk_bufg_4(1 downto 0) => gtrefclk_bufg_2(1 downto 0),
      gtrefclk_bufg_5(1 downto 0) => gtrefclk_bufg_3(1 downto 0),
      gtrefclk_bufg_6(1 downto 0) => gtrefclk_bufg_4(1 downto 0),
      reset_out => reset_out,
      reset_sync5 => \^reset_in\,
      rxn => rxn,
      rxoutclk => rxoutclk,
      rxp => rxp,
      txn => txn,
      txn_0(1 downto 0) => txn_0(1 downto 0),
      txn_1(1 downto 0) => txn_1(1 downto 0),
      txn_2(1 downto 0) => txn_2(1 downto 0),
      txoutclk => txoutclk,
      txp => txp,
      userclk => userclk,
      wtd_rxpcsreset_in => wtd_rxpcsreset_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_GTWIZARD is
  port (
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    rxoutclk : out STD_LOGIC;
    txoutclk : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    RXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk_bufg_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gtrefclk_bufg_1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtrefclk_bufg_2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtrefclk_bufg_3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtrefclk_bufg_4 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mmcm_reset : out STD_LOGIC;
    PLL0_RESET_reg : out STD_LOGIC;
    data_in : out STD_LOGIC;
    rx_fsm_reset_done_int_reg : out STD_LOGIC;
    gtrefclk_bufg : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt0_pll0outclk_in : in STD_LOGIC;
    gt0_pll0outrefclk_in : in STD_LOGIC;
    gt0_pll1outclk_in : in STD_LOGIC;
    gt0_pll1outrefclk_in : in STD_LOGIC;
    reset_out : in STD_LOGIC;
    wtd_rxpcsreset_in : in STD_LOGIC;
    userclk : in STD_LOGIC;
    TXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    RXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    txn_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txn_1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txn_2 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    independent_clock_bufg : in STD_LOGIC;
    pma_reset : in STD_LOGIC;
    gt0_pll0refclklost_in : in STD_LOGIC;
    gt0_gtrxreset_gt_d1_reg : in STD_LOGIC;
    txn_3 : in STD_LOGIC;
    mmcm_locked : in STD_LOGIC;
    gt0_pll0lock_in : in STD_LOGIC;
    data_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_GTWIZARD : entity is "gig_ethernet_pcs_pma_0_GTWIZARD";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_GTWIZARD;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_GTWIZARD is
begin
inst: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_GTWIZARD_init
     port map (
      D(1 downto 0) => D(1 downto 0),
      Q(15 downto 0) => Q(15 downto 0),
      RXBUFSTATUS(0) => RXBUFSTATUS(0),
      RXPD(0) => RXPD(0),
      TXBUFSTATUS(0) => TXBUFSTATUS(0),
      TXPD(0) => TXPD(0),
      data_in => data_in,
      data_out => data_out,
      gt0_gtrxreset_gt_d1_reg_0 => gt0_gtrxreset_gt_d1_reg,
      gt0_pll0lock_in => gt0_pll0lock_in,
      gt0_pll0outclk_in => gt0_pll0outclk_in,
      gt0_pll0outrefclk_in => gt0_pll0outrefclk_in,
      gt0_pll0refclklost_in => gt0_pll0refclklost_in,
      gt0_pll1outclk_in => gt0_pll1outclk_in,
      gt0_pll1outrefclk_in => gt0_pll1outrefclk_in,
      gtrefclk_bufg => gtrefclk_bufg,
      gtrefclk_bufg_0(15 downto 0) => gtrefclk_bufg_0(15 downto 0),
      gtrefclk_bufg_1(1 downto 0) => gtrefclk_bufg_1(1 downto 0),
      gtrefclk_bufg_2(1 downto 0) => gtrefclk_bufg_2(1 downto 0),
      gtrefclk_bufg_3(1 downto 0) => gtrefclk_bufg_3(1 downto 0),
      gtrefclk_bufg_4(1 downto 0) => gtrefclk_bufg_4(1 downto 0),
      independent_clock_bufg => independent_clock_bufg,
      mmcm_locked => mmcm_locked,
      mmcm_reset => mmcm_reset,
      pma_reset => pma_reset,
      reset_in => PLL0_RESET_reg,
      reset_out => reset_out,
      rx_fsm_reset_done_int_reg => rx_fsm_reset_done_int_reg,
      rxn => rxn,
      rxoutclk => rxoutclk,
      rxp => rxp,
      txn => txn,
      txn_0(1 downto 0) => txn_0(1 downto 0),
      txn_1(1 downto 0) => txn_1(1 downto 0),
      txn_2(1 downto 0) => txn_2(1 downto 0),
      txn_3 => txn_3,
      txoutclk => txoutclk,
      txp => txp,
      userclk => userclk,
      wtd_rxpcsreset_in => wtd_rxpcsreset_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_transceiver is
  port (
    gt0_pll0reset_out : out STD_LOGIC;
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    rxoutclk : out STD_LOGIC;
    txoutclk : out STD_LOGIC;
    data_in : out STD_LOGIC;
    rx_fsm_reset_done_int_reg : out STD_LOGIC;
    rxchariscomma : out STD_LOGIC;
    rxcharisk : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \rxdata_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rxdisperr : out STD_LOGIC;
    rxnotintable : out STD_LOGIC;
    rxbuferr : out STD_LOGIC;
    txbuferr : out STD_LOGIC;
    mmcm_reset : out STD_LOGIC;
    status_vector : in STD_LOGIC_VECTOR ( 0 to 0 );
    independent_clock_bufg : in STD_LOGIC;
    userclk : in STD_LOGIC;
    enablealign : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    reset_sync5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk_bufg : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt0_pll0outclk_in : in STD_LOGIC;
    gt0_pll0outrefclk_in : in STD_LOGIC;
    gt0_pll1outclk_in : in STD_LOGIC;
    gt0_pll1outrefclk_in : in STD_LOGIC;
    mmcm_locked : in STD_LOGIC;
    gt0_pll0lock_in : in STD_LOGIC;
    pma_reset : in STD_LOGIC;
    userclk2 : in STD_LOGIC;
    powerdown : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    txchardispmode_reg_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    txchardispval_reg_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    txcharisk_reg_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_pll0refclklost_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_transceiver : entity is "gig_ethernet_pcs_pma_0_transceiver";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_transceiver;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_transceiver is
  signal data_valid_reg2 : STD_LOGIC;
  signal encommaalign_int : STD_LOGIC;
  signal gtwizard_inst_n_6 : STD_LOGIC;
  signal gtwizard_inst_n_7 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \p_1_in__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \p_1_in__1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \p_1_in__2\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rxchariscomma_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxchariscomma_i_1_n_0 : STD_LOGIC;
  signal rxchariscomma_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rxchariscomma_reg__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxcharisk_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxcharisk_i_1_n_0 : STD_LOGIC;
  signal rxcharisk_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rxcharisk_reg__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxclkcorcnt_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxclkcorcnt_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxclkcorcnt_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rxdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \rxdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \rxdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \rxdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \rxdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \rxdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \rxdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \rxdata[7]_i_1_n_0\ : STD_LOGIC;
  signal rxdata_double : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rxdata_int : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rxdata_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rxdisperr_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxdisperr_i_1_n_0 : STD_LOGIC;
  signal rxdisperr_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rxdisperr_reg__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxnotintable_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxnotintable_i_1_n_0 : STD_LOGIC;
  signal rxnotintable_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rxnotintable_reg__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxpowerdown : STD_LOGIC;
  signal rxpowerdown_double : STD_LOGIC;
  signal \rxpowerdown_reg__0\ : STD_LOGIC;
  signal rxreset_int : STD_LOGIC;
  signal toggle : STD_LOGIC;
  signal toggle_i_1_n_0 : STD_LOGIC;
  signal txbufstatus_reg : STD_LOGIC_VECTOR ( 1 to 1 );
  signal txchardispmode_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal txchardispmode_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal txchardispval_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal txchardispval_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal txcharisk_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal txcharisk_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal txdata_double : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal txdata_int : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal txpowerdown : STD_LOGIC;
  signal txpowerdown_double : STD_LOGIC;
  signal \txpowerdown_reg__0\ : STD_LOGIC;
  signal txreset_int : STD_LOGIC;
  signal wtd_rxpcsreset_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of rxchariscomma_i_1 : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of rxcharisk_i_1 : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \rxdata[0]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \rxdata[1]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \rxdata[2]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \rxdata[3]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \rxdata[4]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \rxdata[5]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \rxdata[6]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \rxdata[7]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of rxdisperr_i_1 : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of rxnotintable_i_1 : label is "soft_lutpair97";
begin
gtwizard_inst: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_GTWIZARD
     port map (
      D(1 downto 0) => rxclkcorcnt_int(1 downto 0),
      PLL0_RESET_reg => gt0_pll0reset_out,
      Q(15 downto 0) => txdata_int(15 downto 0),
      RXBUFSTATUS(0) => gtwizard_inst_n_7,
      RXPD(0) => rxpowerdown,
      TXBUFSTATUS(0) => gtwizard_inst_n_6,
      TXPD(0) => txpowerdown,
      data_in => data_in,
      data_out => data_valid_reg2,
      gt0_gtrxreset_gt_d1_reg => rxreset_int,
      gt0_pll0lock_in => gt0_pll0lock_in,
      gt0_pll0outclk_in => gt0_pll0outclk_in,
      gt0_pll0outrefclk_in => gt0_pll0outrefclk_in,
      gt0_pll0refclklost_in => gt0_pll0refclklost_in,
      gt0_pll1outclk_in => gt0_pll1outclk_in,
      gt0_pll1outrefclk_in => gt0_pll1outrefclk_in,
      gtrefclk_bufg => gtrefclk_bufg,
      gtrefclk_bufg_0(15 downto 0) => rxdata_int(15 downto 0),
      gtrefclk_bufg_1(1 downto 0) => rxchariscomma_int(1 downto 0),
      gtrefclk_bufg_2(1 downto 0) => rxcharisk_int(1 downto 0),
      gtrefclk_bufg_3(1 downto 0) => rxdisperr_int(1 downto 0),
      gtrefclk_bufg_4(1 downto 0) => rxnotintable_int(1 downto 0),
      independent_clock_bufg => independent_clock_bufg,
      mmcm_locked => mmcm_locked,
      mmcm_reset => mmcm_reset,
      pma_reset => pma_reset,
      reset_out => encommaalign_int,
      rx_fsm_reset_done_int_reg => rx_fsm_reset_done_int_reg,
      rxn => rxn,
      rxoutclk => rxoutclk,
      rxp => rxp,
      txn => txn,
      txn_0(1 downto 0) => txchardispmode_int(1 downto 0),
      txn_1(1 downto 0) => txchardispval_int(1 downto 0),
      txn_2(1 downto 0) => txcharisk_int(1 downto 0),
      txn_3 => txreset_int,
      txoutclk => txoutclk,
      txp => txp,
      userclk => userclk,
      wtd_rxpcsreset_in => wtd_rxpcsreset_in
    );
reclock_encommaalign: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync
     port map (
      enablealign => enablealign,
      reset_out => encommaalign_int,
      userclk => userclk
    );
reclock_rxreset: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_1
     port map (
      independent_clock_bufg => independent_clock_bufg,
      reset_out => rxreset_int,
      reset_sync5_0(0) => reset_sync5(0)
    );
reclock_txreset: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_2
     port map (
      SR(0) => SR(0),
      independent_clock_bufg => independent_clock_bufg,
      reset_out => txreset_int
    );
reset_wtd_timer: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_wtd_timer
     port map (
      data_out => data_valid_reg2,
      independent_clock_bufg => independent_clock_bufg,
      wtd_rxpcsreset_in => wtd_rxpcsreset_in
    );
rxbuferr_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => p_0_in,
      Q => rxbuferr,
      R => '0'
    );
\rxbufstatus_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => gtwizard_inst_n_7,
      Q => p_0_in,
      R => '0'
    );
\rxchariscomma_double_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => \rxchariscomma_reg__0\(0),
      Q => rxchariscomma_double(0),
      R => reset_sync5(0)
    );
\rxchariscomma_double_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => \rxchariscomma_reg__0\(1),
      Q => rxchariscomma_double(1),
      R => reset_sync5(0)
    );
rxchariscomma_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxchariscomma_double(1),
      I1 => toggle,
      I2 => rxchariscomma_double(0),
      O => rxchariscomma_i_1_n_0
    );
rxchariscomma_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => rxchariscomma_i_1_n_0,
      Q => rxchariscomma,
      R => reset_sync5(0)
    );
\rxchariscomma_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxchariscomma_int(0),
      Q => \rxchariscomma_reg__0\(0),
      R => '0'
    );
\rxchariscomma_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxchariscomma_int(1),
      Q => \rxchariscomma_reg__0\(1),
      R => '0'
    );
\rxcharisk_double_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => \rxcharisk_reg__0\(0),
      Q => rxcharisk_double(0),
      R => reset_sync5(0)
    );
\rxcharisk_double_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => \rxcharisk_reg__0\(1),
      Q => rxcharisk_double(1),
      R => reset_sync5(0)
    );
rxcharisk_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxcharisk_double(1),
      I1 => toggle,
      I2 => rxcharisk_double(0),
      O => rxcharisk_i_1_n_0
    );
rxcharisk_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => rxcharisk_i_1_n_0,
      Q => rxcharisk,
      R => reset_sync5(0)
    );
\rxcharisk_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxcharisk_int(0),
      Q => \rxcharisk_reg__0\(0),
      R => '0'
    );
\rxcharisk_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxcharisk_int(1),
      Q => \rxcharisk_reg__0\(1),
      R => '0'
    );
\rxclkcorcnt_double_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxclkcorcnt_reg(0),
      Q => rxclkcorcnt_double(0),
      R => reset_sync5(0)
    );
\rxclkcorcnt_double_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxclkcorcnt_reg(1),
      Q => rxclkcorcnt_double(1),
      R => reset_sync5(0)
    );
\rxclkcorcnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => rxclkcorcnt_double(0),
      Q => Q(0),
      R => reset_sync5(0)
    );
\rxclkcorcnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => rxclkcorcnt_double(1),
      Q => Q(1),
      R => reset_sync5(0)
    );
\rxclkcorcnt_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxclkcorcnt_int(0),
      Q => rxclkcorcnt_reg(0),
      R => '0'
    );
\rxclkcorcnt_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxclkcorcnt_int(1),
      Q => rxclkcorcnt_reg(1),
      R => '0'
    );
\rxdata[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxdata_double(8),
      I1 => toggle,
      I2 => rxdata_double(0),
      O => \rxdata[0]_i_1_n_0\
    );
\rxdata[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxdata_double(9),
      I1 => toggle,
      I2 => rxdata_double(1),
      O => \rxdata[1]_i_1_n_0\
    );
\rxdata[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxdata_double(10),
      I1 => toggle,
      I2 => rxdata_double(2),
      O => \rxdata[2]_i_1_n_0\
    );
\rxdata[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxdata_double(11),
      I1 => toggle,
      I2 => rxdata_double(3),
      O => \rxdata[3]_i_1_n_0\
    );
\rxdata[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxdata_double(12),
      I1 => toggle,
      I2 => rxdata_double(4),
      O => \rxdata[4]_i_1_n_0\
    );
\rxdata[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxdata_double(13),
      I1 => toggle,
      I2 => rxdata_double(5),
      O => \rxdata[5]_i_1_n_0\
    );
\rxdata[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxdata_double(14),
      I1 => toggle,
      I2 => rxdata_double(6),
      O => \rxdata[6]_i_1_n_0\
    );
\rxdata[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxdata_double(15),
      I1 => toggle,
      I2 => rxdata_double(7),
      O => \rxdata[7]_i_1_n_0\
    );
\rxdata_double_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(0),
      Q => rxdata_double(0),
      R => reset_sync5(0)
    );
\rxdata_double_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(10),
      Q => rxdata_double(10),
      R => reset_sync5(0)
    );
\rxdata_double_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(11),
      Q => rxdata_double(11),
      R => reset_sync5(0)
    );
\rxdata_double_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(12),
      Q => rxdata_double(12),
      R => reset_sync5(0)
    );
\rxdata_double_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(13),
      Q => rxdata_double(13),
      R => reset_sync5(0)
    );
\rxdata_double_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(14),
      Q => rxdata_double(14),
      R => reset_sync5(0)
    );
\rxdata_double_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(15),
      Q => rxdata_double(15),
      R => reset_sync5(0)
    );
\rxdata_double_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(1),
      Q => rxdata_double(1),
      R => reset_sync5(0)
    );
\rxdata_double_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(2),
      Q => rxdata_double(2),
      R => reset_sync5(0)
    );
\rxdata_double_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(3),
      Q => rxdata_double(3),
      R => reset_sync5(0)
    );
\rxdata_double_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(4),
      Q => rxdata_double(4),
      R => reset_sync5(0)
    );
\rxdata_double_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(5),
      Q => rxdata_double(5),
      R => reset_sync5(0)
    );
\rxdata_double_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(6),
      Q => rxdata_double(6),
      R => reset_sync5(0)
    );
\rxdata_double_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(7),
      Q => rxdata_double(7),
      R => reset_sync5(0)
    );
\rxdata_double_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(8),
      Q => rxdata_double(8),
      R => reset_sync5(0)
    );
\rxdata_double_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(9),
      Q => rxdata_double(9),
      R => reset_sync5(0)
    );
\rxdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \rxdata[0]_i_1_n_0\,
      Q => \rxdata_reg[7]_0\(0),
      R => reset_sync5(0)
    );
\rxdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \rxdata[1]_i_1_n_0\,
      Q => \rxdata_reg[7]_0\(1),
      R => reset_sync5(0)
    );
\rxdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \rxdata[2]_i_1_n_0\,
      Q => \rxdata_reg[7]_0\(2),
      R => reset_sync5(0)
    );
\rxdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \rxdata[3]_i_1_n_0\,
      Q => \rxdata_reg[7]_0\(3),
      R => reset_sync5(0)
    );
\rxdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \rxdata[4]_i_1_n_0\,
      Q => \rxdata_reg[7]_0\(4),
      R => reset_sync5(0)
    );
\rxdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \rxdata[5]_i_1_n_0\,
      Q => \rxdata_reg[7]_0\(5),
      R => reset_sync5(0)
    );
\rxdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \rxdata[6]_i_1_n_0\,
      Q => \rxdata_reg[7]_0\(6),
      R => reset_sync5(0)
    );
\rxdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \rxdata[7]_i_1_n_0\,
      Q => \rxdata_reg[7]_0\(7),
      R => reset_sync5(0)
    );
\rxdata_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxdata_int(0),
      Q => rxdata_reg(0),
      R => '0'
    );
\rxdata_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxdata_int(10),
      Q => rxdata_reg(10),
      R => '0'
    );
\rxdata_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxdata_int(11),
      Q => rxdata_reg(11),
      R => '0'
    );
\rxdata_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxdata_int(12),
      Q => rxdata_reg(12),
      R => '0'
    );
\rxdata_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxdata_int(13),
      Q => rxdata_reg(13),
      R => '0'
    );
\rxdata_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxdata_int(14),
      Q => rxdata_reg(14),
      R => '0'
    );
\rxdata_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxdata_int(15),
      Q => rxdata_reg(15),
      R => '0'
    );
\rxdata_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxdata_int(1),
      Q => rxdata_reg(1),
      R => '0'
    );
\rxdata_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxdata_int(2),
      Q => rxdata_reg(2),
      R => '0'
    );
\rxdata_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxdata_int(3),
      Q => rxdata_reg(3),
      R => '0'
    );
\rxdata_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxdata_int(4),
      Q => rxdata_reg(4),
      R => '0'
    );
\rxdata_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxdata_int(5),
      Q => rxdata_reg(5),
      R => '0'
    );
\rxdata_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxdata_int(6),
      Q => rxdata_reg(6),
      R => '0'
    );
\rxdata_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxdata_int(7),
      Q => rxdata_reg(7),
      R => '0'
    );
\rxdata_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxdata_int(8),
      Q => rxdata_reg(8),
      R => '0'
    );
\rxdata_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxdata_int(9),
      Q => rxdata_reg(9),
      R => '0'
    );
\rxdisperr_double_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => \rxdisperr_reg__0\(0),
      Q => rxdisperr_double(0),
      R => reset_sync5(0)
    );
\rxdisperr_double_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => \rxdisperr_reg__0\(1),
      Q => rxdisperr_double(1),
      R => reset_sync5(0)
    );
rxdisperr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxdisperr_double(1),
      I1 => toggle,
      I2 => rxdisperr_double(0),
      O => rxdisperr_i_1_n_0
    );
rxdisperr_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => rxdisperr_i_1_n_0,
      Q => rxdisperr,
      R => reset_sync5(0)
    );
\rxdisperr_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxdisperr_int(0),
      Q => \rxdisperr_reg__0\(0),
      R => '0'
    );
\rxdisperr_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxdisperr_int(1),
      Q => \rxdisperr_reg__0\(1),
      R => '0'
    );
\rxnotintable_double_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => \rxnotintable_reg__0\(0),
      Q => rxnotintable_double(0),
      R => reset_sync5(0)
    );
\rxnotintable_double_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => \rxnotintable_reg__0\(1),
      Q => rxnotintable_double(1),
      R => reset_sync5(0)
    );
rxnotintable_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxnotintable_double(1),
      I1 => toggle,
      I2 => rxnotintable_double(0),
      O => rxnotintable_i_1_n_0
    );
rxnotintable_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => rxnotintable_i_1_n_0,
      Q => rxnotintable,
      R => reset_sync5(0)
    );
\rxnotintable_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxnotintable_int(0),
      Q => \rxnotintable_reg__0\(0),
      R => '0'
    );
\rxnotintable_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => rxnotintable_int(1),
      Q => \rxnotintable_reg__0\(1),
      R => '0'
    );
rxpowerdown_double_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => powerdown,
      Q => rxpowerdown_double,
      R => '0'
    );
rxpowerdown_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => \rxpowerdown_reg__0\,
      Q => rxpowerdown,
      R => '0'
    );
rxpowerdown_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => rxpowerdown_double,
      Q => \rxpowerdown_reg__0\,
      R => reset_sync5(0)
    );
sync_block_data_valid: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_3
     port map (
      data_out => data_valid_reg2,
      independent_clock_bufg => independent_clock_bufg,
      status_vector(0) => status_vector(0)
    );
toggle_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => toggle,
      O => toggle_i_1_n_0
    );
toggle_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => toggle_i_1_n_0,
      Q => toggle,
      R => SR(0)
    );
txbuferr_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => txbufstatus_reg(1),
      Q => txbuferr,
      R => '0'
    );
\txbufstatus_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => gtwizard_inst_n_6,
      Q => txbufstatus_reg(1),
      R => '0'
    );
\txchardispmode_double_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => \p_1_in__0\(0),
      Q => txchardispmode_double(0),
      R => SR(0)
    );
\txchardispmode_double_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => txchardispmode_reg_reg_0(0),
      Q => txchardispmode_double(1),
      R => SR(0)
    );
\txchardispmode_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => txchardispmode_double(0),
      Q => txchardispmode_int(0),
      R => '0'
    );
\txchardispmode_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => txchardispmode_double(1),
      Q => txchardispmode_int(1),
      R => '0'
    );
txchardispmode_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => txchardispmode_reg_reg_0(0),
      Q => \p_1_in__0\(0),
      R => SR(0)
    );
\txchardispval_double_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => \p_1_in__1\(0),
      Q => txchardispval_double(0),
      R => SR(0)
    );
\txchardispval_double_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => txchardispval_reg_reg_0(0),
      Q => txchardispval_double(1),
      R => SR(0)
    );
\txchardispval_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => txchardispval_double(0),
      Q => txchardispval_int(0),
      R => '0'
    );
\txchardispval_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => txchardispval_double(1),
      Q => txchardispval_int(1),
      R => '0'
    );
txchardispval_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => txchardispval_reg_reg_0(0),
      Q => \p_1_in__1\(0),
      R => SR(0)
    );
\txcharisk_double_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => \p_1_in__2\(0),
      Q => txcharisk_double(0),
      R => SR(0)
    );
\txcharisk_double_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => txcharisk_reg_reg_0(0),
      Q => txcharisk_double(1),
      R => SR(0)
    );
\txcharisk_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => txcharisk_double(0),
      Q => txcharisk_int(0),
      R => '0'
    );
\txcharisk_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => txcharisk_double(1),
      Q => txcharisk_int(1),
      R => '0'
    );
txcharisk_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => txcharisk_reg_reg_0(0),
      Q => \p_1_in__2\(0),
      R => SR(0)
    );
\txdata_double_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => p_1_in(0),
      Q => txdata_double(0),
      R => SR(0)
    );
\txdata_double_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => D(2),
      Q => txdata_double(10),
      R => SR(0)
    );
\txdata_double_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => D(3),
      Q => txdata_double(11),
      R => SR(0)
    );
\txdata_double_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => D(4),
      Q => txdata_double(12),
      R => SR(0)
    );
\txdata_double_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => D(5),
      Q => txdata_double(13),
      R => SR(0)
    );
\txdata_double_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => D(6),
      Q => txdata_double(14),
      R => SR(0)
    );
\txdata_double_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => D(7),
      Q => txdata_double(15),
      R => SR(0)
    );
\txdata_double_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => p_1_in(1),
      Q => txdata_double(1),
      R => SR(0)
    );
\txdata_double_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => p_1_in(2),
      Q => txdata_double(2),
      R => SR(0)
    );
\txdata_double_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => p_1_in(3),
      Q => txdata_double(3),
      R => SR(0)
    );
\txdata_double_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => p_1_in(4),
      Q => txdata_double(4),
      R => SR(0)
    );
\txdata_double_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => p_1_in(5),
      Q => txdata_double(5),
      R => SR(0)
    );
\txdata_double_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => p_1_in(6),
      Q => txdata_double(6),
      R => SR(0)
    );
\txdata_double_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => p_1_in(7),
      Q => txdata_double(7),
      R => SR(0)
    );
\txdata_double_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => D(0),
      Q => txdata_double(8),
      R => SR(0)
    );
\txdata_double_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => D(1),
      Q => txdata_double(9),
      R => SR(0)
    );
\txdata_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => txdata_double(0),
      Q => txdata_int(0),
      R => '0'
    );
\txdata_int_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => txdata_double(10),
      Q => txdata_int(10),
      R => '0'
    );
\txdata_int_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => txdata_double(11),
      Q => txdata_int(11),
      R => '0'
    );
\txdata_int_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => txdata_double(12),
      Q => txdata_int(12),
      R => '0'
    );
\txdata_int_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => txdata_double(13),
      Q => txdata_int(13),
      R => '0'
    );
\txdata_int_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => txdata_double(14),
      Q => txdata_int(14),
      R => '0'
    );
\txdata_int_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => txdata_double(15),
      Q => txdata_int(15),
      R => '0'
    );
\txdata_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => txdata_double(1),
      Q => txdata_int(1),
      R => '0'
    );
\txdata_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => txdata_double(2),
      Q => txdata_int(2),
      R => '0'
    );
\txdata_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => txdata_double(3),
      Q => txdata_int(3),
      R => '0'
    );
\txdata_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => txdata_double(4),
      Q => txdata_int(4),
      R => '0'
    );
\txdata_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => txdata_double(5),
      Q => txdata_int(5),
      R => '0'
    );
\txdata_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => txdata_double(6),
      Q => txdata_int(6),
      R => '0'
    );
\txdata_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => txdata_double(7),
      Q => txdata_int(7),
      R => '0'
    );
\txdata_int_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => txdata_double(8),
      Q => txdata_int(8),
      R => '0'
    );
\txdata_int_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => userclk,
      CE => '1',
      D => txdata_double(9),
      Q => txdata_int(9),
      R => '0'
    );
\txdata_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => D(0),
      Q => p_1_in(0),
      R => SR(0)
    );
\txdata_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => D(1),
      Q => p_1_in(1),
      R => SR(0)
    );
\txdata_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => D(2),
      Q => p_1_in(2),
      R => SR(0)
    );
\txdata_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => D(3),
      Q => p_1_in(3),
      R => SR(0)
    );
\txdata_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => D(4),
      Q => p_1_in(4),
      R => SR(0)
    );
\txdata_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => D(5),
      Q => p_1_in(5),
      R => SR(0)
    );
\txdata_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => D(6),
      Q => p_1_in(6),
      R => SR(0)
    );
\txdata_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => D(7),
      Q => p_1_in(7),
      R => SR(0)
    );
txpowerdown_double_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \txpowerdown_reg__0\,
      Q => txpowerdown_double,
      R => SR(0)
    );
txpowerdown_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk,
      CE => '1',
      D => txpowerdown_double,
      Q => txpowerdown,
      R => '0'
    );
txpowerdown_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => powerdown,
      Q => \txpowerdown_reg__0\,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_block is
  port (
    gtrefclk : in STD_LOGIC;
    gtrefclk_bufg : in STD_LOGIC;
    txp : out STD_LOGIC;
    txn : out STD_LOGIC;
    rxp : in STD_LOGIC;
    rxn : in STD_LOGIC;
    txoutclk : out STD_LOGIC;
    rxoutclk : out STD_LOGIC;
    resetdone : out STD_LOGIC;
    cplllock : out STD_LOGIC;
    mmcm_reset : out STD_LOGIC;
    mmcm_locked : in STD_LOGIC;
    userclk : in STD_LOGIC;
    userclk2 : in STD_LOGIC;
    rxuserclk : in STD_LOGIC;
    rxuserclk2 : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    pma_reset : in STD_LOGIC;
    gmii_txd : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_tx_en : in STD_LOGIC;
    gmii_tx_er : in STD_LOGIC;
    gmii_rxd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_rx_dv : out STD_LOGIC;
    gmii_rx_er : out STD_LOGIC;
    gmii_isolate : out STD_LOGIC;
    configuration_vector : in STD_LOGIC_VECTOR ( 4 downto 0 );
    status_vector : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reset : in STD_LOGIC;
    signal_detect : in STD_LOGIC;
    gt0_pll0outclk_in : in STD_LOGIC;
    gt0_pll0outrefclk_in : in STD_LOGIC;
    gt0_pll1outclk_in : in STD_LOGIC;
    gt0_pll1outrefclk_in : in STD_LOGIC;
    gt0_pll0refclklost_in : in STD_LOGIC;
    gt0_pll0lock_in : in STD_LOGIC;
    gt0_pll0reset_out : out STD_LOGIC
  );
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_block : entity is "yes";
  attribute EXAMPLE_SIMULATION : integer;
  attribute EXAMPLE_SIMULATION of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_block : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_block : entity is "gig_ethernet_pcs_pma_0_block";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_block;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_block is
  signal \<const0>\ : STD_LOGIC;
  signal enablealign : STD_LOGIC;
  signal \^gt0_pll0lock_in\ : STD_LOGIC;
  signal mgt_rx_reset : STD_LOGIC;
  signal mgt_tx_reset : STD_LOGIC;
  signal powerdown : STD_LOGIC;
  signal \^resetdone\ : STD_LOGIC;
  signal rxbufstatus : STD_LOGIC_VECTOR ( 1 to 1 );
  signal rxchariscomma : STD_LOGIC;
  signal rxcharisk : STD_LOGIC;
  signal rxclkcorcnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxdata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rxdisperr : STD_LOGIC;
  signal rxnotintable : STD_LOGIC;
  signal \^status_vector\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal transceiver_inst_n_5 : STD_LOGIC;
  signal transceiver_inst_n_6 : STD_LOGIC;
  signal tx_reset_done_i : STD_LOGIC;
  signal txbuferr : STD_LOGIC;
  signal txchardispmode : STD_LOGIC;
  signal txchardispval : STD_LOGIC;
  signal txcharisk : STD_LOGIC;
  signal txdata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_0_core_an_enable_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_an_interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_drp_den_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_drp_dwe_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_drp_req_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_en_cdet_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_ewrap_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_loc_ref_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_mdio_out_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_mdio_tri_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_drp_daddr_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_0_core_drp_di_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_0_core_rxphy_correction_timer_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_0_core_rxphy_ns_field_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_0_core_rxphy_s_field_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_0_core_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_0_core_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_0_core_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_0_core_speed_selection_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_0_core_status_vector_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 7 );
  signal NLW_gig_ethernet_pcs_pma_0_core_tx_code_group_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute B_SHIFTER_ADDR : string;
  attribute B_SHIFTER_ADDR of gig_ethernet_pcs_pma_0_core : label is "10'b0101010000";
  attribute C_1588 : integer;
  attribute C_1588 of gig_ethernet_pcs_pma_0_core : label is 0;
  attribute C_2_5G : string;
  attribute C_2_5G of gig_ethernet_pcs_pma_0_core : label is "FALSE";
  attribute C_COMPONENT_NAME : string;
  attribute C_COMPONENT_NAME of gig_ethernet_pcs_pma_0_core : label is "gig_ethernet_pcs_pma_0";
  attribute C_DYNAMIC_SWITCHING : string;
  attribute C_DYNAMIC_SWITCHING of gig_ethernet_pcs_pma_0_core : label is "FALSE";
  attribute C_ELABORATION_TRANSIENT_DIR : string;
  attribute C_ELABORATION_TRANSIENT_DIR of gig_ethernet_pcs_pma_0_core : label is "BlankString";
  attribute C_FAMILY : string;
  attribute C_FAMILY of gig_ethernet_pcs_pma_0_core : label is "artix7";
  attribute C_HAS_AN : string;
  attribute C_HAS_AN of gig_ethernet_pcs_pma_0_core : label is "FALSE";
  attribute C_HAS_AXIL : string;
  attribute C_HAS_AXIL of gig_ethernet_pcs_pma_0_core : label is "FALSE";
  attribute C_HAS_MDIO : string;
  attribute C_HAS_MDIO of gig_ethernet_pcs_pma_0_core : label is "FALSE";
  attribute C_HAS_TEMAC : string;
  attribute C_HAS_TEMAC of gig_ethernet_pcs_pma_0_core : label is "TRUE";
  attribute C_IS_SGMII : string;
  attribute C_IS_SGMII of gig_ethernet_pcs_pma_0_core : label is "FALSE";
  attribute C_RX_GMII_CLK : string;
  attribute C_RX_GMII_CLK of gig_ethernet_pcs_pma_0_core : label is "TXOUTCLK";
  attribute C_SGMII_FABRIC_BUFFER : string;
  attribute C_SGMII_FABRIC_BUFFER of gig_ethernet_pcs_pma_0_core : label is "TRUE";
  attribute C_SGMII_PHY_MODE : string;
  attribute C_SGMII_PHY_MODE of gig_ethernet_pcs_pma_0_core : label is "FALSE";
  attribute C_USE_LVDS : string;
  attribute C_USE_LVDS of gig_ethernet_pcs_pma_0_core : label is "FALSE";
  attribute C_USE_TBI : string;
  attribute C_USE_TBI of gig_ethernet_pcs_pma_0_core : label is "FALSE";
  attribute C_USE_TRANSCEIVER : string;
  attribute C_USE_TRANSCEIVER of gig_ethernet_pcs_pma_0_core : label is "TRUE";
  attribute GT_RX_BYTE_WIDTH : integer;
  attribute GT_RX_BYTE_WIDTH of gig_ethernet_pcs_pma_0_core : label is 1;
  attribute downgradeipidentifiedwarnings of gig_ethernet_pcs_pma_0_core : label is "yes";
begin
  \^gt0_pll0lock_in\ <= gt0_pll0lock_in;
  cplllock <= \^gt0_pll0lock_in\;
  resetdone <= \^resetdone\;
  status_vector(15) <= \<const0>\;
  status_vector(14) <= \<const0>\;
  status_vector(13) <= \<const0>\;
  status_vector(12) <= \<const0>\;
  status_vector(11) <= \<const0>\;
  status_vector(10) <= \<const0>\;
  status_vector(9) <= \<const0>\;
  status_vector(8) <= \<const0>\;
  status_vector(7) <= \<const0>\;
  status_vector(6 downto 0) <= \^status_vector\(6 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
gig_ethernet_pcs_pma_0_core: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_1_6
     port map (
      an_adv_config_val => '0',
      an_adv_config_vector(15 downto 0) => B"0000000000000000",
      an_enable => NLW_gig_ethernet_pcs_pma_0_core_an_enable_UNCONNECTED,
      an_interrupt => NLW_gig_ethernet_pcs_pma_0_core_an_interrupt_UNCONNECTED,
      an_restart_config => '0',
      basex_or_sgmii => '0',
      configuration_valid => '0',
      configuration_vector(4) => '0',
      configuration_vector(3 downto 1) => configuration_vector(3 downto 1),
      configuration_vector(0) => '0',
      correction_timer(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      dcm_locked => mmcm_locked,
      drp_daddr(9 downto 0) => NLW_gig_ethernet_pcs_pma_0_core_drp_daddr_UNCONNECTED(9 downto 0),
      drp_dclk => '0',
      drp_den => NLW_gig_ethernet_pcs_pma_0_core_drp_den_UNCONNECTED,
      drp_di(15 downto 0) => NLW_gig_ethernet_pcs_pma_0_core_drp_di_UNCONNECTED(15 downto 0),
      drp_do(15 downto 0) => B"0000000000000000",
      drp_drdy => '0',
      drp_dwe => NLW_gig_ethernet_pcs_pma_0_core_drp_dwe_UNCONNECTED,
      drp_gnt => '0',
      drp_req => NLW_gig_ethernet_pcs_pma_0_core_drp_req_UNCONNECTED,
      en_cdet => NLW_gig_ethernet_pcs_pma_0_core_en_cdet_UNCONNECTED,
      enablealign => enablealign,
      ewrap => NLW_gig_ethernet_pcs_pma_0_core_ewrap_UNCONNECTED,
      gmii_isolate => gmii_isolate,
      gmii_rx_dv => gmii_rx_dv,
      gmii_rx_er => gmii_rx_er,
      gmii_rxd(7 downto 0) => gmii_rxd(7 downto 0),
      gmii_tx_en => gmii_tx_en,
      gmii_tx_er => gmii_tx_er,
      gmii_txd(7 downto 0) => gmii_txd(7 downto 0),
      gtx_clk => '0',
      link_timer_basex(9 downto 0) => B"0000000000",
      link_timer_sgmii(9 downto 0) => B"0000000000",
      link_timer_value(9 downto 0) => B"0000000000",
      loc_ref => NLW_gig_ethernet_pcs_pma_0_core_loc_ref_UNCONNECTED,
      mdc => '0',
      mdio_in => '0',
      mdio_out => NLW_gig_ethernet_pcs_pma_0_core_mdio_out_UNCONNECTED,
      mdio_tri => NLW_gig_ethernet_pcs_pma_0_core_mdio_tri_UNCONNECTED,
      mgt_rx_reset => mgt_rx_reset,
      mgt_tx_reset => mgt_tx_reset,
      phyad(4 downto 0) => B"00000",
      pma_rx_clk0 => '0',
      pma_rx_clk1 => '0',
      powerdown => powerdown,
      reset => reset,
      reset_done => \^resetdone\,
      rx_code_group0(9 downto 0) => B"0000000000",
      rx_code_group1(9 downto 0) => B"0000000000",
      rx_gt_nominal_latency(15 downto 0) => B"0000000011111000",
      rxbufstatus(1) => rxbufstatus(1),
      rxbufstatus(0) => '0',
      rxchariscomma(0) => rxchariscomma,
      rxcharisk(0) => rxcharisk,
      rxclkcorcnt(2) => '0',
      rxclkcorcnt(1 downto 0) => rxclkcorcnt(1 downto 0),
      rxdata(7 downto 0) => rxdata(7 downto 0),
      rxdisperr(0) => rxdisperr,
      rxnotintable(0) => rxnotintable,
      rxphy_correction_timer(63 downto 0) => NLW_gig_ethernet_pcs_pma_0_core_rxphy_correction_timer_UNCONNECTED(63 downto 0),
      rxphy_ns_field(31 downto 0) => NLW_gig_ethernet_pcs_pma_0_core_rxphy_ns_field_UNCONNECTED(31 downto 0),
      rxphy_s_field(47 downto 0) => NLW_gig_ethernet_pcs_pma_0_core_rxphy_s_field_UNCONNECTED(47 downto 0),
      rxrecclk => '0',
      rxrundisp(0) => '0',
      s_axi_aclk => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arready => NLW_gig_ethernet_pcs_pma_0_core_s_axi_arready_UNCONNECTED,
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awready => NLW_gig_ethernet_pcs_pma_0_core_s_axi_awready_UNCONNECTED,
      s_axi_awvalid => '0',
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_gig_ethernet_pcs_pma_0_core_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_gig_ethernet_pcs_pma_0_core_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(31 downto 0) => NLW_gig_ethernet_pcs_pma_0_core_s_axi_rdata_UNCONNECTED(31 downto 0),
      s_axi_resetn => '0',
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_gig_ethernet_pcs_pma_0_core_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_gig_ethernet_pcs_pma_0_core_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_wready => NLW_gig_ethernet_pcs_pma_0_core_s_axi_wready_UNCONNECTED,
      s_axi_wvalid => '0',
      signal_detect => signal_detect,
      speed_is_100 => '0',
      speed_is_10_100 => '0',
      speed_selection(1 downto 0) => NLW_gig_ethernet_pcs_pma_0_core_speed_selection_UNCONNECTED(1 downto 0),
      status_vector(15 downto 7) => NLW_gig_ethernet_pcs_pma_0_core_status_vector_UNCONNECTED(15 downto 7),
      status_vector(6 downto 0) => \^status_vector\(6 downto 0),
      systemtimer_ns_field(31 downto 0) => B"00000000000000000000000000000000",
      systemtimer_s_field(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      tx_code_group(9 downto 0) => NLW_gig_ethernet_pcs_pma_0_core_tx_code_group_UNCONNECTED(9 downto 0),
      txbuferr => txbuferr,
      txchardispmode => txchardispmode,
      txchardispval => txchardispval,
      txcharisk => txcharisk,
      txdata(7 downto 0) => txdata(7 downto 0),
      userclk => '0',
      userclk2 => userclk2
    );
sync_block_rx_reset_done: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block
     port map (
      data_in => transceiver_inst_n_6,
      data_out => tx_reset_done_i,
      resetdone => \^resetdone\,
      userclk2 => userclk2
    );
sync_block_tx_reset_done: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_0
     port map (
      data_in => transceiver_inst_n_5,
      data_out => tx_reset_done_i,
      userclk2 => userclk2
    );
transceiver_inst: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_transceiver
     port map (
      D(7 downto 0) => txdata(7 downto 0),
      Q(1 downto 0) => rxclkcorcnt(1 downto 0),
      SR(0) => mgt_tx_reset,
      data_in => transceiver_inst_n_5,
      enablealign => enablealign,
      gt0_pll0lock_in => \^gt0_pll0lock_in\,
      gt0_pll0outclk_in => gt0_pll0outclk_in,
      gt0_pll0outrefclk_in => gt0_pll0outrefclk_in,
      gt0_pll0refclklost_in => gt0_pll0refclklost_in,
      gt0_pll0reset_out => gt0_pll0reset_out,
      gt0_pll1outclk_in => gt0_pll1outclk_in,
      gt0_pll1outrefclk_in => gt0_pll1outrefclk_in,
      gtrefclk_bufg => gtrefclk_bufg,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_locked => mmcm_locked,
      mmcm_reset => mmcm_reset,
      pma_reset => pma_reset,
      powerdown => powerdown,
      reset_sync5(0) => mgt_rx_reset,
      rx_fsm_reset_done_int_reg => transceiver_inst_n_6,
      rxbuferr => rxbufstatus(1),
      rxchariscomma => rxchariscomma,
      rxcharisk => rxcharisk,
      \rxdata_reg[7]_0\(7 downto 0) => rxdata(7 downto 0),
      rxdisperr => rxdisperr,
      rxn => rxn,
      rxnotintable => rxnotintable,
      rxoutclk => rxoutclk,
      rxp => rxp,
      status_vector(0) => \^status_vector\(1),
      txbuferr => txbuferr,
      txchardispmode_reg_reg_0(0) => txchardispmode,
      txchardispval_reg_reg_0(0) => txchardispval,
      txcharisk_reg_reg_0(0) => txcharisk,
      txn => txn,
      txoutclk => txoutclk,
      txp => txp,
      userclk => userclk,
      userclk2 => userclk2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0 is
  port (
    gtrefclk : in STD_LOGIC;
    gtrefclk_bufg : in STD_LOGIC;
    txp : out STD_LOGIC;
    txn : out STD_LOGIC;
    rxp : in STD_LOGIC;
    rxn : in STD_LOGIC;
    resetdone : out STD_LOGIC;
    cplllock : out STD_LOGIC;
    mmcm_reset : out STD_LOGIC;
    txoutclk : out STD_LOGIC;
    rxoutclk : out STD_LOGIC;
    userclk : in STD_LOGIC;
    userclk2 : in STD_LOGIC;
    rxuserclk : in STD_LOGIC;
    rxuserclk2 : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    pma_reset : in STD_LOGIC;
    mmcm_locked : in STD_LOGIC;
    gmii_txd : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_tx_en : in STD_LOGIC;
    gmii_tx_er : in STD_LOGIC;
    gmii_rxd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_rx_dv : out STD_LOGIC;
    gmii_rx_er : out STD_LOGIC;
    gmii_isolate : out STD_LOGIC;
    configuration_vector : in STD_LOGIC_VECTOR ( 4 downto 0 );
    status_vector : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reset : in STD_LOGIC;
    signal_detect : in STD_LOGIC;
    gt0_pll0outclk_in : in STD_LOGIC;
    gt0_pll0outrefclk_in : in STD_LOGIC;
    gt0_pll1outclk_in : in STD_LOGIC;
    gt0_pll1outrefclk_in : in STD_LOGIC;
    gt0_pll0lock_in : in STD_LOGIC;
    gt0_pll0refclklost_in : in STD_LOGIC;
    gt0_pll0reset_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of gig_ethernet_pcs_pma_0 : entity is true;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of gig_ethernet_pcs_pma_0 : entity is "yes";
  attribute EXAMPLE_SIMULATION : integer;
  attribute EXAMPLE_SIMULATION of gig_ethernet_pcs_pma_0 : entity is 0;
end gig_ethernet_pcs_pma_0;

architecture STRUCTURE of gig_ethernet_pcs_pma_0 is
  attribute EXAMPLE_SIMULATION of inst : label is 0;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of inst : label is "gig_ethernet_pcs_pma_v16_1_6,Vivado 2019.1";
  attribute downgradeipidentifiedwarnings of inst : label is "yes";
begin
inst: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_block
     port map (
      configuration_vector(4 downto 0) => configuration_vector(4 downto 0),
      cplllock => cplllock,
      gmii_isolate => gmii_isolate,
      gmii_rx_dv => gmii_rx_dv,
      gmii_rx_er => gmii_rx_er,
      gmii_rxd(7 downto 0) => gmii_rxd(7 downto 0),
      gmii_tx_en => gmii_tx_en,
      gmii_tx_er => gmii_tx_er,
      gmii_txd(7 downto 0) => gmii_txd(7 downto 0),
      gt0_pll0lock_in => gt0_pll0lock_in,
      gt0_pll0outclk_in => gt0_pll0outclk_in,
      gt0_pll0outrefclk_in => gt0_pll0outrefclk_in,
      gt0_pll0refclklost_in => gt0_pll0refclklost_in,
      gt0_pll0reset_out => gt0_pll0reset_out,
      gt0_pll1outclk_in => gt0_pll1outclk_in,
      gt0_pll1outrefclk_in => gt0_pll1outrefclk_in,
      gtrefclk => gtrefclk,
      gtrefclk_bufg => gtrefclk_bufg,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_locked => mmcm_locked,
      mmcm_reset => mmcm_reset,
      pma_reset => pma_reset,
      reset => reset,
      resetdone => resetdone,
      rxn => rxn,
      rxoutclk => rxoutclk,
      rxp => rxp,
      rxuserclk => rxuserclk,
      rxuserclk2 => rxuserclk2,
      signal_detect => signal_detect,
      status_vector(15 downto 0) => status_vector(15 downto 0),
      txn => txn,
      txoutclk => txoutclk,
      txp => txp,
      userclk => userclk,
      userclk2 => userclk2
    );
end STRUCTURE;
