-------------------------------------------------------------------------------
--
-- (c) Copyright 2010-2011 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Project    : Series-7 Integrated Block for PCI Express
-- File       : pcie_7x_0_support.vhd
-- Version    : 3.3
--
-- Description:  PCI Express Endpoint Shared Logic Wrapper
--
------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

library unisim;
use unisim.vcomponents.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity pcie_7x_0_support is
generic (
   LINK_CAP_MAX_LINK_WIDTH : integer := 8;       
   CLK_SHARING_EN          : string  := "FALSE";       -- Enable Clock Sharing
   C_DATA_WIDTH            : integer range 64 to 128 := 64;
   KEEP_WIDTH              : integer range 8 to 16   := 8;
   PCIE_REFCLK_FREQ        : integer := 0;             -- 0 - 100 MHz , 1 - 125 MHz , 2 - 250 MHz
   PCIE_LINK_SPEED         : integer := 2;
   PCIE_USERCLK1_FREQ      : integer := 2;             -- PCIe user clock 1 frequency
   PCIE_USERCLK2_FREQ      : integer := 2;             -- PCIe user clock 2 frequency
   PCIE_GT_DEVICE          : string := "GTX";          -- Select the GT to use (GTP for Artix-7, GTX for K7/V7)
   PCIE_USE_MODE           : string := "2.1"           -- 1.0=K325T IES, 1.1=VX48T IES, 3.0 = K325T GES
  );
  port (
  ---------------------------------------------------------------------------------------------------------------
  -- PCI Express (pci_exp) Interface                                                                         
  ---------------------------------------------------------------------------------------------------------------
  pci_exp_txp                                : out std_logic_vector(0 downto 0);
  pci_exp_txn                                : out std_logic_vector(0 downto 0);
  pci_exp_rxp                                : in std_logic_vector(0 downto 0);
  pci_exp_rxn                                : in std_logic_vector(0 downto 0);

  ----------------------------------------------------------------------------------------------------------------
  -- Clocking Sharing Interface                                                                      
  ----------------------------------------------------------------------------------------------------------------
  pipe_pclk_out_slave                        : out std_logic;  
  pipe_rxusrclk_out                          : out std_logic;
  pipe_rxoutclk_out                          : out std_logic_vector(0 downto 0);
  pipe_dclk_out                              : out std_logic;   
  pipe_userclk1_out                          : out std_logic;
  pipe_userclk2_out                          : out std_logic;
  pipe_oobclk_out                            : out std_logic;
  pipe_mmcm_lock_out                         : out std_logic;
  pipe_pclk_sel_slave                        : in std_logic_vector(0 downto 0);
  pipe_mmcm_rst_n                            : in std_logic;   --     // Async      | Async

  ----------------------------------------------------------------------------------------------------------------
  -- GT COMMON Sharing Interface                                                                      
  ----------------------------------------------------------------------------------------------------------------
  qpll_qplllock                              : out std_logic_vector(1 downto 0); 
  qpll_qplloutclk                            : out std_logic_vector(1 downto 0);
  qpll_qplloutrefclk                         : out std_logic_vector(1 downto 0);

  ----------------------------------------------------------------------------------------------------------------
  -- AXI-S Interface                                                                                            
  ----------------------------------------------------------------------------------------------------------------
  -- Common
  -----------
  user_clk_out                               : out std_logic;
  user_reset_out                             : out std_logic;   
  user_lnk_up                                : out std_logic;  
  user_app_rdy                               : out std_logic; 
  -----------
  -- AXI TX
  -----------
  s_axis_tx_tdata                            : in std_logic_vector(C_DATA_WIDTH-1 downto 0);
  s_axis_tx_tvalid                           : in std_logic;
  s_axis_tx_tready                           : out std_logic;
  s_axis_tx_tkeep                            : in std_logic_vector(KEEP_WIDTH-1 downto 0);
  s_axis_tx_tlast                            : in std_logic;
  s_axis_tx_tuser                            : in std_logic_vector(3 downto 0);
  -----------
  -- AXI RX
  -----------
  m_axis_rx_tdata                            : out std_logic_vector(C_DATA_WIDTH-1 downto 0);  
  m_axis_rx_tvalid                           : out std_logic;
  m_axis_rx_tready                           : in std_logic;
  m_axis_rx_tkeep                            : out std_logic_vector(KEEP_WIDTH-1 downto 0);
  m_axis_rx_tlast                            : out std_logic;
  m_axis_rx_tuser                            : out std_logic_vector(21 downto 0);

  tx_cfg_gnt                                 : in std_logic;
  rx_np_ok                                   : in std_logic;
  rx_np_req                                  : in std_logic;
  cfg_turnoff_ok                             : in std_logic;
  cfg_trn_pending                            : in std_logic;
  cfg_pm_halt_aspm_l0s                       : in std_logic;
  cfg_pm_halt_aspm_l1                        : in std_logic;
  cfg_pm_force_state_en                      : in std_logic;
  cfg_pm_force_state                         : in std_logic_vector(1 downto 0);
  cfg_dsn                                    : in std_logic_vector(63 downto 0);
  cfg_pm_send_pme_to                         : in std_logic;
  cfg_ds_bus_number                          : in std_logic_vector(7 downto 0);
  cfg_ds_device_number                       : in std_logic_vector(4 downto 0);
  cfg_ds_function_number                     : in std_logic_vector(2 downto 0);
  cfg_pm_wake                                : in std_logic;

  -- Flow Control
  fc_cpld                                    : out std_logic_vector(11 downto 0);  
  fc_cplh                                    : out std_logic_vector(7 downto 0);  
  fc_npd                                     : out std_logic_vector(11 downto 0); 
  fc_nph                                     : out std_logic_vector(7 downto 0); 
  fc_pd                                      : out std_logic_vector(11 downto 0); 
  fc_ph                                      : out std_logic_vector(7 downto 0);
  fc_sel                                     : in std_logic_vector(2 downto 0); 

  tx_err_drop                                : out std_logic;
  tx_cfg_req                                 : out std_logic;
  tx_buf_av                                  : out std_logic_vector(5 downto 0);
  ----------------------------------------------------------------------------------------------------------------
  -- Configuration (CFG) Interface                                                                               
  ----------------------------------------------------------------------------------------------------------------
  ------------------------------------------------
  -- EP and RP                                      
  ------------------------------------------------
  cfg_status                                 : out std_logic_vector(15 downto 0);    
  cfg_command                                : out std_logic_vector(15 downto 0);     
  cfg_dstatus                                : out std_logic_vector(15 downto 0);       
  cfg_dcommand                               : out std_logic_vector(15 downto 0);            
  cfg_lstatus                                : out std_logic_vector(15 downto 0);           
  cfg_lcommand                               : out std_logic_vector(15 downto 0);        
  cfg_dcommand2                              : out std_logic_vector(15 downto 0);      
  cfg_pcie_link_state                        : out std_logic_vector(2 downto 0);  
  cfg_to_turnoff                             : out std_logic;
  cfg_bus_number                             : out std_logic_vector(7 downto 0);
  cfg_device_number                          : out std_logic_vector(4 downto 0);
  cfg_function_number                        : out std_logic_vector(2 downto 0);
  cfg_pmcsr_pme_en                           : out std_logic;
  cfg_pmcsr_powerstate                       : out std_logic_vector(1 downto 0);
  cfg_pmcsr_pme_status                       : out std_logic;
  cfg_received_func_lvl_rst                  : out std_logic;
  ------------------------------------------------
  -- RP Only                                      
  ------------------------------------------------
  cfg_bridge_serr_en                         : out std_logic;
  cfg_slot_control_electromech_il_ctl_pulse  : out std_logic;
  cfg_root_control_syserr_corr_err_en        : out std_logic;
  cfg_root_control_syserr_non_fatal_err_en   : out std_logic;
  cfg_root_control_syserr_fatal_err_en       : out std_logic;
  cfg_root_control_pme_int_en                : out std_logic;
  cfg_aer_rooterr_corr_err_reporting_en      : out std_logic;
  cfg_aer_rooterr_non_fatal_err_reporting_en : out std_logic;
  cfg_aer_rooterr_fatal_err_reporting_en     : out std_logic;
  cfg_aer_rooterr_corr_err_received          : out std_logic;
  cfg_aer_rooterr_non_fatal_err_received     : out std_logic;
  cfg_aer_rooterr_fatal_err_received         : out std_logic;
  ----------------------------------------------------------------------------------------------------------------
  -- VC interface                                                                                              
  ----------------------------------------------------------------------------------------------------------------
  cfg_vc_tcvc_map                            : out std_logic_vector(6 downto 0);

  -- Management Interface
  cfg_mgmt_do                                : out std_logic_vector (31 downto 0);
  cfg_mgmt_rd_wr_done                        : out std_logic;
  cfg_mgmt_di                                : in std_logic_vector (31 downto 0);
  cfg_mgmt_byte_en                           : in std_logic_vector (3 downto 0);
  cfg_mgmt_dwaddr                            : in std_logic_vector (9 downto 0);
  cfg_mgmt_wr_en                             : in std_logic;
  cfg_mgmt_rd_en                             : in std_logic;
  cfg_mgmt_wr_readonly                       : in std_logic;
  cfg_mgmt_wr_rw1c_as_rw                     : in std_logic;

  -- Error Reporting Interface
  cfg_err_ecrc                               : in std_logic;
  cfg_err_ur                                 : in std_logic;
  cfg_err_cpl_timeout                        : in std_logic;
  cfg_err_cpl_unexpect                       : in std_logic;
  cfg_err_cpl_abort                          : in std_logic;
  cfg_err_posted                             : in std_logic;
  cfg_err_cor                                : in std_logic;
  cfg_err_atomic_egress_blocked              : in std_logic;
  cfg_err_internal_cor                       : in std_logic;
  cfg_err_malformed                          : in std_logic;
  cfg_err_mc_blocked                         : in std_logic;
  cfg_err_poisoned                           : in std_logic;
  cfg_err_norecovery                         : in std_logic;
  cfg_err_tlp_cpl_header                     : in std_logic_vector(47 downto 0);
  cfg_err_cpl_rdy                            : out std_logic;
  cfg_err_locked                             : in std_logic;
  cfg_err_acs                                : in std_logic;
  cfg_err_internal_uncor                     : in std_logic;
  ----------------------------------------------------------------------------------------------------------------
  -- AER interface                                                                                             
  ----------------------------------------------------------------------------------------------------------------
  cfg_err_aer_headerlog                      : in std_logic_vector(127 downto 0);
  cfg_aer_interrupt_msgnum                   : in std_logic_vector(4 downto 0);
  cfg_err_aer_headerlog_set                  : out std_logic;
  cfg_aer_ecrc_check_en                      : out std_logic;
  cfg_aer_ecrc_gen_en                        : out std_logic;

  cfg_msg_received                           : out std_logic;
  cfg_msg_data                               : out std_logic_vector(15 downto 0);
  cfg_msg_received_pm_as_nak                 : out std_logic;
  cfg_msg_received_setslotpowerlimit         : out std_logic;
  cfg_msg_received_err_cor                   : out std_logic;
  cfg_msg_received_err_non_fatal             : out std_logic;
  cfg_msg_received_err_fatal                 : out std_logic;
  cfg_msg_received_pm_pme                    : out std_logic;
  cfg_msg_received_pme_to_ack                : out std_logic;
  cfg_msg_received_assert_int_a              : out std_logic;
  cfg_msg_received_assert_int_b              : out std_logic;
  cfg_msg_received_assert_int_c              : out std_logic;
  cfg_msg_received_assert_int_d              : out std_logic;
  cfg_msg_received_deassert_int_a            : out std_logic;
  cfg_msg_received_deassert_int_b            : out std_logic;
  cfg_msg_received_deassert_int_c            : out std_logic;
  cfg_msg_received_deassert_int_d            : out std_logic;
  ------------------------------------------------
  -- EP Only                                        
  ------------------------------------------------
  -- Interrupt Interface Signals
  cfg_interrupt                              : in std_logic;
  cfg_interrupt_rdy                          : out std_logic;
  cfg_interrupt_assert                       : in std_logic;
  cfg_interrupt_di                           : in std_logic_vector(7 downto 0);
  cfg_interrupt_do                           : out std_logic_vector(7 downto 0);
  cfg_interrupt_mmenable                     : out std_logic_vector(2 downto 0);
  cfg_interrupt_msienable                    : out std_logic;
  cfg_interrupt_msixenable                   : out std_logic;
  cfg_interrupt_msixfm                       : out std_logic;
  cfg_interrupt_stat                         : in std_logic;
  cfg_pciecap_interrupt_msgnum               : in std_logic_vector(4 downto 0);
  -------------------------------------------------------------------------------------------------
  -- Physical Layer Control and Status (PL) Interface                                                          
  -------------------------------------------------------------------------------------------------
  ------------------------------------------------
  -- EP and RP                                    
  ------------------------------------------------
  pl_directed_link_change                    : in std_logic_vector(1 downto 0);
  pl_directed_link_width                     : in std_logic_vector(1 downto 0);
  pl_directed_link_speed                     : in std_logic;
  pl_directed_link_auton                     : in std_logic;
  pl_upstream_prefer_deemph                  : in std_logic;
 
  pl_sel_lnk_rate                            : out std_logic;
  pl_sel_lnk_width                           : out std_logic_vector(1 downto 0);
  pl_ltssm_state                             : out std_logic_vector(5 downto 0);
  pl_lane_reversal_mode                      : out std_logic_vector(1 downto 0);
  pl_phy_lnk_up                              : out std_logic;
  pl_tx_pm_state                             : out std_logic_vector(2 downto 0);
  pl_rx_pm_state                             : out std_logic_vector(1 downto 0);
  pl_link_upcfg_cap                          : out std_logic;
  pl_link_gen2_cap                           : out std_logic;
  pl_link_partner_gen2_supported             : out std_logic;
  pl_initial_link_width                      : out std_logic_vector(2 downto 0);
  pl_directed_change_done                    : out std_logic;

  ------------------------------------------------
  -- EP Only                                      
  ------------------------------------------------
  pl_received_hot_rst                        : out std_logic;

  ------------------------------------------------
  -- RP Only                                      
  ------------------------------------------------
  pl_transmit_hot_rst                        : in std_logic;
  pl_downstream_deemph_source                : in std_logic;

  ----------------------------------------------------------------------------------------------------------------
  -- PCIe DRP (PCIe DRP) Interface                                                                             
  ----------------------------------------------------------------------------------------------------------------
  pcie_drp_clk                               : in std_logic;
  pcie_drp_en                                : in std_logic;
  pcie_drp_we                                : in std_logic;
  pcie_drp_addr                              : in std_logic_vector(8 downto 0);
  pcie_drp_di                                : in std_logic_vector(15 downto 0);
  pcie_drp_do                                : out std_logic_vector(15 downto 0);
  pcie_drp_rdy                               : out std_logic;


  -------------------------------------------------------------------------------------------------------
  -- Transceiver Control Status and debug ports                                                        --
  -------------------------------------------------------------------------------------------------------
  pipe_txprbssel                             : in std_logic_vector(2 downto 0);
  pipe_rxprbssel                             : in std_logic_vector(2 downto 0);
  pipe_txprbsforceerr                        : in std_logic;
  pipe_rxprbscntreset                        : in std_logic;
  pipe_loopback                              : in std_logic_vector(2 downto 0);
  pipe_rxprbserr                             : out std_logic_vector(0 downto 0);
  pipe_txinhibit                             : in std_logic_vector(0 downto 0);
  pipe_rst_fsm                               : out std_logic_vector(4 downto 0);
  pipe_qrst_fsm                              : out std_logic_vector(11 downto 0);
  pipe_rate_fsm                              : out std_logic_vector(4 downto 0);
  pipe_sync_fsm_tx                           : out std_logic_vector(5 downto 0);
  pipe_sync_fsm_rx                           : out std_logic_vector(6 downto 0);
  pipe_drp_fsm                               : out std_logic_vector(6 downto 0);
  pipe_rst_idle                              : out std_logic;
  pipe_qrst_idle                             : out std_logic;
  pipe_rate_idle                             : out std_logic;
  pipe_eyescandataerror                      : out std_logic_vector(0 downto 0);
  pipe_rxstatus                              : out std_logic_vector(2 downto 0); 
  pipe_dmonitorout                           : out std_logic_vector(14 downto 0);
  pipe_cpll_lock                             : out std_logic_vector(0 downto 0); 
  pipe_qpll_lock                             : out std_logic_vector(0 downto 0); 
  pipe_rxpmaresetdone                        : out std_logic_vector(0 downto 0);  
  pipe_rxbufstatus                           : out std_logic_vector(2 downto 0);     
  pipe_txphaligndone                         : out std_logic_vector(0 downto 0);   
  pipe_txphinitdone                          : out std_logic_vector(0 downto 0);      
  pipe_txdlysresetdone                       : out std_logic_vector(0 downto 0);    
  pipe_rxphaligndone                         : out std_logic_vector(0 downto 0);     
  pipe_rxdlysresetdone                       : out std_logic_vector(0 downto 0);      
  pipe_rxsyncdone                            : out std_logic_vector(0 downto 0);      
  pipe_rxdisperr                             : out std_logic_vector(7 downto 0);     
  pipe_rxnotintable                          : out std_logic_vector(7 downto 0);     
  pipe_rxcommadet                            : out std_logic_vector(0 downto 0);   

  gt_ch_drp_rdy                              : out std_logic_vector(0 downto 0);
  pipe_debug_0                               : out std_logic_vector(0 downto 0);
  pipe_debug_1                               : out std_logic_vector(0 downto 0);
  pipe_debug_2                               : out std_logic_vector(0 downto 0);
  pipe_debug_3                               : out std_logic_vector(0 downto 0);
  pipe_debug_4                               : out std_logic_vector(0 downto 0);
  pipe_debug_5                               : out std_logic_vector(0 downto 0);
  pipe_debug_6                               : out std_logic_vector(0 downto 0);
  pipe_debug_7                               : out std_logic_vector(0 downto 0);
  pipe_debug_8                               : out std_logic_vector(0 downto 0);
  pipe_debug_9                               : out std_logic_vector(0 downto 0);
  pipe_debug                                 : out std_logic_vector(31 downto 0);

  ------------------------------------------------------------------------------------------------------
  -- External Channel Drp Signal Interface                                                            --
  ------------------------------------------------------------------------------------------------------
  ext_ch_gt_drpclk                           : out std_logic;
  ext_ch_gt_drpaddr                          : in std_logic_vector(8 downto 0);
  ext_ch_gt_drpen                            : in std_logic_vector(0 downto 0);
  ext_ch_gt_drpdi                            : in std_logic_vector(15 downto 0);
  ext_ch_gt_drpwe                            : in std_logic_vector(0 downto 0);
  ext_ch_gt_drpdo                            : out std_logic_vector(15 downto 0);
  ext_ch_gt_drprdy                           : out std_logic_vector(0 downto 0);

  ------------------------------------------------------------------------------------------------------------------
  -- System(SYS) Interface                                                                                      --
  ------------------------------------------------------------------------------------------------------------------
  sys_clk                                    : in std_logic;
  sys_rst_n                                  : in std_logic
);
end pcie_7x_0_support;

