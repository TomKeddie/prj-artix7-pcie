vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/jtag_axi

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap jtag_axi modelsim_lib/msim/jtag_axi

vlog -work xil_defaultlib -64 -incr -sv "+incdir+../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/ip_0/hdl/verilog" \
"/opt/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/opt/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work jtag_axi -64 -incr "+incdir+../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/ip_0/hdl/verilog" \
"../../../ipstatic/hdl/jtag_axi_v1_2_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/ip_0/hdl/verilog" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/ip_0/sim/pcie_7x_0_jtag.v" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pipe_clock.v" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pipe_eq.v" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pipe_drp.v" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pipe_rate.v" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pipe_reset.v" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pipe_sync.v" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_gtp_pipe_rate.v" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_gtp_pipe_drp.v" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_gtp_pipe_reset.v" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pipe_user.v" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pipe_wrapper.v" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_qpll_reset.v" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_rxeq_scan.v" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pcie_top.v" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_core_top.v" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_axi_basic_rx_null_gen.v" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_axi_basic_rx_pipeline.v" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_axi_basic_rx.v" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_axi_basic_top.v" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_axi_basic_tx_pipeline.v" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_axi_basic_tx_thrtl_ctl.v" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_axi_basic_tx.v" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pcie_7x.v" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pcie_bram_7x.v" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pcie_bram_top_7x.v" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pcie_brams_7x.v" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pcie_pipe_lane.v" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pcie_pipe_misc.v" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pcie_pipe_pipeline.v" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_gt_top.v" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_gtx_cpllpd_ovrd.v" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_gt_rx_valid_filter_7x.v" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_gt_wrapper.v" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_debug_probes.v" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_debug_axi4l_s.v" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_debug_wrapper.v" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pcie2_top.v" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/sim/pcie_7x_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

