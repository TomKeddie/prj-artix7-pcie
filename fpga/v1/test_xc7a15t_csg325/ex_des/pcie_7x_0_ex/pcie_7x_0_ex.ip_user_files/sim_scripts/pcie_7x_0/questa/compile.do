vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/jtag_axi

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap jtag_axi questa_lib/msim/jtag_axi

vlog -work xil_defaultlib -64 -sv "+incdir+../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/ip_0/hdl/verilog" "+incdir+../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/ip_0/hdl/verilog" \
"/opt/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/opt/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work jtag_axi -64 "+incdir+../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/ip_0/hdl/verilog" "+incdir+../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/ip_0/hdl/verilog" \
"../../../ipstatic/hdl/jtag_axi_v1_2_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/ip_0/hdl/verilog" "+incdir+../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/ip_0/hdl/verilog" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/ip_0/sim/pcie_7x_0_jtag.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_core_top.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/ip_0/hdl/verilog" "+incdir+../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/ip_0/hdl/verilog" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pipe_drp.v" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pipe_eq.v" \
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

vcom -work xil_defaultlib -64 -93 \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_axi_basic_rx_null_gen.vhd" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_axi_basic_rx_pipeline.vhd" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_axi_basic_rx.vhd" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_axi_basic_top.vhd" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_axi_basic_tx_pipeline.vhd" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_axi_basic_tx_thrtl_ctl.vhd" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_axi_basic_tx.vhd" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pcie_7x.vhd" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pcie_bram_7x.vhd" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pcie_bram_top_7x.vhd" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pcie_brams_7x.vhd" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pcie_pipe_lane.vhd" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pcie_pipe_misc.vhd" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pcie_pipe_pipeline.vhd" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_gt_rx_valid_filter_7x.vhd" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_gt_top.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/ip_0/hdl/verilog" "+incdir+../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/ip_0/hdl/verilog" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_gt_wrapper.v" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_gtx_cpllpd_ovrd.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pcie_top.vhd" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/source/pcie_7x_0_pcie2_top.vhd" \
"../../../../pcie_7x_0_ex.srcs/sources_1/ip/pcie_7x_0/sim/pcie_7x_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

