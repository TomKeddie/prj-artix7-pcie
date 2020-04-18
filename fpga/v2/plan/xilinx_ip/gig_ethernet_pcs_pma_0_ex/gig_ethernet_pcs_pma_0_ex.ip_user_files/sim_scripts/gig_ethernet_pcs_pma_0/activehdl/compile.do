vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../gig_ethernet_pcs_pma_0_ex.srcs/sources_1/ip/gig_ethernet_pcs_pma_0/gig_ethernet_pcs_pma_0_sim_netlist.v" \


vlog -work xil_defaultlib \
"glbl.v"

