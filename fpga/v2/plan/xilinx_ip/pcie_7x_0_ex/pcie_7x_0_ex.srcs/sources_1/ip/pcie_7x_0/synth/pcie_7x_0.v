// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
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
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:pcie_7x:3.3
// IP Revision: 11

(* X_CORE_INFO = "pcie_7x_0_pcie2_top,Vivado 2019.1" *)
(* CHECK_LICENSE_TYPE = "pcie_7x_0,pcie_7x_0_pcie2_top,{}" *)
(* CORE_GENERATION_INFO = "pcie_7x_0,pcie_7x_0_pcie2_top,{x_ipProduct=Vivado 2019.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=pcie_7x,x_ipVersion=3.3,x_ipCoreRevision=11,x_ipLanguage=VERILOG,x_ipSimLanguage=VERILOG,c_component_name=pcie_7x_0,dev_port_type=0000,c_dev_port_type=0,c_header_type=00,c_upstream_facing=TRUE,max_lnk_wdt=000001,max_lnk_spd=1,c_gen1=false,pci_exp_int_freq=1,c_pcie_fast_config=0,bar_0=FFE00004,bar_1=FFFFFFFF,bar_2=00000000,bar_3=00000000,bar_4=00000000,bar_5=00000000,xrom_bar=00000000,cost_table\
=1,ven_id=10EE,dev_id=7011,rev_id=00,subsys_ven_id=10EE,subsys_id=0007,class_code=058000,cardbus_cis_ptr=00000000,cap_ver=2,c_pcie_cap_slot_implemented=FALSE,mps=010,cmps=2,ext_tag_fld_sup=FALSE,c_dev_control_ext_tag_default=FALSE,phantm_func_sup=00,c_phantom_functions=0,ep_l0s_accpt_lat=000,c_ep_l0s_accpt_lat=0,ep_l1_accpt_lat=111,c_ep_l1_accpt_lat=7,c_cpl_timeout_disable_sup=FALSE,c_cpl_timeout_range=0010,c_cpl_timeout_ranges_sup=2,c_buf_opt_bma=TRUE,c_perf_level_high=TRUE,c_tx_last_tlp=29,c_r\
x_ram_limit=7FF,c_fc_ph=32,c_fc_pd=437,c_fc_nph=12,c_fc_npd=24,c_fc_cplh=36,c_fc_cpld=461,c_cpl_inf=TRUE,c_cpl_infinite=TRUE,c_dll_lnk_actv_cap=FALSE,c_trgt_lnk_spd=0,c_hw_auton_spd_disable=FALSE,c_de_emph=FALSE,slot_clk=TRUE,c_rcb=0,c_root_cap_crs=FALSE,c_slot_cap_attn_butn=FALSE,c_slot_cap_attn_ind=FALSE,c_slot_cap_pwr_ctrl=FALSE,c_slot_cap_pwr_ind=FALSE,c_slot_cap_hotplug_surprise=FALSE,c_slot_cap_hotplug_cap=FALSE,c_slot_cap_mrl=FALSE,c_slot_cap_elec_interlock=FALSE,c_slot_cap_no_cmd_comp_su\
p=FALSE,c_slot_cap_pwr_limit_value=0,c_slot_cap_pwr_limit_scale=0,c_slot_cap_physical_slot_num=0,intx=FALSE,int_pin=0,c_msi_cap_on=FALSE,c_pm_cap_next_ptr=60,c_msi_64b_addr=TRUE,c_msi=0,c_msi_mult_msg_extn=0,c_msi_per_vctr_mask_cap=FALSE,c_msix_cap_on=TRUE,c_msix_next_ptr=00,c_pcie_cap_next_ptr=9C,c_msix_table_size=000,c_msix_table_offset=0,c_msix_table_bir=0,c_msix_pba_offset=0,c_msix_pba_bir=0,dsi=0,c_dsi_bool=FALSE,d1_sup=0,c_d1_support=FALSE,d2_sup=0,c_d2_support=FALSE,pme_sup=0F,c_pme_suppo\
rt=0F,no_soft_rst=TRUE,pwr_con_d0_state=00,con_scl_fctr_d0_state=0,pwr_con_d1_state=00,con_scl_fctr_d1_state=0,pwr_con_d2_state=00,con_scl_fctr_d2_state=0,pwr_con_d3_state=00,con_scl_fctr_d3_state=0,pwr_dis_d0_state=00,dis_scl_fctr_d0_state=0,pwr_dis_d1_state=00,dis_scl_fctr_d1_state=0,pwr_dis_d2_state=00,dis_scl_fctr_d2_state=0,pwr_dis_d3_state=00,dis_scl_fctr_d3_state=0,c_dsn_cap_enabled=TRUE,c_dsn_base_ptr=100,c_vc_cap_enabled=FALSE,c_vc_base_ptr=000,c_vc_cap_reject_snoop=FALSE,c_vsec_cap_ena\
bled=FALSE,c_vsec_base_ptr=000,c_vsec_next_ptr=000,c_dsn_next_ptr=000,c_vc_next_ptr=000,c_pci_cfg_space_addr=3F,c_ext_pci_cfg_space_addr=3FF,c_last_cfg_dw=10C,c_enable_msg_route=00000000000,bram_lat=0,c_rx_raddr_lat=0,c_rx_rdata_lat=2,c_rx_write_lat=0,c_tx_raddr_lat=0,c_tx_rdata_lat=2,c_tx_write_lat=0,c_ll_ack_timeout_enable=FALSE,c_ll_ack_timeout_function=0,c_ll_ack_timeout=0000,c_ll_replay_timeout_enable=FALSE,c_ll_replay_timeout_func=1,c_ll_replay_timeout=0000,c_dis_lane_reverse=TRUE,c_upconf\
ig_capable=TRUE,c_disable_scrambling=FALSE,c_disable_tx_aspm_l0s=FALSE,c_pcie_dbg_ports=FALSE,pci_exp_ref_freq=0,c_xlnx_ref_board=NONE,c_pcie_blk_locn=0,c_ur_atomic=FALSE,c_dev_cap2_atomicop32_completer_supported=FALSE,c_dev_cap2_atomicop64_completer_supported=FALSE,c_dev_cap2_cas128_completer_supported=FALSE,c_dev_cap2_tph_completer_supported=00,c_dev_cap2_ari_forwarding_supported=FALSE,c_dev_cap2_atomicop_routing_supported=FALSE,c_link_cap_aspm_optionality=FALSE,c_aer_cap_on=FALSE,c_aer_base_p\
tr=000,c_aer_cap_nextptr=000,c_aer_cap_ecrc_check_capable=FALSE,c_aer_cap_ecrc_gen_capable=FALSE,c_aer_cap_multiheader=FALSE,c_aer_cap_permit_rooterr_update=FALSE,c_rbar_cap_on=FALSE,c_rbar_base_ptr=000,c_rbar_cap_nextptr=000,c_rbar_num=0,c_rbar_cap_sup0=00001,c_rbar_cap_index0=0,c_rbar_cap_control_encodedbar0=00,c_rbar_cap_sup1=00001,c_rbar_cap_index1=0,c_rbar_cap_control_encodedbar1=00,c_rbar_cap_sup2=00001,c_rbar_cap_index2=0,c_rbar_cap_control_encodedbar2=00,c_rbar_cap_sup3=00001,c_rbar_cap_\
index3=0,c_rbar_cap_control_encodedbar3=00,c_rbar_cap_sup4=00001,c_rbar_cap_index4=0,c_rbar_cap_control_encodedbar4=00,c_rbar_cap_sup5=00001,c_rbar_cap_index5=0,c_rbar_cap_control_encodedbar5=00,c_recrc_check=0,c_recrc_check_trim=FALSE,c_disable_rx_poisoned_resp=FALSE,c_trn_np_fc=TRUE,c_ur_inv_req=TRUE,c_ur_prs_response=TRUE,c_silicon_rev=2,c_aer_cap_optional_err_support=002000,LINK_CAP_MAX_LINK_WIDTH=1,C_DATA_WIDTH=64,PIPE_SIM=FALSE,PCIE_EXT_CLK=FALSE,PCIE_EXT_GT_COMMON=TRUE,EXT_CH_GT_DRP=FALSE\
,TRANSCEIVER_CTRL_STATUS_PORTS=FALSE,SHARED_LOGIC_IN_CORE=FALSE,ERR_REPORTING_IF=FALSE,PL_INTERFACE=FALSE,CFG_MGMT_IF=FALSE,CFG_CTL_IF=FALSE,CFG_STATUS_IF=FALSE,RCV_MSG_IF=FALSE,CFG_FC_IF=FALSE,EXT_PIPE_INTERFACE=FALSE,EXT_STARTUP_PRIMITIVE=FALSE,KEEP_WIDTH=8,PCIE_ASYNC_EN=FALSE,ENABLE_JTAG_DBG=TRUE}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module pcie_7x_0 (
  pci_exp_txp,
  pci_exp_txn,
  pci_exp_rxp,
  pci_exp_rxn,
  user_clk_out,
  user_reset_out,
  user_lnk_up,
  user_app_rdy,
  s_axis_tx_tready,
  s_axis_tx_tdata,
  s_axis_tx_tkeep,
  s_axis_tx_tlast,
  s_axis_tx_tvalid,
  s_axis_tx_tuser,
  m_axis_rx_tdata,
  m_axis_rx_tkeep,
  m_axis_rx_tlast,
  m_axis_rx_tvalid,
  m_axis_rx_tready,
  m_axis_rx_tuser,
  cfg_interrupt,
  cfg_interrupt_rdy,
  cfg_interrupt_assert,
  cfg_interrupt_di,
  cfg_interrupt_do,
  cfg_interrupt_mmenable,
  cfg_interrupt_msienable,
  cfg_interrupt_msixenable,
  cfg_interrupt_msixfm,
  cfg_interrupt_stat,
  cfg_pciecap_interrupt_msgnum,
  sys_clk,
  sys_rst_n,
  qpll_drp_crscode,
  qpll_drp_fsm,
  qpll_drp_done,
  qpll_drp_reset,
  qpll_qplllock,
  qpll_qplloutclk,
  qpll_qplloutrefclk,
  qpll_qplld,
  qpll_qpllreset,
  qpll_drp_clk,
  qpll_drp_rst_n,
  qpll_drp_ovrd,
  qpll_drp_gen3,
  qpll_drp_start
);