architecture pcie_7x of pcie_7x_0_support is
   attribute DowngradeIPIdentifiedWarnings: string;
   attribute DowngradeIPIdentifiedWarnings of pcie_7x : architecture is "yes";

  component pcie_7x_0_pipe_clock
    generic (
          PCIE_ASYNC_EN                : string  :=   "FALSE";     -- PCIe async enable
          PCIE_TXBUF_EN                : string  :=   "FALSE";     -- PCIe TX buffer enable for Gen1/Gen2 only
          PCIE_CLK_SHARING_EN          : string  :=   "FALSE";     -- Enable Clock Sharing
          PCIE_LANE                    : integer :=   1;           -- PCIe number of lanes
    -- pragma synthesis_off
          PCIE_LINK_SPEED              : integer :=   2;           -- PCIe link speed
    -- pragma synthesis_on
          PCIE_REFCLK_FREQ             : integer :=   0;           -- PCIe reference clock frequency
          PCIE_USERCLK1_FREQ           : integer :=   3;           -- PCIe user clock 1 frequency
          PCIE_USERCLK2_FREQ           : integer :=   3;           -- PCIe user clock 2 frequency
          PCIE_OOBCLK_MODE             : integer :=   1;           -- PCIe oob clock mode
          PCIE_DEBUG_MODE              : integer :=   0            -- PCIe Debug Mode
    );
    port  (

          ------------ Input -------------------------------------
          CLK_CLK                        : in std_logic;
          CLK_TXOUTCLK                   : in std_logic;
          CLK_RXOUTCLK_IN                : in std_logic_vector(0 downto 0);
          CLK_RST_N                      : in std_logic;
          CLK_PCLK_SEL                   : in std_logic_vector(0 downto 0);
          CLK_PCLK_SEL_SLAVE             : in std_logic_vector(0 downto 0);
          CLK_GEN3                       : in std_logic;

          ------------ Output ------------------------------------
          CLK_PCLK                       : out std_logic;
          CLK_PCLK_SLAVE                 : out std_logic;
          CLK_RXUSRCLK                   : out std_logic;
          CLK_RXOUTCLK_OUT               : out std_logic_vector(0 downto 0);
          CLK_DCLK                       : out std_logic;
          CLK_USERCLK1                   : out std_logic;
          CLK_USERCLK2                   : out std_logic;
          CLK_OOBCLK                     : out std_logic;
          CLK_MMCM_LOCK                  : out std_logic);
  end component;

  component pcie_7x_0_gt_common
    generic (
    -- pragma synthesis_off
        PCIE_SIM_MODE    : string   := "FALSE";  -- PCIe sim mode
    -- pragma synthesis_on
        PCIE_GT_DEVICE   : string   := "GTX";    -- PCIe GT device
        PCIE_USE_MODE    : string   := "2.1";    -- PCIe use mode
        PCIE_REFCLK_FREQ : integer  := 0   -- PCIe reference clock frequency
    );
    port  (
        PIPE_CLK           : in std_logic;
        CPLLPDREFCLK       : in std_logic;
        QPLL_QPLLPD        : in std_logic;   
        QPLL_QPLLRESET     : in std_logic;     
        QPLL_DRP_CLK       : in std_logic;   
        QPLL_DRP_RST_N     : in std_logic;      
        QPLL_DRP_OVRD      : in std_logic;     
        QPLL_DRP_GEN3      : in std_logic;    
        QPLL_DRP_START     : in std_logic;           

        QPLL_DRP_CRSCODE   : out std_logic_vector(5 downto 0);     
        QPLL_DRP_FSM       : out std_logic_vector(8 downto 0);  
        QPLL_DRP_DONE      : out std_logic;   
        QPLL_DRP_RESET     : out std_logic;   
        QPLL_QPLLLOCK      : out std_logic;   
        QPLL_QPLLOUTCLK    : out std_logic;  
        QPLL_QPLLOUTREFCLK : out std_logic); 
  end component;


  component pcie_7x_0
    port (
     -------------------------------------------------------------------------------------------------------------------
     -- PCI Express (pci_exp) Interface                                                                               --
     -------------------------------------------------------------------------------------------------------------------
      pci_exp_txp                                : out std_logic_vector(0 downto 0);
      pci_exp_txn                                : out std_logic_vector(0 downto 0);
      pci_exp_rxp                                : in std_logic_vector(0 downto 0);
      pci_exp_rxn                                : in std_logic_vector(0 downto 0);

     -------------------------------------------------------------------------------------------------------------------
     -- Clocking Interface                                                                                            --
     -------------------------------------------------------------------------------------------------------------------
      pipe_pclk_in                               : in std_logic;
      pipe_rxusrclk_in                           : in std_logic;
      pipe_rxoutclk_in                           : in std_logic_vector(0 downto 0);
      pipe_mmcm_rst_n                            : in std_logic;   --     // Async      | Async
      pipe_dclk_in                               : in std_logic;
      pipe_userclk1_in                           : in std_logic;
      pipe_userclk2_in                           : in std_logic;
      pipe_oobclk_in                             : in std_logic;
      pipe_mmcm_lock_in                          : in std_logic;
      pipe_txoutclk_out                          : out std_logic;
      pipe_rxoutclk_out                          : out std_logic_vector(0 downto 0);
      pipe_pclk_sel_out                          : out std_logic_vector(0 downto 0);
      pipe_gen3_out                              : out std_logic;

     -------------------------------------------------------------------------------------------------------------------
     -- AXI-S Interface                                                                                               --
     -------------------------------------------------------------------------------------------------------------------
      -- Common
      user_clk_out                               : out std_logic;
      user_reset_out                             : out std_logic;
      user_lnk_up                                : out std_logic;
      user_app_rdy                               : out std_logic;

      -- TX
      s_axis_tx_tready                           : out std_logic;
      s_axis_tx_tdata                            : in std_logic_vector((C_DATA_WIDTH - 1) downto 0);
      s_axis_tx_tkeep                            : in std_logic_vector((C_DATA_WIDTH / 8 - 1) downto 0);
      s_axis_tx_tlast                            : in std_logic;
      s_axis_tx_tvalid                           : in std_logic;
      s_axis_tx_tuser                            : in std_logic_vector(3 downto 0);

      -- RX
      m_axis_rx_tdata                            : out std_logic_vector((C_DATA_WIDTH - 1) downto 0);
      m_axis_rx_tkeep                            : out std_logic_vector((C_DATA_WIDTH / 8 - 1) downto 0);
      m_axis_rx_tlast                            : out std_logic;
      m_axis_rx_tvalid                           : out std_logic;
      m_axis_rx_tready                           : in std_logic;
      m_axis_rx_tuser                            : out std_logic_vector(21 downto 0);

      tx_cfg_gnt                                 : in std_logic;
      rx_np_ok                                   : in std_logic;
      rx_np_req                                  : in std_logic;
      cfg_trn_pending                            : in std_logic;
      cfg_pm_halt_aspm_l0s                       : in std_logic;
      cfg_pm_halt_aspm_l1                        : in std_logic;
      cfg_pm_force_state_en                      : in std_logic;
      cfg_pm_force_state                         : in std_logic_vector(1 downto 0);
      cfg_dsn                                    : in std_logic_vector(63 downto 0);
      cfg_turnoff_ok                             : in std_logic;
      cfg_pm_wake                                : in std_logic;
      cfg_pm_send_pme_to                         : in std_logic;
      cfg_ds_bus_number                          : in std_logic_vector(7 downto 0);
      cfg_ds_device_number                       : in std_logic_vector(4 downto 0);
      cfg_ds_function_number                     : in std_logic_vector(2 downto 0);
      -- Flow Control
      fc_cpld                                    : out std_logic_vector(11 downto 0);
      fc_cplh                                    : out std_logic_vector(7 downto 0);
      fc_npd                                     : out std_logic_vector(11 downto 0);
      fc_nph                                     : out std_logic_vector(7 downto 0);
      fc_pd                                      : out std_logic_vector(11 downto 0);
      fc_ph                                      : out std_logic_vector(7 downto 0);
      fc_sel                                     : in std_logic_vector(2 downto 0);
      cfg_mgmt_do                                : out std_logic_vector (31 downto 0);
      cfg_mgmt_rd_wr_done                        : out std_logic;
      cfg_mgmt_di                                : in std_logic_vector (31 downto 0);
      cfg_mgmt_byte_en                           : in std_logic_vector (3 downto 0);
      cfg_mgmt_dwaddr                            : in std_logic_vector (9 downto 0);
      cfg_mgmt_wr_en                             : in std_logic;
      cfg_mgmt_rd_en                             : in std_logic;
      cfg_mgmt_wr_readonly                       : in std_logic;
      cfg_mgmt_wr_rw1c_as_rw                     : in std_logic;
      tx_buf_av                                  : out std_logic_vector(5 downto 0);
      tx_err_drop                                : out std_logic;
      tx_cfg_req                                 : out std_logic;
      cfg_status                                 : out std_logic_vector(15 downto 0);
      cfg_command                                : out std_logic_vector(15 downto 0);
      cfg_dstatus                                : out std_logic_vector(15 downto 0);
      cfg_dcommand                               : out std_logic_vector(15 downto 0);
      cfg_lstatus                                : out std_logic_vector(15 downto 0);
      cfg_lcommand                               : out std_logic_vector(15 downto 0);
      cfg_dcommand2                              : out std_logic_vector(15 downto 0);
      cfg_pcie_link_state                        : out std_logic_vector(2 downto 0);
      cfg_pmcsr_pme_en                           : out std_logic;
      cfg_pmcsr_powerstate                       : out std_logic_vector(1 downto 0);
      cfg_pmcsr_pme_status                       : out std_logic;
      cfg_vc_tcvc_map                            : out std_logic_vector(6 downto 0);
      cfg_to_turnoff                             : out std_logic;
      cfg_bus_number                             : out std_logic_vector(7 downto 0);
      cfg_device_number                          : out std_logic_vector(4 downto 0);
      cfg_function_number                        : out std_logic_vector(2 downto 0);
      cfg_bridge_serr_en                         : out std_logic;
      cfg_slot_control_electromech_il_ctl_pulse  : out std_logic;
      cfg_root_control_syserr_corr_err_en        : out std_logic;
      cfg_root_control_syserr_non_fatal_err_en   : out std_logic;
      cfg_root_control_syserr_fatal_err_en       : out std_logic;
      cfg_root_control_pme_int_en                : out std_logic;
      cfg_aer_rooterr_corr_err_reporting_en      : out std_logic;
      cfg_aer_rooterr_non_fatal_err_reporting_en : out std_logic;
      cfg_aer_rooterr_fatal_err_reporting_en     : out std_logic;
      cfg_aer_rooterr_corr_err_received          : out std_logic;
      cfg_aer_rooterr_non_fatal_err_received     : out std_logic;
      cfg_aer_rooterr_fatal_err_received         : out std_logic;
      cfg_received_func_lvl_rst                  : out std_logic;
      cfg_err_ecrc                               : in std_logic;
      cfg_err_ur                                 : in std_logic;
      cfg_err_cpl_timeout                        : in std_logic;
      cfg_err_cpl_unexpect                       : in std_logic;
      cfg_err_cpl_abort                          : in std_logic;
      cfg_err_posted                             : in std_logic;
      cfg_err_cor                                : in std_logic;
      cfg_err_atomic_egress_blocked              : in std_logic;
      cfg_err_internal_cor                       : in std_logic;
      cfg_err_malformed                          : in std_logic;
      cfg_err_mc_blocked                         : in std_logic;
      cfg_err_poisoned                           : in std_logic;
      cfg_err_norecovery                         : in std_logic;
      cfg_err_tlp_cpl_header                     : in std_logic_vector(47 downto 0);
      cfg_err_cpl_rdy                            : out std_logic;
      cfg_err_locked                             : in std_logic;
      cfg_err_acs                                : in std_logic;
      cfg_err_internal_uncor                     : in std_logic;
      cfg_aer_ecrc_check_en                      : out std_logic;
      cfg_aer_ecrc_gen_en                        : out std_logic;
      cfg_err_aer_headerlog                      : in std_logic_vector(127 downto 0);
      cfg_err_aer_headerlog_set                  : out std_logic;
      cfg_aer_interrupt_msgnum                   : in std_logic_vector(4 downto 0);

     ---------------------------------------------------------------------
      -- EP Only                                                        --
     ---------------------------------------------------------------------
      cfg_interrupt                              : in std_logic;
      cfg_interrupt_rdy                          : out std_logic;
      cfg_interrupt_assert                       : in std_logic;
      cfg_interrupt_di                           : in std_logic_vector(7 downto 0);
      cfg_interrupt_do                           : out std_logic_vector(7 downto 0);
      cfg_interrupt_mmenable                     : out std_logic_vector(2 downto 0);
      cfg_interrupt_msienable                    : out std_logic;
      cfg_interrupt_msixenable                   : out std_logic;
      cfg_interrupt_msixfm                       : out std_logic;
      cfg_interrupt_stat                         : in std_logic;
      cfg_pciecap_interrupt_msgnum               : in std_logic_vector(4 downto 0);
      cfg_msg_received                           : out std_logic;
      cfg_msg_data                               : out std_logic_vector(15 downto 0);
      cfg_msg_received_pm_as_nak                 : out std_logic;
      cfg_msg_received_setslotpowerlimit         : out std_logic;
      cfg_msg_received_err_cor                   : out std_logic;
      cfg_msg_received_err_non_fatal             : out std_logic;
      cfg_msg_received_err_fatal                 : out std_logic;
      cfg_msg_received_pm_pme                    : out std_logic;
      cfg_msg_received_pme_to_ack                : out std_logic;
      cfg_msg_received_assert_int_a              : out std_logic;
      cfg_msg_received_assert_int_b              : out std_logic;
      cfg_msg_received_assert_int_c              : out std_logic;
      cfg_msg_received_assert_int_d              : out std_logic;
      cfg_msg_received_deassert_int_a            : out std_logic;
      cfg_msg_received_deassert_int_b            : out std_logic;
      cfg_msg_received_deassert_int_c            : out std_logic;
      cfg_msg_received_deassert_int_d            : out std_logic;
      pl_directed_link_change                    : in std_logic_vector(1 downto 0);
      pl_directed_link_width                     : in std_logic_vector(1 downto 0);
      pl_directed_link_speed                     : in std_logic;
      pl_directed_link_auton                     : in std_logic;
      pl_upstream_prefer_deemph                  : in std_logic;
      pl_sel_lnk_rate                            : out std_logic;
      pl_sel_lnk_width                           : out std_logic_vector(1 downto 0);
      pl_ltssm_state                             : out std_logic_vector(5 downto 0);
      pl_lane_reversal_mode                      : out std_logic_vector(1 downto 0);
      pl_phy_lnk_up                              : out std_logic;
      pl_tx_pm_state                             : out std_logic_vector(2 downto 0);
      pl_rx_pm_state                             : out std_logic_vector(1 downto 0);
      pl_link_upcfg_cap                          : out std_logic;
      pl_link_gen2_cap                           : out std_logic;
      pl_link_partner_gen2_supported             : out std_logic;
      pl_initial_link_width                      : out std_logic_vector(2 downto 0);
      pl_directed_change_done                    : out std_logic;
      pl_received_hot_rst                        : out std_logic;
      pl_transmit_hot_rst                        : in std_logic;
      pl_downstream_deemph_source                : in std_logic;
     pcie_drp_clk        : in std_logic;
     pcie_drp_en         : in std_logic;
     pcie_drp_we         : in std_logic;
     pcie_drp_addr       : in std_logic_vector(8 downto 0);
     pcie_drp_di         : in std_logic_vector(15 downto 0);
     pcie_drp_do         : out std_logic_vector(15 downto 0);
     pcie_drp_rdy        : out std_logic;
     ----------------------------------------------------------------------------------------------------------------
     -- External GT COMMON Interface
     ----------------------------------------------------------------------------------------------------------------
     qpll_drp_crscode              : in std_logic_vector(11 downto 0);
     qpll_drp_fsm                  : in std_logic_vector(17 downto 0);
     qpll_drp_done                 : in std_logic_vector(1 downto 0);
     qpll_drp_reset                : in std_logic_vector(1 downto 0);
     qpll_qplllock                 : in std_logic_vector(1 downto 0);
     qpll_qplloutclk               : in std_logic_vector(1 downto 0);
     qpll_qplloutrefclk            : in std_logic_vector(1 downto 0);
     qpll_qplld                    : out std_logic;
     qpll_qpllreset                : out std_logic_vector(1 downto 0);
     qpll_drp_clk                  : out std_logic;
     qpll_drp_rst_n                : out std_logic;
     qpll_drp_ovrd                 : out std_logic;
     qpll_drp_gen3                 : out std_logic;
     qpll_drp_start                : out std_logic;

     -------------------------------------------------------------------------------------------------------
     -- Transceiver Control Status and debug ports                                                        --
     -------------------------------------------------------------------------------------------------------
     pipe_txprbssel                : in std_logic_vector(2 downto 0);
     pipe_rxprbssel                : in std_logic_vector(2 downto 0);
     pipe_txprbsforceerr           : in std_logic;
     pipe_rxprbscntreset           : in std_logic;
     pipe_loopback                 : in std_logic_vector(2 downto 0);
     pipe_rxprbserr                : out std_logic_vector(0 downto 0);
     pipe_txinhibit                : in std_logic_vector(0 downto 0);
     pipe_rst_fsm                  : out std_logic_vector(4 downto 0);
     pipe_qrst_fsm                 : out std_logic_vector(11 downto 0);
     pipe_rate_fsm                 : out std_logic_vector(4 downto 0);
     pipe_sync_fsm_tx              : out std_logic_vector(5 downto 0);
     pipe_sync_fsm_rx              : out std_logic_vector(6 downto 0);
     pipe_drp_fsm                  : out std_logic_vector(6 downto 0);
     pipe_rst_idle                 : out std_logic;
     pipe_qrst_idle                : out std_logic;
     pipe_rate_idle                : out std_logic;
     pipe_eyescandataerror         : out std_logic_vector(0 downto 0);
     pipe_rxstatus                 : out std_logic_vector(2 downto 0); 
     pipe_dmonitorout              : out std_logic_vector(14 downto 0);
     pipe_cpll_lock                : out std_logic_vector(0 downto 0); 
     pipe_qpll_lock                : out std_logic_vector(0 downto 0); 
     pipe_rxpmaresetdone           : out std_logic_vector(0 downto 0);  
     pipe_rxbufstatus              : out std_logic_vector(2 downto 0);     
     pipe_txphaligndone            : out std_logic_vector(0 downto 0);   
     pipe_txphinitdone             : out std_logic_vector(0 downto 0);      
     pipe_txdlysresetdone          : out std_logic_vector(0 downto 0);    
     pipe_rxphaligndone            : out std_logic_vector(0 downto 0);     
     pipe_rxdlysresetdone          : out std_logic_vector(0 downto 0);      
     pipe_rxsyncdone               : out std_logic_vector(0 downto 0);      
     pipe_rxdisperr                : out std_logic_vector(7 downto 0);     
     pipe_rxnotintable             : out std_logic_vector(7 downto 0);     
     pipe_rxcommadet               : out std_logic_vector(0 downto 0);   

     gt_ch_drp_rdy                 : out std_logic_vector(0 downto 0);
     pipe_debug_0                  : out std_logic_vector(0 downto 0);
     pipe_debug_1                  : out std_logic_vector(0 downto 0);
     pipe_debug_2                  : out std_logic_vector(0 downto 0);
     pipe_debug_3                  : out std_logic_vector(0 downto 0);
     pipe_debug_4                  : out std_logic_vector(0 downto 0);
     pipe_debug_5                  : out std_logic_vector(0 downto 0);
     pipe_debug_6                  : out std_logic_vector(0 downto 0);
     pipe_debug_7                  : out std_logic_vector(0 downto 0);
     pipe_debug_8                  : out std_logic_vector(0 downto 0);
     pipe_debug_9                  : out std_logic_vector(0 downto 0);
     pipe_debug                    : out std_logic_vector(31 downto 0);

     ------------------------------------------------------------------------------------------------------
     -- External Channel Drp Signal Interface                                                            --
     ------------------------------------------------------------------------------------------------------
     ext_ch_gt_drpclk              : out std_logic;
     ext_ch_gt_drpaddr             : in std_logic_vector(8 downto 0);
     ext_ch_gt_drpen               : in std_logic_vector(0 downto 0);
     ext_ch_gt_drpdi               : in std_logic_vector(15 downto 0);
     ext_ch_gt_drpwe               : in std_logic_vector(0 downto 0);
     ext_ch_gt_drpdo               : out std_logic_vector(15 downto 0);
     ext_ch_gt_drprdy              : out std_logic_vector(0 downto 0);

     ---------------------------------------------------------------------------------------------------------------
     -- System(SYS) Interface                                                                                     --
     ---------------------------------------------------------------------------------------------------------------
      sys_clk                      : in std_logic;
      sys_rst_n                    : in std_logic);

  end component;

  -- Wires used for external clocking connectivity
   signal  pipe_pclk_out        : std_logic;
   signal  pipe_txoutclk_in     : std_logic;
   signal  pipe_rxoutclk_in     : std_logic_vector(LINK_CAP_MAX_LINK_WIDTH - 1 downto 0);
   signal  pipe_pclk_sel_in     : std_logic_vector(LINK_CAP_MAX_LINK_WIDTH - 1 downto 0);
   signal  pipe_gen3_in         : std_logic := '0';
   signal  qpll_qplld_i         : std_logic;
   signal  qpll_qpllreset_i     : std_logic_vector(1 downto 0);
   signal  qpll_drp_clk_i       : std_logic;
   signal  qpll_drp_rst_n_i     : std_logic;
   signal  qpll_drp_ovrd_i      : std_logic;
   signal  qpll_drp_gen3_i      : std_logic;
   signal  qpll_drp_start_i     : std_logic;
   signal  qpll_drp_crscode     : std_logic_vector(11 downto 0);
   signal  qpll_drp_fsm         : std_logic_vector(17 downto 0);
   signal  qpll_drp_done        : std_logic_vector(1 downto 0);
   signal  qpll_drp_reset       : std_logic_vector(1 downto 0);
   signal  qpll_qplllock_i      : std_logic_vector(1 downto 0);
   signal  qpll_qplloutclk_i    : std_logic_vector(1 downto 0);
   signal  qpll_qplloutrefclk_i : std_logic_vector(1 downto 0);
   signal  pipe_rxusrclk_out_i  : std_logic;
   signal  pipe_rxoutclk_out_i  : std_logic_vector(0 downto 0);
   signal  pipe_dclk_out_i      : std_logic;   
   signal  pipe_userclk1_out_i  : std_logic;
   signal  pipe_userclk2_out_i  : std_logic;
   signal  pipe_mmcm_lock_out_i : std_logic;
   signal  pipe_oobclk_out_i    : std_logic;

   signal gt_cpllpdrefclk  : std_logic;

