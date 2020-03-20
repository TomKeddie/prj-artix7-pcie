-makelib ies_lib/xil_defaultlib -sv \
  "/opt/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/opt/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "/opt/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/jtag_axi \
  "../../../ipstatic/hdl/jtag_axi_v1_2_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../test_xc7a15t_csg325.srcs/sources_1/ip/pcie_7x_0/ip_0/sim/pcie_7x_0_jtag.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../test_xc7a15t_csg325.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_core_top.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../test_xc7a15t_csg325.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pipe_drp.v" \
  "../../../../test_xc7a15t_csg325.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pipe_eq.v" \
  "../../../../test_xc7a15t_csg325.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pipe_rate.v" \
  "../../../../test_xc7a15t_csg325.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pipe_reset.v" \
  "../../../../test_xc7a15t_csg325.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pipe_sync.v" \
  "../../../../test_xc7a15t_csg325.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_gtp_pipe_rate.v" \
  "../../../../test_xc7a15t_csg325.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_gtp_pipe_drp.v" \
  "../../../../test_xc7a15t_csg325.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_gtp_pipe_reset.v" \
  "../../../../test_xc7a15t_csg325.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pipe_user.v" \
  "../../../../test_xc7a15t_csg325.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pipe_wrapper.v" \
  "../../../../test_xc7a15t_csg325.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_qpll_reset.v" \
  "../../../../test_xc7a15t_csg325.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_rxeq_scan.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../test_xc7a15t_csg325.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_axi_basic_rx_null_gen.vhd" \
  "../../../../test_xc7a15t_csg325.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_axi_basic_rx_pipeline.vhd" \
  "../../../../test_xc7a15t_csg325.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_axi_basic_rx.vhd" \
  "../../../../test_xc7a15t_csg325.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_axi_basic_top.vhd" \
  "../../../../test_xc7a15t_csg325.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_axi_basic_tx_pipeline.vhd" \
  "../../../../test_xc7a15t_csg325.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_axi_basic_tx_thrtl_ctl.vhd" \
  "../../../../test_xc7a15t_csg325.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_axi_basic_tx.vhd" \
  "../../../../test_xc7a15t_csg325.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pcie_7x.vhd" \
  "../../../../test_xc7a15t_csg325.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pcie_bram_7x.vhd" \
  "../../../../test_xc7a15t_csg325.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pcie_bram_top_7x.vhd" \
  "../../../../test_xc7a15t_csg325.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pcie_brams_7x.vhd" \
  "../../../../test_xc7a15t_csg325.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pcie_pipe_lane.vhd" \
  "../../../../test_xc7a15t_csg325.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pcie_pipe_misc.vhd" \
  "../../../../test_xc7a15t_csg325.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pcie_pipe_pipeline.vhd" \
  "../../../../test_xc7a15t_csg325.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_gt_rx_valid_filter_7x.vhd" \
  "../../../../test_xc7a15t_csg325.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_gt_top.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../test_xc7a15t_csg325.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_gt_wrapper.v" \
  "../../../../test_xc7a15t_csg325.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_gtx_cpllpd_ovrd.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../test_xc7a15t_csg325.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pcie_top.vhd" \
  "../../../../test_xc7a15t_csg325.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pcie2_top.vhd" \
  "../../../../test_xc7a15t_csg325.srcs/sources_1/ip/pcie_7x_0/sim/pcie_7x_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