(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_7x_mgt txp" *)
output wire [0 : 0] pci_exp_txp;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_7x_mgt txn" *)
output wire [0 : 0] pci_exp_txn;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_7x_mgt rxp" *)
input wire [0 : 0] pci_exp_rxp;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_7x_mgt rxn" *)
input wire [0 : 0] pci_exp_rxn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.user_clk_out, ASSOCIATED_BUSIF m_axis_rx:s_axis_tx, FREQ_HZ 125000000, ASSOCIATED_RESET user_reset_out, PHASE 0.000, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.user_clk_out CLK" *)
output wire user_clk_out;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.user_reset_out, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.user_reset_out RST" *)
output wire user_reset_out;
output wire user_lnk_up;
output wire user_app_rdy;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx TREADY" *)
output wire s_axis_tx_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx TDATA" *)
input wire [63 : 0] s_axis_tx_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx TKEEP" *)
input wire [7 : 0] s_axis_tx_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx TLAST" *)
input wire s_axis_tx_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx TVALID" *)
input wire s_axis_tx_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_tx, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 4, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx TUSER" *)
input wire [3 : 0] s_axis_tx_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx TDATA" *)
output wire [63 : 0] m_axis_rx_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx TKEEP" *)
output wire [7 : 0] m_axis_rx_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx TLAST" *)
output wire m_axis_rx_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx TVALID" *)
output wire m_axis_rx_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx TREADY" *)
input wire m_axis_rx_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_rx, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 22, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx TUSER" *)
output wire [21 : 0] m_axis_rx_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie2_cfg_interrupt:1.0 pcie2_cfg_interrupt interrupt" *)
input wire cfg_interrupt;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie2_cfg_interrupt:1.0 pcie2_cfg_interrupt rdy" *)
output wire cfg_interrupt_rdy;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie2_cfg_interrupt:1.0 pcie2_cfg_interrupt assert" *)
input wire cfg_interrupt_assert;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie2_cfg_interrupt:1.0 pcie2_cfg_interrupt write_data" *)
input wire [7 : 0] cfg_interrupt_di;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie2_cfg_interrupt:1.0 pcie2_cfg_interrupt read_data" *)
output wire [7 : 0] cfg_interrupt_do;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie2_cfg_interrupt:1.0 pcie2_cfg_interrupt mmenable" *)
output wire [2 : 0] cfg_interrupt_mmenable;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie2_cfg_interrupt:1.0 pcie2_cfg_interrupt msienable" *)
output wire cfg_interrupt_msienable;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie2_cfg_interrupt:1.0 pcie2_cfg_interrupt msixenable" *)
output wire cfg_interrupt_msixenable;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie2_cfg_interrupt:1.0 pcie2_cfg_interrupt msixfm" *)
output wire cfg_interrupt_msixfm;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie2_cfg_interrupt:1.0 pcie2_cfg_interrupt stat" *)
input wire cfg_interrupt_stat;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie2_cfg_interrupt:1.0 pcie2_cfg_interrupt pciecap_interrupt_msgnum" *)
input wire [4 : 0] cfg_pciecap_interrupt_msgnum;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.sys_clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.sys_clk CLK" *)
input wire sys_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.sys_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.sys_rst_n RST" *)
input wire sys_rst_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_qpll_drp:1.0 pcie_qpll_drp crscode" *)
input wire [11 : 0] qpll_drp_crscode;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_qpll_drp:1.0 pcie_qpll_drp fsm" *)
input wire [17 : 0] qpll_drp_fsm;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_qpll_drp:1.0 pcie_qpll_drp done" *)
input wire [1 : 0] qpll_drp_done;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_qpll_drp:1.0 pcie_qpll_drp reset" *)
input wire [1 : 0] qpll_drp_reset;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_qpll_drp:1.0 pcie_qpll_drp qplllock" *)
input wire [1 : 0] qpll_qplllock;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_qpll_drp:1.0 pcie_qpll_drp qplloutclk" *)
input wire [1 : 0] qpll_qplloutclk;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_qpll_drp:1.0 pcie_qpll_drp qplloutrefclk" *)
input wire [1 : 0] qpll_qplloutrefclk;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_qpll_drp:1.0 pcie_qpll_drp qplld" *)
output wire qpll_qplld;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_qpll_drp:1.0 pcie_qpll_drp qpllreset" *)
output wire [1 : 0] qpll_qpllreset;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_qpll_drp:1.0 pcie_qpll_drp clk" *)
output wire qpll_drp_clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_qpll_drp:1.0 pcie_qpll_drp rst_n" *)
output wire qpll_drp_rst_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_qpll_drp:1.0 pcie_qpll_drp ovrd" *)
output wire qpll_drp_ovrd;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_qpll_drp:1.0 pcie_qpll_drp gen3" *)
output wire qpll_drp_gen3;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_qpll_drp:1.0 pcie_qpll_drp start" *)
output wire qpll_drp_start;

  pcie_7x_0_pcie2_top #(
    .c_component_name("pcie_7x_0"),
    .dev_port_type("0000"),
    .c_dev_port_type("0"),
    .c_header_type("00"),
    .c_upstream_facing("TRUE"),
    .max_lnk_wdt("000001"),
    .max_lnk_spd("1"),
    .c_gen1(1'B0),
    .pci_exp_int_freq(1),
    .c_pcie_fast_config(0),
    .bar_0("FFE00004"),
    .bar_1("FFFFFFFF"),
    .bar_2("00000000"),
    .bar_3("00000000"),
    .bar_4("00000000"),
    .bar_5("00000000"),
    .xrom_bar("00000000"),
    .cost_table(1),
    .ven_id("10EE"),
    .dev_id("7011"),
    .rev_id("00"),
    .subsys_ven_id("10EE"),
    .subsys_id("0007"),
    .class_code("058000"),
    .cardbus_cis_ptr("00000000"),
    .cap_ver("2"),
    .c_pcie_cap_slot_implemented("FALSE"),
    .mps("010"),
    .cmps("2"),
    .ext_tag_fld_sup("FALSE"),
    .c_dev_control_ext_tag_default("FALSE"),
    .phantm_func_sup("00"),
    .c_phantom_functions("0"),
    .ep_l0s_accpt_lat("000"),
    .c_ep_l0s_accpt_lat("0"),
    .ep_l1_accpt_lat("111"),
    .c_ep_l1_accpt_lat("7"),
    .c_cpl_timeout_disable_sup("FALSE"),
    .c_cpl_timeout_range("0010"),
    .c_cpl_timeout_ranges_sup("2"),
    .c_buf_opt_bma("TRUE"),
    .c_perf_level_high("TRUE"),
    .c_tx_last_tlp("29"),
    .c_rx_ram_limit("7FF"),
    .c_fc_ph("32"),
    .c_fc_pd("437"),
    .c_fc_nph("12"),
    .c_fc_npd("24"),
    .c_fc_cplh("36"),
    .c_fc_cpld("461"),
    .c_cpl_inf("TRUE"),
    .c_cpl_infinite("TRUE"),
    .c_dll_lnk_actv_cap("FALSE"),
    .c_trgt_lnk_spd("0"),
    .c_hw_auton_spd_disable("FALSE"),
    .c_de_emph("FALSE"),
    .slot_clk("TRUE"),
    .c_rcb("0"),
    .c_root_cap_crs("FALSE"),
    .c_slot_cap_attn_butn("FALSE"),
    .c_slot_cap_attn_ind("FALSE"),
    .c_slot_cap_pwr_ctrl("FALSE"),
    .c_slot_cap_pwr_ind("FALSE"),
    .c_slot_cap_hotplug_surprise("FALSE"),
    .c_slot_cap_hotplug_cap("FALSE"),
    .c_slot_cap_mrl("FALSE"),
    .c_slot_cap_elec_interlock("FALSE"),
    .c_slot_cap_no_cmd_comp_sup("FALSE"),
    .c_slot_cap_pwr_limit_value("0"),
    .c_slot_cap_pwr_limit_scale("0"),
    .c_slot_cap_physical_slot_num("0"),
    .intx("FALSE"),
    .int_pin("0"),
    .c_msi_cap_on("FALSE"),
    .c_pm_cap_next_ptr("60"),
    .c_msi_64b_addr("TRUE"),
    .c_msi("0"),
    .c_msi_mult_msg_extn("0"),
    .c_msi_per_vctr_mask_cap("FALSE"),
    .c_msix_cap_on("TRUE"),
    .c_msix_next_ptr("00"),
    .c_pcie_cap_next_ptr("9C"),
    .c_msix_table_size("000"),
    .c_msix_table_offset("0"),
    .c_msix_table_bir("0"),
    .c_msix_pba_offset("0"),
    .c_msix_pba_bir("0"),
    .dsi("0"),
    .c_dsi_bool("FALSE"),
    .d1_sup("0"),
    .c_d1_support("FALSE"),
    .d2_sup("0"),
    .c_d2_support("FALSE"),
    .pme_sup("0F"),
    .c_pme_support("0F"),
    .no_soft_rst("TRUE"),
    .pwr_con_d0_state("00"),
    .con_scl_fctr_d0_state("0"),
    .pwr_con_d1_state("00"),
    .con_scl_fctr_d1_state("0"),
    .pwr_con_d2_state("00"),
    .con_scl_fctr_d2_state("0"),
    .pwr_con_d3_state("00"),
    .con_scl_fctr_d3_state("0"),
    .pwr_dis_d0_state("00"),
    .dis_scl_fctr_d0_state("0"),
    .pwr_dis_d1_state("00"),
    .dis_scl_fctr_d1_state("0"),
    .pwr_dis_d2_state("00"),
    .dis_scl_fctr_d2_state("0"),
    .pwr_dis_d3_state("00"),
    .dis_scl_fctr_d3_state("0"),
    .c_dsn_cap_enabled("TRUE"),
    .c_dsn_base_ptr("100"),
    .c_vc_cap_enabled("FALSE"),
    .c_vc_base_ptr("000"),
    .c_vc_cap_reject_snoop("FALSE"),
    .c_vsec_cap_enabled("FALSE"),
    .c_vsec_base_ptr("000"),
    .c_vsec_next_ptr("000"),
    .c_dsn_next_ptr("000"),
    .c_vc_next_ptr("000"),
    .c_pci_cfg_space_addr("3F"),
    .c_ext_pci_cfg_space_addr("3FF"),
    .c_last_cfg_dw("10C"),
    .c_enable_msg_route("00000000000"),
    .bram_lat("0"),
    .c_rx_raddr_lat("0"),
    .c_rx_rdata_lat("2"),
    .c_rx_write_lat("0"),
    .c_tx_raddr_lat("0"),
    .c_tx_rdata_lat("2"),
    .c_tx_write_lat("0"),
    .c_ll_ack_timeout_enable("FALSE"),
    .c_ll_ack_timeout_function("0"),
    .c_ll_ack_timeout("0000"),
    .c_ll_replay_timeout_enable("FALSE"),
    .c_ll_replay_timeout_func("1"),
    .c_ll_replay_timeout("0000"),
    .c_dis_lane_reverse("TRUE"),
    .c_upconfig_capable("TRUE"),
    .c_disable_scrambling("FALSE"),
    .c_disable_tx_aspm_l0s("FALSE"),
    .c_pcie_dbg_ports("FALSE"),
    .pci_exp_ref_freq("0"),
    .c_xlnx_ref_board("NONE"),
    .c_pcie_blk_locn("0"),
    .c_ur_atomic("FALSE"),
    .c_dev_cap2_atomicop32_completer_supported("FALSE"),
    .c_dev_cap2_atomicop64_completer_supported("FALSE"),
    .c_dev_cap2_cas128_completer_supported("FALSE"),
    .c_dev_cap2_tph_completer_supported("00"),
    .c_dev_cap2_ari_forwarding_supported("FALSE"),
    .c_dev_cap2_atomicop_routing_supported("FALSE"),
    .c_link_cap_aspm_optionality("FALSE"),
    .c_aer_cap_on("FALSE"),
    .c_aer_base_ptr("000"),
    .c_aer_cap_nextptr("000"),
    .c_aer_cap_ecrc_check_capable("FALSE"),
    .c_aer_cap_ecrc_gen_capable("FALSE"),
    .c_aer_cap_multiheader("FALSE"),
    .c_aer_cap_permit_rooterr_update("FALSE"),
    .c_rbar_cap_on("FALSE"),
    .c_rbar_base_ptr("000"),
    .c_rbar_cap_nextptr("000"),
    .c_rbar_num("0"),
    .c_rbar_cap_sup0("00001"),
    .c_rbar_cap_index0("0"),
    .c_rbar_cap_control_encodedbar0("00"),
    .c_rbar_cap_sup1("00001"),
    .c_rbar_cap_index1("0"),
    .c_rbar_cap_control_encodedbar1("00"),
    .c_rbar_cap_sup2("00001"),
    .c_rbar_cap_index2("0"),
    .c_rbar_cap_control_encodedbar2("00"),
    .c_rbar_cap_sup3("00001"),
    .c_rbar_cap_index3("0"),
    .c_rbar_cap_control_encodedbar3("00"),
    .c_rbar_cap_sup4("00001"),
    .c_rbar_cap_index4("0"),
    .c_rbar_cap_control_encodedbar4("00"),
    .c_rbar_cap_sup5("00001"),
    .c_rbar_cap_index5("0"),
    .c_rbar_cap_control_encodedbar5("00"),
    .c_recrc_check("0"),
    .c_recrc_check_trim("FALSE"),
    .c_disable_rx_poisoned_resp("FALSE"),
    .c_trn_np_fc("TRUE"),
    .c_ur_inv_req("TRUE"),
    .c_ur_prs_response("TRUE"),
    .c_silicon_rev("2"),
    .c_aer_cap_optional_err_support("002000"),
    .LINK_CAP_MAX_LINK_WIDTH(1),
    .C_DATA_WIDTH(64),
    .PIPE_SIM("FALSE"),
    .PCIE_EXT_CLK("FALSE"),
    .PCIE_EXT_GT_COMMON("TRUE"),
    .EXT_CH_GT_DRP("FALSE"),
    .TRANSCEIVER_CTRL_STATUS_PORTS("FALSE"),
    .SHARED_LOGIC_IN_CORE("FALSE"),
    .ERR_REPORTING_IF("FALSE"),
    .PL_INTERFACE("FALSE"),
    .CFG_MGMT_IF("FALSE"),
    .CFG_CTL_IF("FALSE"),
    .CFG_STATUS_IF("FALSE"),
    .RCV_MSG_IF("FALSE"),
    .CFG_FC_IF("FALSE"),
    .EXT_PIPE_INTERFACE("FALSE"),
    .EXT_STARTUP_PRIMITIVE("FALSE"),
    .KEEP_WIDTH(8),
    .PCIE_ASYNC_EN("FALSE"),
    .ENABLE_JTAG_DBG("TRUE")
  ) inst (
    .pci_exp_txp(pci_exp_txp),
    .pci_exp_txn(pci_exp_txn),
    .pci_exp_rxp(pci_exp_rxp),
    .pci_exp_rxn(pci_exp_rxn),
    .int_pclk_out_slave(),
    .int_pipe_rxusrclk_out(),
    .int_rxoutclk_out(),
    .int_dclk_out(),
    .int_mmcm_lock_out(),
    .int_userclk1_out(),
    .int_userclk2_out(),
    .int_oobclk_out(),
    .int_qplllock_out(),
    .int_qplloutclk_out(),
    .int_qplloutrefclk_out(),
    .int_pclk_sel_slave(1'B0),
    .pipe_pclk_in(1'B0),
    .pipe_rxusrclk_in(1'B0),
    .pipe_rxoutclk_in(1'B0),
    .pipe_dclk_in(1'B0),
    .pipe_userclk1_in(1'B1),
    .pipe_userclk2_in(1'B0),
    .pipe_oobclk_in(1'B0),
    .pipe_mmcm_lock_in(1'B1),
    .pipe_txoutclk_out(),
    .pipe_rxoutclk_out(),
    .pipe_pclk_sel_out(),
    .pipe_gen3_out(),
    .user_clk_out(user_clk_out),
    .user_reset_out(user_reset_out),
    .user_lnk_up(user_lnk_up),
    .user_app_rdy(user_app_rdy),
    .tx_buf_av(),
    .tx_cfg_req(),
    .tx_err_drop(),
    .s_axis_tx_tready(s_axis_tx_tready),
    .s_axis_tx_tdata(s_axis_tx_tdata),
    .s_axis_tx_tkeep(s_axis_tx_tkeep),
    .s_axis_tx_tlast(s_axis_tx_tlast),
    .s_axis_tx_tvalid(s_axis_tx_tvalid),
    .s_axis_tx_tuser(s_axis_tx_tuser),
    .tx_cfg_gnt(1'B1),
    .m_axis_rx_tdata(m_axis_rx_tdata),
    .m_axis_rx_tkeep(m_axis_rx_tkeep),
    .m_axis_rx_tlast(m_axis_rx_tlast),
    .m_axis_rx_tvalid(m_axis_rx_tvalid),
    .m_axis_rx_tready(m_axis_rx_tready),
    .m_axis_rx_tuser(m_axis_rx_tuser),
    .rx_np_ok(1'B1),
    .rx_np_req(1'B1),
    .fc_cpld(),
    .fc_cplh(),
    .fc_npd(),
    .fc_nph(),
    .fc_pd(),
    .fc_ph(),
    .fc_sel(3'B0),
    .cfg_mgmt_do(),
    .cfg_mgmt_rd_wr_done(),
    .cfg_status(),
    .cfg_command(),
    .cfg_dstatus(),
    .cfg_dcommand(),
    .cfg_lstatus(),
    .cfg_lcommand(),
    .cfg_dcommand2(),
    .cfg_pcie_link_state(),
    .cfg_pmcsr_pme_en(),
    .cfg_pmcsr_powerstate(),
    .cfg_pmcsr_pme_status(),
    .cfg_received_func_lvl_rst(),
    .cfg_mgmt_di(32'B0),
    .cfg_mgmt_byte_en(4'B0),
    .cfg_mgmt_dwaddr(10'B0),
    .cfg_mgmt_wr_en(1'B0),
    .cfg_mgmt_rd_en(1'B0),
    .cfg_mgmt_wr_readonly(1'B0),
    .cfg_err_ecrc(1'B0),
    .cfg_err_ur(1'B0),
    .cfg_err_cpl_timeout(1'B0),
    .cfg_err_cpl_unexpect(1'B0),
    .cfg_err_cpl_abort(1'B0),
    .cfg_err_posted(1'B0),
    .cfg_err_cor(1'B0),
    .cfg_err_atomic_egress_blocked(1'B0),
    .cfg_err_internal_cor(1'B0),
    .cfg_err_malformed(1'B0),
    .cfg_err_mc_blocked(1'B0),
    .cfg_err_poisoned(1'B0),
    .cfg_err_norecovery(1'B0),
    .cfg_err_tlp_cpl_header(48'B0),
    .cfg_err_cpl_rdy(),
    .cfg_err_locked(1'B0),
    .cfg_err_acs(1'B0),
    .cfg_err_internal_uncor(1'B0),
    .cfg_trn_pending(1'B0),
    .cfg_pm_halt_aspm_l0s(1'B0),
    .cfg_pm_halt_aspm_l1(1'B0),
    .cfg_pm_force_state_en(1'B0),
    .cfg_pm_force_state(2'B0),
    .cfg_dsn(64'B0),
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
    .cfg_to_turnoff(),
    .cfg_turnoff_ok(1'B0),
    .cfg_bus_number(),
    .cfg_device_number(),
    .cfg_function_number(),
    .cfg_pm_wake(1'B0),
    .cfg_pm_send_pme_to(1'B0),
    .cfg_ds_bus_number(8'B0),
    .cfg_ds_device_number(5'B0),
    .cfg_ds_function_number(3'B0),
    .cfg_mgmt_wr_rw1c_as_rw(1'B0),
    .cfg_msg_received(),
    .cfg_msg_data(),
    .cfg_bridge_serr_en(),
    .cfg_slot_control_electromech_il_ctl_pulse(),
    .cfg_root_control_syserr_corr_err_en(),
    .cfg_root_control_syserr_non_fatal_err_en(),
    .cfg_root_control_syserr_fatal_err_en(),
    .cfg_root_control_pme_int_en(),
    .cfg_aer_rooterr_corr_err_reporting_en(),
    .cfg_aer_rooterr_non_fatal_err_reporting_en(),
    .cfg_aer_rooterr_fatal_err_reporting_en(),
    .cfg_aer_rooterr_corr_err_received(),
    .cfg_aer_rooterr_non_fatal_err_received(),
    .cfg_aer_rooterr_fatal_err_received(),
    .cfg_msg_received_err_cor(),
    .cfg_msg_received_err_non_fatal(),
    .cfg_msg_received_err_fatal(),
    .cfg_msg_received_pm_as_nak(),
    .cfg_msg_received_pm_pme(),
    .cfg_msg_received_pme_to_ack(),
    .cfg_msg_received_assert_int_a(),
    .cfg_msg_received_assert_int_b(),
    .cfg_msg_received_assert_int_c(),
    .cfg_msg_received_assert_int_d(),
    .cfg_msg_received_deassert_int_a(),
    .cfg_msg_received_deassert_int_b(),
    .cfg_msg_received_deassert_int_c(),
    .cfg_msg_received_deassert_int_d(),
    .cfg_msg_received_setslotpowerlimit(),
    .pl_directed_link_change(2'B0),
    .pl_directed_link_width(2'B0),
    .pl_directed_link_speed(1'B0),
    .pl_directed_link_auton(1'B0),
    .pl_upstream_prefer_deemph(1'B1),
    .pl_sel_lnk_rate(),
    .pl_sel_lnk_width(),
    .pl_ltssm_state(),
    .pl_lane_reversal_mode(),
    .pl_phy_lnk_up(),
    .pl_tx_pm_state(),
    .pl_rx_pm_state(),
    .pl_link_upcfg_cap(),
    .pl_link_gen2_cap(),
    .pl_link_partner_gen2_supported(),
    .pl_initial_link_width(),
    .pl_directed_change_done(),
    .pl_received_hot_rst(),
    .pl_transmit_hot_rst(1'B0),
    .pl_downstream_deemph_source(1'B0),
    .cfg_err_aer_headerlog(128'B0),
    .cfg_aer_interrupt_msgnum(5'B0),
    .cfg_err_aer_headerlog_set(),
    .cfg_aer_ecrc_check_en(),
    .cfg_aer_ecrc_gen_en(),
    .cfg_vc_tcvc_map(),
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .pipe_mmcm_rst_n(1'B1),
    .startup_eos_in(1'B0),
    .startup_cfgclk(),
    .startup_cfgmclk(),
    .startup_eos(),
    .startup_preq(),
    .startup_clk(1'B0),
    .startup_gsr(1'B0),
    .startup_gts(1'B0),
    .startup_keyclearb(1'B1),
    .startup_pack(1'B0),
    .startup_usrcclko(1'B1),
    .startup_usrcclkts(1'B0),
    .startup_usrdoneo(1'B0),
    .startup_usrdonets(1'B1),
    .icap_clk(1'B0),
    .icap_csib(1'B0),
    .icap_rdwrb(1'B0),
    .icap_i(32'B0),
    .icap_o(),
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
    .pipe_txprbssel(3'B0),
    .pipe_rxprbssel(3'B0),
    .pipe_txprbsforceerr(1'B0),
    .pipe_rxprbscntreset(1'B0),
    .pipe_loopback(3'B0),
    .pipe_rxprbserr(),
    .pipe_txinhibit(1'B0),
    .pipe_rst_fsm(),
    .pipe_qrst_fsm(),
    .pipe_rate_fsm(),
    .pipe_sync_fsm_tx(),
    .pipe_sync_fsm_rx(),
    .pipe_drp_fsm(),
    .pipe_rst_idle(),
    .pipe_qrst_idle(),
    .pipe_rate_idle(),
    .pipe_eyescandataerror(),
    .pipe_rxstatus(),
    .pipe_dmonitorout(),
    .pipe_cpll_lock(),
    .pipe_qpll_lock(),
    .pipe_rxpmaresetdone(),
    .pipe_rxbufstatus(),
    .pipe_txphaligndone(),
    .pipe_txphinitdone(),
    .pipe_txdlysresetdone(),
    .pipe_rxphaligndone(),
    .pipe_rxdlysresetdone(),
    .pipe_rxsyncdone(),
    .pipe_rxdisperr(),
    .pipe_rxnotintable(),
    .pipe_rxcommadet(),
    .gt_ch_drp_rdy(),
    .pipe_debug_0(),
    .pipe_debug_1(),
    .pipe_debug_2(),
    .pipe_debug_3(),
    .pipe_debug_4(),
    .pipe_debug_5(),
    .pipe_debug_6(),
    .pipe_debug_7(),
    .pipe_debug_8(),
    .pipe_debug_9(),
    .pipe_debug(),
    .ext_ch_gt_drpclk(),
    .ext_ch_gt_drpaddr(9'B0),
    .ext_ch_gt_drpen(1'B0),
    .ext_ch_gt_drpdi(16'B0),
    .ext_ch_gt_drpwe(1'B0),
    .ext_ch_gt_drpdo(),
    .ext_ch_gt_drprdy(),
    .pcie_drp_clk(1'B1),
    .pcie_drp_en(1'B0),
    .pcie_drp_we(1'B0),
    .pcie_drp_addr(9'B0),
    .pcie_drp_di(16'B0),
    .pcie_drp_do(),
    .pcie_drp_rdy(),
    .common_commands_in(12'B0),
    .pipe_rx_0_sigs(25'B0),
    .pipe_rx_1_sigs(25'B0),
    .pipe_rx_2_sigs(25'B0),
    .pipe_rx_3_sigs(25'B0),
    .pipe_rx_4_sigs(25'B0),
    .pipe_rx_5_sigs(25'B0),
    .pipe_rx_6_sigs(25'B0),
    .pipe_rx_7_sigs(25'B0),
    .common_commands_out(),
    .pipe_tx_0_sigs(),
    .pipe_tx_1_sigs(),
    .pipe_tx_2_sigs(),
    .pipe_tx_3_sigs(),
    .pipe_tx_4_sigs(),
    .pipe_tx_5_sigs(),
    .pipe_tx_6_sigs(),
    .pipe_tx_7_sigs()
  );
endmodule