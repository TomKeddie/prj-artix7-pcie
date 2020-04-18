// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Sat Apr 18 05:42:12 2020
// Host        : z400 running 64-bit Ubuntu 19.10
// Command     : write_verilog -force -mode synth_stub
//               /home/tom/git/TomKeddie/prj-artix7-pcie/fpga/v2/plan/xilinx_ip/pcie_7x_0/pcie_7x_0_stub.v
// Design      : pcie_7x_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a15tfgg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "pcie_7x_0_pcie2_top,Vivado 2019.1" *)
module pcie_7x_0(pci_exp_txp, pci_exp_txn, pci_exp_rxp, 
  pci_exp_rxn, user_clk_out, user_reset_out, user_lnk_up, user_app_rdy, s_axis_tx_tready, 
  s_axis_tx_tdata, s_axis_tx_tkeep, s_axis_tx_tlast, s_axis_tx_tvalid, s_axis_tx_tuser, 
  m_axis_rx_tdata, m_axis_rx_tkeep, m_axis_rx_tlast, m_axis_rx_tvalid, m_axis_rx_tready, 
  m_axis_rx_tuser, cfg_interrupt, cfg_interrupt_rdy, cfg_interrupt_assert, 
  cfg_interrupt_di, cfg_interrupt_do, cfg_interrupt_mmenable, cfg_interrupt_msienable, 
  cfg_interrupt_msixenable, cfg_interrupt_msixfm, cfg_interrupt_stat, 
  cfg_pciecap_interrupt_msgnum, sys_clk, sys_rst_n, qpll_drp_crscode, qpll_drp_fsm, 
  qpll_drp_done, qpll_drp_reset, qpll_qplllock, qpll_qplloutclk, qpll_qplloutrefclk, 
  qpll_qplld, qpll_qpllreset, qpll_drp_clk, qpll_drp_rst_n, qpll_drp_ovrd, qpll_drp_gen3, 
  qpll_drp_start)
/* synthesis syn_black_box black_box_pad_pin="pci_exp_txp[0:0],pci_exp_txn[0:0],pci_exp_rxp[0:0],pci_exp_rxn[0:0],user_clk_out,user_reset_out,user_lnk_up,user_app_rdy,s_axis_tx_tready,s_axis_tx_tdata[63:0],s_axis_tx_tkeep[7:0],s_axis_tx_tlast,s_axis_tx_tvalid,s_axis_tx_tuser[3:0],m_axis_rx_tdata[63:0],m_axis_rx_tkeep[7:0],m_axis_rx_tlast,m_axis_rx_tvalid,m_axis_rx_tready,m_axis_rx_tuser[21:0],cfg_interrupt,cfg_interrupt_rdy,cfg_interrupt_assert,cfg_interrupt_di[7:0],cfg_interrupt_do[7:0],cfg_interrupt_mmenable[2:0],cfg_interrupt_msienable,cfg_interrupt_msixenable,cfg_interrupt_msixfm,cfg_interrupt_stat,cfg_pciecap_interrupt_msgnum[4:0],sys_clk,sys_rst_n,qpll_drp_crscode[11:0],qpll_drp_fsm[17:0],qpll_drp_done[1:0],qpll_drp_reset[1:0],qpll_qplllock[1:0],qpll_qplloutclk[1:0],qpll_qplloutrefclk[1:0],qpll_qplld,qpll_qpllreset[1:0],qpll_drp_clk,qpll_drp_rst_n,qpll_drp_ovrd,qpll_drp_gen3,qpll_drp_start" */;
  output [0:0]pci_exp_txp;
  output [0:0]pci_exp_txn;
  input [0:0]pci_exp_rxp;
  input [0:0]pci_exp_rxn;
  output user_clk_out;
  output user_reset_out;
  output user_lnk_up;
  output user_app_rdy;
  output s_axis_tx_tready;
  input [63:0]s_axis_tx_tdata;
  input [7:0]s_axis_tx_tkeep;
  input s_axis_tx_tlast;
  input s_axis_tx_tvalid;
  input [3:0]s_axis_tx_tuser;
  output [63:0]m_axis_rx_tdata;
  output [7:0]m_axis_rx_tkeep;
  output m_axis_rx_tlast;
  output m_axis_rx_tvalid;
  input m_axis_rx_tready;
  output [21:0]m_axis_rx_tuser;
  input cfg_interrupt;
  output cfg_interrupt_rdy;
  input cfg_interrupt_assert;
  input [7:0]cfg_interrupt_di;
  output [7:0]cfg_interrupt_do;
  output [2:0]cfg_interrupt_mmenable;
  output cfg_interrupt_msienable;
  output cfg_interrupt_msixenable;
  output cfg_interrupt_msixfm;
  input cfg_interrupt_stat;
  input [4:0]cfg_pciecap_interrupt_msgnum;
  input sys_clk;
  input sys_rst_n;
  input [11:0]qpll_drp_crscode;
  input [17:0]qpll_drp_fsm;
  input [1:0]qpll_drp_done;
  input [1:0]qpll_drp_reset;
  input [1:0]qpll_qplllock;
  input [1:0]qpll_qplloutclk;
  input [1:0]qpll_qplloutrefclk;
  output qpll_qplld;
  output [1:0]qpll_qpllreset;
  output qpll_drp_clk;
  output qpll_drp_rst_n;
  output qpll_drp_ovrd;
  output qpll_drp_gen3;
  output qpll_drp_start;
endmodule