begin


      ---------- PIPE Clock Shared Mode ------------------------------

pipe_clock_i : pcie_7x_0_pipe_clock
      generic map
      (
          PCIE_ASYNC_EN                  =>  "FALSE",                 -- PCIe async enable
          PCIE_TXBUF_EN                  =>  "FALSE",                 -- PCIe TX buffer enable for Gen1/Gen2 only
          PCIE_CLK_SHARING_EN            =>  "FALSE",                 -- Enable Clock Sharing
          PCIE_LANE                      =>  LINK_CAP_MAX_LINK_WIDTH, -- PCIe number of lanes
    -- pragma synthesis_off
          PCIE_LINK_SPEED                =>  PCIE_LINK_SPEED,
    -- pragma synthesis_on
          PCIE_REFCLK_FREQ               =>  PCIE_REFCLK_FREQ,        -- PCIe reference clock frequency
          PCIE_USERCLK1_FREQ             =>  PCIE_USERCLK1_FREQ,      -- PCIe user clock 1 frequency
          PCIE_USERCLK2_FREQ             =>  PCIE_USERCLK2_FREQ,      -- PCIe user clock 2 frequency
          PCIE_OOBCLK_MODE               =>  1,                       -- PCIe oob clock mode
          PCIE_DEBUG_MODE                =>  0
      )
      port map
      (
          ---------- Input -------------------------------------
          CLK_CLK                       =>  sys_clk ,
          CLK_TXOUTCLK                  =>  pipe_txoutclk_in ,     -- Reference clock from lane 0
          CLK_RXOUTCLK_IN               =>  pipe_rxoutclk_in ,
          CLK_RST_N                     =>  pipe_mmcm_rst_n ,      -- Allow system reset for error_recovery             
          CLK_PCLK_SEL                  =>  pipe_pclk_sel_in ,
          CLK_PCLK_SEL_SLAVE            =>  pipe_pclk_sel_slave,
          CLK_GEN3                      =>  pipe_gen3_in ,

          --------- Output ------------------------------------
          CLK_PCLK                      =>  pipe_pclk_out,
          CLK_PCLK_SLAVE                =>  pipe_pclk_out_slave,
          CLK_RXUSRCLK                  =>  pipe_rxusrclk_out_i,
          CLK_RXOUTCLK_OUT              =>  pipe_rxoutclk_out_i,
          CLK_DCLK                      =>  pipe_dclk_out_i,
          CLK_OOBCLK                    =>  pipe_oobclk_out_i,
          CLK_USERCLK1                  =>  pipe_userclk1_out_i,
          CLK_USERCLK2                  =>  pipe_userclk2_out_i,
          CLK_MMCM_LOCK                 =>  pipe_mmcm_lock_out_i
      );

     pipe_rxusrclk_out  <= pipe_rxusrclk_out_i ; 
     pipe_rxoutclk_out  <= pipe_rxoutclk_out_i ; 
     pipe_dclk_out      <= pipe_dclk_out_i     ;    
     pipe_userclk1_out  <= pipe_userclk1_out_i ; 
     pipe_userclk2_out  <= pipe_userclk2_out_i ; 
     pipe_oobclk_out    <= pipe_oobclk_out_i   ; 
     pipe_mmcm_lock_out <= pipe_mmcm_lock_out_i; 



     cpllpd_refclk_inst : BUFG
     port map(
       O       => gt_cpllpdrefclk,
       I       => sys_clk);

    ---------- GT COMMON Shared Mode ------------------------------

