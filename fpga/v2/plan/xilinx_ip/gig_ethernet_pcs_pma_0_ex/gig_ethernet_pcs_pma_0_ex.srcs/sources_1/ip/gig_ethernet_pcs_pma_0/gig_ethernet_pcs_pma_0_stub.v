// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Fri Apr 17 06:05:29 2020
// Host        : z400 running 64-bit Ubuntu 19.10
// Command     : write_verilog -force -mode synth_stub
//               /home/tom/git/TomKeddie/prj-artix7-pcie/fpga/v2/plan/xilinx_ip/gig_ethernet_pcs_pma_0/gig_ethernet_pcs_pma_0_stub.v
// Design      : gig_ethernet_pcs_pma_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a15tfgg484-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module gig_ethernet_pcs_pma_0(gtrefclk, gtrefclk_bufg, txp, txn, rxp, rxn, 
  resetdone, cplllock, mmcm_reset, txoutclk, rxoutclk, userclk, userclk2, rxuserclk, rxuserclk2, 
  independent_clock_bufg, pma_reset, mmcm_locked, gmii_txd, gmii_tx_en, gmii_tx_er, gmii_rxd, 
  gmii_rx_dv, gmii_rx_er, gmii_isolate, configuration_vector, status_vector, reset, 
  signal_detect, gt0_pll0outclk_in, gt0_pll0outrefclk_in, gt0_pll1outclk_in, 
  gt0_pll1outrefclk_in, gt0_pll0lock_in, gt0_pll0refclklost_in, gt0_pll0reset_out)
/* synthesis syn_black_box black_box_pad_pin="gtrefclk,gtrefclk_bufg,txp,txn,rxp,rxn,resetdone,cplllock,mmcm_reset,txoutclk,rxoutclk,userclk,userclk2,rxuserclk,rxuserclk2,independent_clock_bufg,pma_reset,mmcm_locked,gmii_txd[7:0],gmii_tx_en,gmii_tx_er,gmii_rxd[7:0],gmii_rx_dv,gmii_rx_er,gmii_isolate,configuration_vector[4:0],status_vector[15:0],reset,signal_detect,gt0_pll0outclk_in,gt0_pll0outrefclk_in,gt0_pll1outclk_in,gt0_pll1outrefclk_in,gt0_pll0lock_in,gt0_pll0refclklost_in,gt0_pll0reset_out" */;
  input gtrefclk;
  input gtrefclk_bufg;
  output txp;
  output txn;
  input rxp;
  input rxn;
  output resetdone;
  output cplllock;
  output mmcm_reset;
  output txoutclk;
  output rxoutclk;
  input userclk;
  input userclk2;
  input rxuserclk;
  input rxuserclk2;
  input independent_clock_bufg;
  input pma_reset;
  input mmcm_locked;
  input [7:0]gmii_txd;
  input gmii_tx_en;
  input gmii_tx_er;
  output [7:0]gmii_rxd;
  output gmii_rx_dv;
  output gmii_rx_er;
  output gmii_isolate;
  input [4:0]configuration_vector;
  output [15:0]status_vector;
  input reset;
  input signal_detect;
  input gt0_pll0outclk_in;
  input gt0_pll0outrefclk_in;
  input gt0_pll1outclk_in;
  input gt0_pll1outrefclk_in;
  input gt0_pll0lock_in;
  input gt0_pll0refclklost_in;
  output gt0_pll0reset_out;
endmodule
