//-----------------------------------------------------------------------------
//
// (c) Copyright 2010-2011 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//
//-----------------------------------------------------------------------------
// Project    : Series-7 Integrated Block for PCI Express
// File       : pcie_7x_0_support.v
// Version    : 3.3
//--
//-- Description:  PCI Express Endpoint Shared Logic Wrapper
//--
//------------------------------------------------------------------------------

`timescale 1ns / 1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module pcie_7x_0_support # (
  parameter LINK_CAP_MAX_LINK_WIDTH = 8,                       // PCIe Lane Width
  parameter CLK_SHARING_EN          = "FALSE",                 // Enable Clock Sharing
  parameter C_DATA_WIDTH            = 256,                     // AXI interface data width
  parameter KEEP_WIDTH              = C_DATA_WIDTH / 8,        // TSTRB width
  parameter PCIE_REFCLK_FREQ        = 0,                       // PCIe reference clock frequency
  parameter PCIE_USERCLK1_FREQ      = 2,                       // PCIe user clock 1 frequency
  parameter PCIE_USERCLK2_FREQ      = 2,                       // PCIe user clock 2 frequency
  parameter PCIE_GT_DEVICE          = "GTX",                   // PCIe GT device
  parameter PCIE_USE_MODE           = "2.1"                    // PCIe use mode
)
(

  //----------------------------------------------------------------------------------------------------------------//
  // PCI Express (pci_exp) Interface                                                                                //
  //----------------------------------------------------------------------------------------------------------------//

  // Tx
  output  [(LINK_CAP_MAX_LINK_WIDTH - 1) : 0] pci_exp_txn,
  output  [(LINK_CAP_MAX_LINK_WIDTH - 1) : 0] pci_exp_txp,

  // Rx
  input   [(LINK_CAP_MAX_LINK_WIDTH - 1) : 0] pci_exp_rxn,
  input   [(LINK_CAP_MAX_LINK_WIDTH - 1) : 0] pci_exp_rxp,

  //----------------------------------------------------------------------------------------------------------------//
  // GT COMMON Sharing Interface                                                                                    //
  //----------------------------------------------------------------------------------------------------------------//
  output  [1:0]                              qpll_qplllock,
  output  [1:0]                              qpll_qplloutclk,
  output  [1:0]                              qpll_qplloutrefclk,

  //----------------------------------------------------------------------------------------------------------------//
  // AXI-S Interface                                                                                                //
  //----------------------------------------------------------------------------------------------------------------//

  // Common
  output                                     user_clk_out,
  output                                     user_reset_out,
  output                                     user_lnk_up,
  output                                     user_app_rdy,

  // AXI TX
  //-----------
  input   [C_DATA_WIDTH-1:0]                 s_axis_tx_tdata,
  input                                      s_axis_tx_tvalid,
  output                                     s_axis_tx_tready,
  input   [KEEP_WIDTH-1:0]                   s_axis_tx_tkeep,
  input                                      s_axis_tx_tlast,
  input   [3:0]                              s_axis_tx_tuser,

  // AXI RX
  //-----------
  output  [C_DATA_WIDTH-1:0]                 m_axis_rx_tdata,
  output                                     m_axis_rx_tvalid,
  input                                      m_axis_rx_tready,
  output  [KEEP_WIDTH-1:0]                   m_axis_rx_tkeep,
  output                                     m_axis_rx_tlast,
  output  [21:0]                             m_axis_rx_tuser,

  //------------------------------------------------//
  // EP Only                                        //
  //------------------------------------------------//
  // Interrupt Interface Signals
  input                                       cfg_interrupt,
  output                                      cfg_interrupt_rdy,
  input                                       cfg_interrupt_assert,
  input    [7:0]                              cfg_interrupt_di,
  output   [7:0]                              cfg_interrupt_do,
  output   [2:0]                              cfg_interrupt_mmenable,
  output                                      cfg_interrupt_msienable,
  output                                      cfg_interrupt_msixenable,
  output                                      cfg_interrupt_msixfm,
  input                                       cfg_interrupt_stat,
  input    [4:0]                              cfg_pciecap_interrupt_msgnum,

  input                                       sys_clk,
  input                                       sys_rst_n

);
  // Wires used for external clocking connectivity
  wire                                        pipe_pclk_out;
  wire                                        pipe_txoutclk_in;
  wire [(LINK_CAP_MAX_LINK_WIDTH - 1) : 0]    pipe_rxoutclk_in;
  wire [(LINK_CAP_MAX_LINK_WIDTH - 1) : 0]    pipe_pclk_sel_in;
  wire                                        pipe_gen3_in;


  // Wires used for external GT COMMON connectivity
  wire [11:0]                                 qpll_drp_crscode;
  wire [17:0]                                 qpll_drp_fsm;
  wire [1:0]                                  qpll_drp_done;
  wire [1:0]                                  qpll_drp_reset;
  wire                                        qpll_qplld;
  wire [1:0]                                  qpll_qpllreset;
  wire                                        qpll_drp_clk;
  wire                                        qpll_drp_rst_n;
  wire                                        qpll_drp_ovrd;
  wire                                        qpll_drp_gen3;
  wire                                        qpll_drp_start;


      //---------- PIPE Clock Internal Mode ------------------------------//

      assign pipe_pclk_out     = 1'b0;
      assign pipe_rxusrclk_out = 1'b0;
      assign pipe_rxoutclk_out = 8'b0;   
      assign pipe_dclk_out     = 1'b0;
      assign pipe_userclk1_out = 1'b0;
      assign pipe_userclk2_out = 1'b0;
      assign pipe_mmcm_lock_out= 1'b0;
      assign pipe_oobclk_out   = 1'b0;




//Reference Clock for CPLLPD Fix
  
  wire gt_cpllpdrefclk;
  
  BUFG cpllpd_refclk_inst (.I (sys_clk), .O (gt_cpllpdrefclk));


    //---------- GT COMMON Shared Mode ------------------------------//

pcie_7x_0_gt_common #
            (
	        .PCIE_USE_MODE                  (PCIE_USE_MODE),          // PCIe use mode
	        .PCIE_GT_DEVICE                 (PCIE_GT_DEVICE),         // GT in use
                // synthesis translate_off
                .PCIE_SIM_MODE                  ("TRUE"),                 // PCIe sim mode
                // synthesis translate_on
                .PCIE_REFCLK_FREQ               (PCIE_REFCLK_FREQ)            // PCIe reference clock frequency
            )
            gt_common_i_0
            (
                //---------- Input -------------------------
                .PIPE_CLK                       (sys_clk),
                .CPLLPDREFCLK                   (gt_cpllpdrefclk),
                .QPLL_QPLLPD                    (qpll_qplld),
                .QPLL_QPLLRESET                 (qpll_qpllreset[0]),
                .QPLL_DRP_CLK                   (qpll_drp_clk ),
                .QPLL_DRP_RST_N                 (qpll_drp_rst_n),
                .QPLL_DRP_OVRD                  (qpll_drp_ovrd ),
                .QPLL_DRP_GEN3                  (qpll_drp_gen3),
                .QPLL_DRP_START                 (qpll_drp_start),

               //---------- Output ------------------------
                .QPLL_DRP_CRSCODE               (qpll_drp_crscode[5:0]),
                .QPLL_DRP_FSM                   (qpll_drp_fsm [8:0]),
                .QPLL_DRP_DONE                  (qpll_drp_done[0]),
                .QPLL_DRP_RESET                 (qpll_drp_reset[0]),
                .QPLL_QPLLOUTCLK                (qpll_qplloutclk[0]),
                .QPLL_QPLLOUTREFCLK             (qpll_qplloutrefclk[0]),
                .QPLL_QPLLLOCK                  (qpll_qplllock [0])
            );
pcie_7x_0_gt_common #
            (
	        .PCIE_USE_MODE                  (PCIE_USE_MODE),          // PCIe use mode
	        .PCIE_GT_DEVICE                 (PCIE_GT_DEVICE),         // GT in use
                // synthesis translate_off
                .PCIE_SIM_MODE                  ("TRUE"),                // PCIe sim mode
                // synthesis translate_on
                .PCIE_REFCLK_FREQ               (PCIE_REFCLK_FREQ)           // PCIe reference clock frequency
            )
                gt_common_i_1
            (
                //---------- Input -------------------------
                .PIPE_CLK                       (sys_clk),
                .CPLLPDREFCLK                   (gt_cpllpdrefclk),
                .QPLL_QPLLPD                    (qpll_qplld),
                .QPLL_QPLLRESET                 (qpll_qpllreset[1]),
                .QPLL_DRP_CLK                   (qpll_drp_clk ),
                .QPLL_DRP_RST_N                 (qpll_drp_rst_n),
                .QPLL_DRP_OVRD                  (qpll_drp_ovrd ),
                .QPLL_DRP_GEN3                  (qpll_drp_gen3),
                .QPLL_DRP_START                 (qpll_drp_start),
                //---------- Output ------------------------
                .QPLL_DRP_CRSCODE               (qpll_drp_crscode[11:6]),
                .QPLL_DRP_FSM                   (qpll_drp_fsm [17:9]),
                .QPLL_DRP_DONE                  (qpll_drp_done[1]),
                .QPLL_DRP_RESET                 (qpll_drp_reset[1]),
                .QPLL_QPLLOUTCLK                (qpll_qplloutclk[1]),
                .QPLL_QPLLOUTREFCLK             (qpll_qplloutrefclk[1]),
                .QPLL_QPLLLOCK                  (qpll_qplllock [1])
            );


pcie_7x_0 pcie_7x_0_i
(
    .pci_exp_txn(pci_exp_txn),
    .pci_exp_txp(pci_exp_txp),
    .pci_exp_rxn(pci_exp_rxn),
    .pci_exp_rxp(pci_exp_rxp),
    .user_clk_out(user_clk_out),
    .user_reset_out(user_reset_out),
    .user_lnk_up(user_lnk_up),
    .user_app_rdy(user_app_rdy),
    .s_axis_tx_tdata(s_axis_tx_tdata),
    .s_axis_tx_tvalid(s_axis_tx_tvalid),
    .s_axis_tx_tready(s_axis_tx_tready),
    .s_axis_tx_tkeep(s_axis_tx_tkeep),
    .s_axis_tx_tlast(s_axis_tx_tlast),
    .s_axis_tx_tuser(s_axis_tx_tuser),
    .m_axis_rx_tdata(m_axis_rx_tdata),
    .m_axis_rx_tvalid(m_axis_rx_tvalid),
    .m_axis_rx_tready(m_axis_rx_tready),
    .m_axis_rx_tkeep(m_axis_rx_tkeep),
    .m_axis_rx_tlast(m_axis_rx_tlast),
    .m_axis_rx_tuser(m_axis_rx_tuser),
    .cfg_interrupt(cfg_interrupt),
    .cfg_interrupt_rdy(cfg_interrupt_rdy),
    .cfg_interrupt_assert(cfg_interrupt_assert),
    .cfg_interrupt_di(cfg_interrupt_di),
    .cfg_interrupt_do(cfg_interrupt_do),
    .cfg_interrupt_mmenable(cfg_interrupt_mmenable),
    .cfg_interrupt_msienable(cfg_interrupt_msienable),
    .cfg_interrupt_msixenable(cfg_interrupt_msixenable),
    .cfg_interrupt_msixfm(cfg_interrupt_msixfm),
    .cfg_interrupt_stat(cfg_interrupt_stat),
    .cfg_pciecap_interrupt_msgnum(cfg_pciecap_interrupt_msgnum),
    .qpll_drp_crscode(qpll_drp_crscode),
    .qpll_drp_fsm(qpll_drp_fsm),
    .qpll_drp_done(qpll_drp_done),
    .qpll_drp_reset(qpll_drp_reset),
    .qpll_qplllock(qpll_qplllock),
    .qpll_qplloutclk(qpll_qplloutclk),
    .qpll_qplloutrefclk(qpll_qplloutrefclk),
    .qpll_qplld(qpll_qplld),
    .qpll_qpllreset(qpll_qpllreset),
    .qpll_drp_clk(qpll_drp_clk),
    .qpll_drp_rst_n(qpll_drp_rst_n),
    .qpll_drp_ovrd(qpll_drp_ovrd),
    .qpll_drp_gen3(qpll_drp_gen3),
    .qpll_drp_start(qpll_drp_start),
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n)
  );

endmodule
