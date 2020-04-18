-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Sat Apr 18 05:42:12 2020
-- Host        : z400 running 64-bit Ubuntu 19.10
-- Command     : write_vhdl -force -mode synth_stub
--               /home/tom/git/TomKeddie/prj-artix7-pcie/fpga/v2/plan/xilinx_ip/pcie_7x_0/pcie_7x_0_stub.vhdl
-- Design      : pcie_7x_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a15tfgg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pcie_7x_0 is
  Port ( 
    pci_exp_txp : out STD_LOGIC_VECTOR ( 0 to 0 );
    pci_exp_txn : out STD_LOGIC_VECTOR ( 0 to 0 );
    pci_exp_rxp : in STD_LOGIC_VECTOR ( 0 to 0 );
    pci_exp_rxn : in STD_LOGIC_VECTOR ( 0 to 0 );
    user_clk_out : out STD_LOGIC;
    user_reset_out : out STD_LOGIC;
    user_lnk_up : out STD_LOGIC;
    user_app_rdy : out STD_LOGIC;
    s_axis_tx_tready : out STD_LOGIC;
    s_axis_tx_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tx_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tx_tlast : in STD_LOGIC;
    s_axis_tx_tvalid : in STD_LOGIC;
    s_axis_tx_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_rx_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_rx_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_rx_tlast : out STD_LOGIC;
    m_axis_rx_tvalid : out STD_LOGIC;
    m_axis_rx_tready : in STD_LOGIC;
    m_axis_rx_tuser : out STD_LOGIC_VECTOR ( 21 downto 0 );
    cfg_interrupt : in STD_LOGIC;
    cfg_interrupt_rdy : out STD_LOGIC;
    cfg_interrupt_assert : in STD_LOGIC;
    cfg_interrupt_di : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cfg_interrupt_do : out STD_LOGIC_VECTOR ( 7 downto 0 );
    cfg_interrupt_mmenable : out STD_LOGIC_VECTOR ( 2 downto 0 );
    cfg_interrupt_msienable : out STD_LOGIC;
    cfg_interrupt_msixenable : out STD_LOGIC;
    cfg_interrupt_msixfm : out STD_LOGIC;
    cfg_interrupt_stat : in STD_LOGIC;
    cfg_pciecap_interrupt_msgnum : in STD_LOGIC_VECTOR ( 4 downto 0 );
    sys_clk : in STD_LOGIC;
    sys_rst_n : in STD_LOGIC;
    qpll_drp_crscode : in STD_LOGIC_VECTOR ( 11 downto 0 );
    qpll_drp_fsm : in STD_LOGIC_VECTOR ( 17 downto 0 );
    qpll_drp_done : in STD_LOGIC_VECTOR ( 1 downto 0 );
    qpll_drp_reset : in STD_LOGIC_VECTOR ( 1 downto 0 );
    qpll_qplllock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    qpll_qplloutclk : in STD_LOGIC_VECTOR ( 1 downto 0 );
    qpll_qplloutrefclk : in STD_LOGIC_VECTOR ( 1 downto 0 );
    qpll_qplld : out STD_LOGIC;
    qpll_qpllreset : out STD_LOGIC_VECTOR ( 1 downto 0 );
    qpll_drp_clk : out STD_LOGIC;
    qpll_drp_rst_n : out STD_LOGIC;
    qpll_drp_ovrd : out STD_LOGIC;
    qpll_drp_gen3 : out STD_LOGIC;
    qpll_drp_start : out STD_LOGIC
  );

end pcie_7x_0;

architecture stub of pcie_7x_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "pci_exp_txp[0:0],pci_exp_txn[0:0],pci_exp_rxp[0:0],pci_exp_rxn[0:0],user_clk_out,user_reset_out,user_lnk_up,user_app_rdy,s_axis_tx_tready,s_axis_tx_tdata[63:0],s_axis_tx_tkeep[7:0],s_axis_tx_tlast,s_axis_tx_tvalid,s_axis_tx_tuser[3:0],m_axis_rx_tdata[63:0],m_axis_rx_tkeep[7:0],m_axis_rx_tlast,m_axis_rx_tvalid,m_axis_rx_tready,m_axis_rx_tuser[21:0],cfg_interrupt,cfg_interrupt_rdy,cfg_interrupt_assert,cfg_interrupt_di[7:0],cfg_interrupt_do[7:0],cfg_interrupt_mmenable[2:0],cfg_interrupt_msienable,cfg_interrupt_msixenable,cfg_interrupt_msixfm,cfg_interrupt_stat,cfg_pciecap_interrupt_msgnum[4:0],sys_clk,sys_rst_n,qpll_drp_crscode[11:0],qpll_drp_fsm[17:0],qpll_drp_done[1:0],qpll_drp_reset[1:0],qpll_qplllock[1:0],qpll_qplloutclk[1:0],qpll_qplloutrefclk[1:0],qpll_qplld,qpll_qpllreset[1:0],qpll_drp_clk,qpll_drp_rst_n,qpll_drp_ovrd,qpll_drp_gen3,qpll_drp_start";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "pcie_7x_0_pcie2_top,Vivado 2019.1";
begin
end;