gt_common_i_0 : pcie_7x_0_gt_common
           generic map
            (
	      PCIE_USE_MODE                 => PCIE_USE_MODE,        --  PCIe use mode
	      PCIE_GT_DEVICE                => PCIE_GT_DEVICE,       --  GT in use
    -- pragma synthesis_off
              PCIE_SIM_MODE                 => "TRUE",               --  PCIe sim mode
    -- pragma synthesis_on
              PCIE_REFCLK_FREQ              => PCIE_REFCLK_FREQ      --  PCIe reference clock frequency
            )
            port map
            (
              --------- Input -------------------------
              PIPE_CLK                    =>   sys_clk,
              CPLLPDREFCLK                =>   gt_cpllpdrefclk, 
              QPLL_QPLLPD                 =>   qpll_qplld_i,
              QPLL_QPLLRESET              =>   qpll_qpllreset_i(0),
              QPLL_DRP_CLK                =>   qpll_drp_clk_i ,
              QPLL_DRP_RST_N              =>   qpll_drp_rst_n_i,
              QPLL_DRP_OVRD               =>   qpll_drp_ovrd_i ,
              QPLL_DRP_GEN3               =>   qpll_drp_gen3_i,
              QPLL_DRP_START              =>   qpll_drp_start_i,

              -------- Output ------------------------
              QPLL_DRP_CRSCODE            =>   qpll_drp_crscode(5 downto 0),
              QPLL_DRP_FSM                =>   qpll_drp_fsm(8 downto 0),
              QPLL_DRP_DONE               =>   qpll_drp_done(0),
              QPLL_DRP_RESET              =>   qpll_drp_reset(0),
              QPLL_QPLLOUTCLK             =>   qpll_qplloutclk_i(0),
              QPLL_QPLLOUTREFCLK          =>   qpll_qplloutrefclk_i(0),
              QPLL_QPLLLOCK               =>   qpll_qplllock_i(0)
            );
gt_common_i_1 : pcie_7x_0_gt_common
            generic map 
            (
	     PCIE_USE_MODE                 =>  PCIE_USE_MODE,        -- PCIe use mode
	     PCIE_GT_DEVICE                =>  PCIE_GT_DEVICE,       -- GT in use
    -- pragma synthesis_off
             PCIE_SIM_MODE                 =>  "TRUE",               -- PCIe sim mode
    -- pragma synthesis_on
             PCIE_REFCLK_FREQ              =>  PCIE_REFCLK_FREQ      -- PCIe reference clock frequency
            )
            port map
            (
              --------- Input -------------------------
              PIPE_CLK                    =>   sys_clk,
              CPLLPDREFCLK                =>   gt_cpllpdrefclk, 
              QPLL_QPLLPD                 =>   qpll_qplld_i,
              QPLL_QPLLRESET              =>   qpll_qpllreset_i(1),
              QPLL_DRP_CLK                =>   qpll_drp_clk_i ,
              QPLL_DRP_RST_N              =>   qpll_drp_rst_n_i,
              QPLL_DRP_OVRD               =>   qpll_drp_ovrd_i ,
              QPLL_DRP_GEN3               =>   qpll_drp_gen3_i,
              QPLL_DRP_START              =>   qpll_drp_start_i,
              --------- Output ------------------------
              QPLL_DRP_CRSCODE            =>   qpll_drp_crscode(11 downto 6),
              QPLL_DRP_FSM                =>   qpll_drp_fsm(17 downto 9),
              QPLL_DRP_DONE               =>   qpll_drp_done(1),
              QPLL_DRP_RESET              =>   qpll_drp_reset(1),
              QPLL_QPLLOUTCLK             =>   qpll_qplloutclk_i(1),
              QPLL_QPLLOUTREFCLK          =>   qpll_qplloutrefclk_i(1),
              QPLL_QPLLLOCK               =>   qpll_qplllock_i(1)
            );


  qpll_qplllock         <= qpll_qplllock_i; 
  qpll_qplloutclk       <= qpll_qplloutclk_i;
  qpll_qplloutrefclk    <= qpll_qplloutrefclk_i;

  pcie_7x_0_i : pcie_7x_0
  port map(
    pci_exp_txn                               => pci_exp_txn,
    pci_exp_txp                               => pci_exp_txp,
    pci_exp_rxn                               => pci_exp_rxn,
    pci_exp_rxp                               => pci_exp_rxp,
    pipe_pclk_in                              => pipe_pclk_out,
    pipe_rxusrclk_in                          => pipe_rxusrclk_out_i,
    pipe_rxoutclk_in                          => pipe_rxoutclk_out_i,
    pipe_mmcm_rst_n                           => pipe_mmcm_rst_n,
    pipe_dclk_in                              => pipe_dclk_out_i,
    pipe_userclk1_in                          => pipe_userclk1_out_i,
    pipe_userclk2_in                          => pipe_userclk2_out_i,
    pipe_oobclk_in                            => pipe_oobclk_out_i,
    pipe_mmcm_lock_in                         => pipe_mmcm_lock_out_i,
    pipe_txoutclk_out                         => pipe_txoutclk_in,
    pipe_rxoutclk_out                         => pipe_rxoutclk_in,
    pipe_pclk_sel_out                         => pipe_pclk_sel_in,
    pipe_gen3_out                             => pipe_gen3_in,
    user_clk_out                              => user_clk_out,
    user_reset_out                            => user_reset_out,
    user_lnk_up                               => user_lnk_up,
    user_app_rdy                              => user_app_rdy,
    s_axis_tx_tdata                           => s_axis_tx_tdata,
    s_axis_tx_tvalid                          => s_axis_tx_tvalid,
    s_axis_tx_tready                          => s_axis_tx_tready,
    s_axis_tx_tkeep                           => s_axis_tx_tkeep,
    s_axis_tx_tlast                           => s_axis_tx_tlast,
    s_axis_tx_tuser                           => s_axis_tx_tuser,
    m_axis_rx_tdata                           => m_axis_rx_tdata,
    m_axis_rx_tvalid                          => m_axis_rx_tvalid,
    m_axis_rx_tready                          => m_axis_rx_tready,
    m_axis_rx_tkeep                           => m_axis_rx_tkeep,
    m_axis_rx_tlast                           => m_axis_rx_tlast,
    m_axis_rx_tuser                           => m_axis_rx_tuser,
    tx_cfg_gnt                                => tx_cfg_gnt,
    rx_np_ok                                  => rx_np_ok,
    rx_np_req                                 => rx_np_req,
    cfg_trn_pending                           => cfg_trn_pending,
    cfg_pm_halt_aspm_l0s                      => cfg_pm_halt_aspm_l0s,
    cfg_pm_halt_aspm_l1                       => cfg_pm_halt_aspm_l1,
    cfg_pm_force_state_en                     => cfg_pm_force_state_en,
    cfg_pm_force_state                        => cfg_pm_force_state,
    cfg_dsn                                   => cfg_dsn,
    cfg_turnoff_ok                            => cfg_turnoff_ok,
    cfg_pm_wake                               => cfg_pm_wake,
    cfg_pm_send_pme_to                        => cfg_pm_send_pme_to,
    cfg_ds_bus_number                         => cfg_ds_bus_number,
    cfg_ds_device_number                      => cfg_ds_device_number,
    cfg_ds_function_number                    => cfg_ds_function_number,
    fc_cpld                                   => fc_cpld,
    fc_cplh                                   => fc_cplh,
    fc_npd                                    => fc_npd,
    fc_nph                                    => fc_nph,
    fc_pd                                     => fc_pd,
    fc_ph                                     => fc_ph,
    fc_sel                                    => fc_sel,
    cfg_mgmt_do                               => cfg_mgmt_do,
    cfg_mgmt_rd_wr_done                       => cfg_mgmt_rd_wr_done,
    cfg_mgmt_di                               => cfg_mgmt_di,
    cfg_mgmt_byte_en                          => cfg_mgmt_byte_en,
    cfg_mgmt_dwaddr                           => cfg_mgmt_dwaddr,
    cfg_mgmt_wr_en                            => cfg_mgmt_wr_en,
    cfg_mgmt_rd_en                            => cfg_mgmt_rd_en,
    cfg_mgmt_wr_readonly                      => cfg_mgmt_wr_readonly,
    cfg_mgmt_wr_rw1c_as_rw                    => cfg_mgmt_wr_rw1c_as_rw,
    tx_buf_av                                 => tx_buf_av,
    tx_err_drop                               => tx_err_drop,
    tx_cfg_req                                => tx_cfg_req,

    cfg_status                                => cfg_status,
    cfg_command                               => cfg_command,
    cfg_dstatus                               => cfg_dstatus,
    cfg_dcommand                              => cfg_dcommand,
    cfg_lstatus                               => cfg_lstatus,
    cfg_lcommand                              => cfg_lcommand,
    cfg_dcommand2                             => cfg_dcommand2,
    cfg_pcie_link_state                       => cfg_pcie_link_state,
    cfg_pmcsr_pme_en                          => cfg_pmcsr_pme_en,
    cfg_pmcsr_powerstate                      => cfg_pmcsr_powerstate,
    cfg_pmcsr_pme_status                      => cfg_pmcsr_pme_status,
    cfg_vc_tcvc_map                           => cfg_vc_tcvc_map,
    cfg_to_turnoff                            => cfg_to_turnoff,
    cfg_bus_number                            => cfg_bus_number,
    cfg_device_number                         => cfg_device_number,
    cfg_function_number                       => cfg_function_number,
    cfg_bridge_serr_en                        => cfg_bridge_serr_en,
    cfg_slot_control_electromech_il_ctl_pulse => cfg_slot_control_electromech_il_ctl_pulse,
    cfg_root_control_syserr_corr_err_en       => cfg_root_control_syserr_corr_err_en,
    cfg_root_control_syserr_non_fatal_err_en  => cfg_root_control_syserr_non_fatal_err_en,
    cfg_root_control_syserr_fatal_err_en      => cfg_root_control_syserr_fatal_err_en,
    cfg_root_control_pme_int_en               => cfg_root_control_pme_int_en,
    cfg_aer_rooterr_corr_err_reporting_en     => cfg_aer_rooterr_corr_err_reporting_en,
    cfg_aer_rooterr_non_fatal_err_reporting_en=> cfg_aer_rooterr_non_fatal_err_reporting_en,
    cfg_aer_rooterr_fatal_err_reporting_en    => cfg_aer_rooterr_fatal_err_reporting_en,
    cfg_aer_rooterr_corr_err_received         => cfg_aer_rooterr_corr_err_received,
    cfg_aer_rooterr_non_fatal_err_received    => cfg_aer_rooterr_non_fatal_err_received,
    cfg_aer_rooterr_fatal_err_received        => cfg_aer_rooterr_fatal_err_received,
    cfg_received_func_lvl_rst                 => cfg_received_func_lvl_rst,
    cfg_err_ecrc                              => cfg_err_ecrc,
    cfg_err_ur                                => cfg_err_ur,
    cfg_err_cpl_timeout                       => cfg_err_cpl_timeout,
    cfg_err_cpl_unexpect                      => cfg_err_cpl_unexpect,
    cfg_err_cpl_abort                         => cfg_err_cpl_abort,
    cfg_err_posted                            => cfg_err_posted,
    cfg_err_cor                               => cfg_err_cor,
    cfg_err_atomic_egress_blocked             => cfg_err_atomic_egress_blocked,
    cfg_err_internal_cor                      => cfg_err_internal_cor,
    cfg_err_malformed                         => cfg_err_malformed,
    cfg_err_mc_blocked                        => cfg_err_mc_blocked,
    cfg_err_poisoned                          => cfg_err_poisoned,
    cfg_err_norecovery                        => cfg_err_norecovery,
    cfg_err_tlp_cpl_header                    => cfg_err_tlp_cpl_header,
    cfg_err_cpl_rdy                           => cfg_err_cpl_rdy,
    cfg_err_locked                            => cfg_err_locked,
    cfg_err_acs                               => cfg_err_acs,
    cfg_err_internal_uncor                    => cfg_err_internal_uncor,
    cfg_aer_ecrc_check_en                     => cfg_aer_ecrc_check_en,
    cfg_aer_ecrc_gen_en                       => cfg_aer_ecrc_gen_en,
    cfg_err_aer_headerlog                     => cfg_err_aer_headerlog,
    cfg_err_aer_headerlog_set                 => cfg_err_aer_headerlog_set,
    cfg_aer_interrupt_msgnum                  => cfg_aer_interrupt_msgnum,

    cfg_interrupt                             => cfg_interrupt,
    cfg_interrupt_rdy                         => cfg_interrupt_rdy,
    cfg_interrupt_assert                      => cfg_interrupt_assert,
    cfg_interrupt_di                          => cfg_interrupt_di,
    cfg_interrupt_do                          => cfg_interrupt_do,
    cfg_interrupt_mmenable                    => cfg_interrupt_mmenable,
    cfg_interrupt_msienable                   => cfg_interrupt_msienable,
    cfg_interrupt_msixenable                  => cfg_interrupt_msixenable,
    cfg_interrupt_msixfm                      => cfg_interrupt_msixfm,
    cfg_interrupt_stat                        => cfg_interrupt_stat,
    cfg_pciecap_interrupt_msgnum              => cfg_pciecap_interrupt_msgnum,
    cfg_msg_received                          => cfg_msg_received,
    cfg_msg_data                              => cfg_msg_data,
    cfg_msg_received_pm_as_nak                => cfg_msg_received_pm_as_nak,
    cfg_msg_received_setslotpowerlimit        => cfg_msg_received_setslotpowerlimit,
    cfg_msg_received_err_cor                  => cfg_msg_received_err_cor,
    cfg_msg_received_err_non_fatal            => cfg_msg_received_err_non_fatal,
    cfg_msg_received_err_fatal                => cfg_msg_received_err_fatal,
    cfg_msg_received_pm_pme                   => cfg_msg_received_pm_pme,
    cfg_msg_received_pme_to_ack               => cfg_msg_received_pme_to_ack,
    cfg_msg_received_assert_int_a             => cfg_msg_received_assert_int_a,
    cfg_msg_received_assert_int_b             => cfg_msg_received_assert_int_b,
    cfg_msg_received_assert_int_c             => cfg_msg_received_assert_int_c,
    cfg_msg_received_assert_int_d             => cfg_msg_received_assert_int_d,
    cfg_msg_received_deassert_int_a           => cfg_msg_received_deassert_int_a,
    cfg_msg_received_deassert_int_b           => cfg_msg_received_deassert_int_b,
    cfg_msg_received_deassert_int_c           => cfg_msg_received_deassert_int_c,
    cfg_msg_received_deassert_int_d           => cfg_msg_received_deassert_int_d,
    pl_directed_link_change                   => pl_directed_link_change,
    pl_directed_link_width                    => pl_directed_link_width,
    pl_directed_link_speed                    => pl_directed_link_speed,
    pl_directed_link_auton                    => pl_directed_link_auton,
    pl_upstream_prefer_deemph                 => pl_upstream_prefer_deemph,
    pl_sel_lnk_rate                           => pl_sel_lnk_rate,
    pl_sel_lnk_width                          => pl_sel_lnk_width,
    pl_ltssm_state                            => pl_ltssm_state,
    pl_lane_reversal_mode                     => pl_lane_reversal_mode,
    pl_phy_lnk_up                             => pl_phy_lnk_up,
    pl_tx_pm_state                            => pl_tx_pm_state,
    pl_rx_pm_state                            => pl_rx_pm_state,
    pl_link_upcfg_cap                         => pl_link_upcfg_cap,
    pl_link_gen2_cap                          => pl_link_gen2_cap,
    pl_link_partner_gen2_supported            => pl_link_partner_gen2_supported,
    pl_initial_link_width                     => pl_initial_link_width,
    pl_directed_change_done                   => pl_directed_change_done,
    pl_received_hot_rst                       => pl_received_hot_rst,
    pl_transmit_hot_rst                       => pl_transmit_hot_rst,
    pl_downstream_deemph_source               => pl_downstream_deemph_source,
    pcie_drp_clk                              => pcie_drp_clk,
    pcie_drp_en                               => pcie_drp_en,
    pcie_drp_we                               => pcie_drp_we,
    pcie_drp_addr                             => pcie_drp_addr,
    pcie_drp_di                               => pcie_drp_di,
    pcie_drp_rdy                              => pcie_drp_rdy,
    pcie_drp_do                               => pcie_drp_do,
    qpll_drp_crscode                          => qpll_drp_crscode,
    qpll_drp_fsm                              => qpll_drp_fsm,
    qpll_drp_done                             => qpll_drp_done,
    qpll_drp_reset                            => qpll_drp_reset,
    qpll_qplllock                             => qpll_qplllock_i,
    qpll_qplloutclk                           => qpll_qplloutclk_i,
    qpll_qplloutrefclk                        => qpll_qplloutrefclk_i,
    qpll_qplld                                => qpll_qplld_i,
    qpll_qpllreset                            => qpll_qpllreset_i,
    qpll_drp_clk                              => qpll_drp_clk_i,
    qpll_drp_rst_n                            => qpll_drp_rst_n_i,
    qpll_drp_ovrd                             => qpll_drp_ovrd_i,
    qpll_drp_gen3                             => qpll_drp_gen3_i,
    qpll_drp_start                            => qpll_drp_start_i,
    pipe_txprbssel                            => pipe_txprbssel,
    pipe_rxprbssel                            => pipe_rxprbssel,
    pipe_txprbsforceerr                       => pipe_txprbsforceerr,
    pipe_rxprbscntreset                       => pipe_rxprbscntreset,
    pipe_loopback                             => pipe_loopback,
    pipe_rxprbserr                            => pipe_rxprbserr,
    pipe_txinhibit                            => pipe_txinhibit,
    pipe_rst_fsm                              => pipe_rst_fsm,
    pipe_qrst_fsm                             => pipe_qrst_fsm,
    pipe_rate_fsm                             => pipe_rate_fsm,
    pipe_sync_fsm_tx                          => pipe_sync_fsm_tx,
    pipe_sync_fsm_rx                          => pipe_sync_fsm_rx,
    pipe_drp_fsm                              => pipe_drp_fsm,
    pipe_rst_idle                             => pipe_rst_idle,
    pipe_qrst_idle                            => pipe_qrst_idle,
    pipe_rate_idle                            => pipe_rate_idle,
    pipe_eyescandataerror                     => pipe_eyescandataerror,
    pipe_rxstatus                             => pipe_rxstatus,
    pipe_dmonitorout                          => pipe_dmonitorout,

    pipe_cpll_lock                            => pipe_cpll_lock,
    pipe_qpll_lock                            => pipe_qpll_lock,
    pipe_rxpmaresetdone                       => pipe_rxpmaresetdone,       
    pipe_rxbufstatus                          => pipe_rxbufstatus,         
    pipe_txphaligndone                        => pipe_txphaligndone,       
    pipe_txphinitdone                         => pipe_txphinitdone,        
    pipe_txdlysresetdone                      => pipe_txdlysresetdone,    
    pipe_rxphaligndone                        => pipe_rxphaligndone,      
    pipe_rxdlysresetdone                      => pipe_rxdlysresetdone,     
    pipe_rxsyncdone                           => pipe_rxsyncdone,       
    pipe_rxdisperr                            => pipe_rxdisperr,       
    pipe_rxnotintable                         => pipe_rxnotintable,      
    pipe_rxcommadet                           => pipe_rxcommadet,        

    gt_ch_drp_rdy                             => gt_ch_drp_rdy,
    pipe_debug_0                              => pipe_debug_0,
    pipe_debug_1                              => pipe_debug_1,
    pipe_debug_2                              => pipe_debug_2,
    pipe_debug_3                              => pipe_debug_3,
    pipe_debug_4                              => pipe_debug_4,
    pipe_debug_5                              => pipe_debug_5,
    pipe_debug_6                              => pipe_debug_6,
    pipe_debug_7                              => pipe_debug_7,
    pipe_debug_8                              => pipe_debug_8,
    pipe_debug_9                              => pipe_debug_9,
    pipe_debug                                => pipe_debug,
    ext_ch_gt_drpclk                          => ext_ch_gt_drpclk,
    ext_ch_gt_drpaddr                         => ext_ch_gt_drpaddr,
    ext_ch_gt_drpen                           => ext_ch_gt_drpen,
    ext_ch_gt_drpdi                           => ext_ch_gt_drpdi,
    ext_ch_gt_drpwe                           => ext_ch_gt_drpwe,
    ext_ch_gt_drpdo                           => ext_ch_gt_drpdo,
    ext_ch_gt_drprdy                          => ext_ch_gt_drprdy,

    ------------------------------------------------------------------------------------------------------
    -- System  (SYS) Interface                                                                          -- 
    ------------------------------------------------------------------------------------------------------
    sys_clk                                   => sys_clk,
    sys_rst_n                                 => sys_rst_n );

end pcie_7x;
