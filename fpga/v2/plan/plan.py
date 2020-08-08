# This file is Copyright (c) 2019 Florent Kermarrec <florent@enjoy-digital.fr>
# License: BSD

import argparse

from migen import *

from litex.soc.cores import spi_flash
from litex.soc.cores.clock import *
from litex.soc.cores.gpio import GPIOTristate, GPIOOut
from litex.soc.cores.uart import UARTWishboneBridge
from litex.soc.cores.bitbang import I2CMaster
from litex.soc.integration.soc_core import *
from litex.soc.integration.builder import *

from litex.build.generic_platform import *
from litex.build.xilinx import XilinxPlatform, VivadoProgrammer
from litex.build.xilinx.common import DifferentialOutput

# IOs ----------------------------------------------------------------------------------------------

_io = [
    ("clk100", 0,
        Subsignal("p", Pins("Y18")),
        Subsignal("n", Pins("Y19")),
        IOStandard("LVDS_25")),
    ("flash", 0,
        Subsignal("cs_n", Pins("T19")),
        Subsignal("mosi", Pins("P22")),
        Subsignal("miso", Pins("R22")),
        Subsignal("vpp", Pins("P21")),
        Subsignal("hold", Pins("R21")),
        IOStandard("LVCMOS33")
    ),
    ("spiflash4x", 0,
        Subsignal("cs_n", Pins("T19")),
        Subsignal("dq", Pins("P22 R22 P21 R21")),
        IOStandard("LVCMOS33")
    ),
    ("serial", 0,
        Subsignal("tx", Pins("W17"), Misc("PULLUP=TRUE")),
        Subsignal("rx", Pins("W20")),
        IOStandard("LVCMOS33"),
    ),
    ("serial2", 0,
        Subsignal("tx", Pins("V17"), Misc("PULLUP=TRUE")),
        Subsignal("rx", Pins("W19")),
        IOStandard("LVCMOS33"),
    ),
    ("usb_a", 0,
     Subsignal("d_p", Pins("P19")),    # IO_L10_16_P
     Subsignal("d_n", Pins("R19")),    # IO_L10_16_N
     Subsignal("pullup", Pins("P20")), # IO_L8_16_N
     IOStandard("LVCMOS33")
    ),
    ("usb_micro", 0,
     Subsignal("d_p", Pins("V18")),    # IO_L10_16_P
     Subsignal("d_n", Pins("V19")),    # IO_L10_16_N
     Subsignal("pullup", Pins("U18")), # IO_L8_16_N
     Subsignal("id", Pins("U20")), # IO_L8_16_N
     IOStandard("LVCMOS33")
    ),
    ("TP1", 0, Pins("C2"), IOStandard("LVCMOS15")),
    ("TP2", 0, Pins("B2"), IOStandard("LVCMOS15")),
    ("TP3", 0, Pins("AB5"), IOStandard("LVCMOS18")),
    ("TP4", 0, Pins("AA5"), IOStandard("LVCMOS18")),
    ("TP5", 0, Pins("B15"), IOStandard("LVCMOS25")), #
    ("TP6", 0, Pins("B16"), IOStandard("LVCMOS25")), #
    ("TP7", 0, Pins("V22"), IOStandard("LVCMOS33")), #
    ("TP8", 0, Pins("V20"), IOStandard("LVCMOS33")), #
    ("user_btn_n", 0, Pins("U17"), IOStandard("LVCMOS33"), Misc("PULLUP=TRUE")),
    ("user_led_n", 0, Pins("P16"), IOStandard("LVCMOS33"), Inverted()),
    ("rgb_led", 0,
        Subsignal("r", Pins("P15"), Inverted()),  # IO_L7_13_P
        Subsignal("g", Pins("P16"), Inverted()),  # IO_L7_13_N
        Subsignal("b", Pins("P14"), Inverted()),  # IO_L8_13_N
        IOStandard("LVCMOS33"),
    ),
    ("pcie_ctrl", 0,
     Subsignal("wake", Pins("R16")),
     Subsignal("perst", Pins("R17")),
               IOStandard("LVCMOS33")),
    ("clk_i2c", 0,
     Subsignal("scl", Pins("N17"), IOStandard("LVCMOS33")),
     Subsignal("sda", Pins("P17"), IOStandard("LVCMOS33")),
     ),
    # using different io standards here to make sure we have the bank
    # separation correct, voltages don't reflect schematic in some
    # cases.
    ("J1_35", 0, Pins("A1 B1 D1 E1 F1 G1 J2 K2 J1 K1 L1 M1 N2 P2"), IOStandard("LVCMOS15")), #
    ("J1_34", 0, Pins("R2 R3 U1 T1 V2 U2 Y1 W1 Y2 W2 AB1 AA1 AB2 AB3"), IOStandard("LVCMOS18")), #
    ("J2_14", 0, Pins("AB18 AA18 AB20 AA19 AB22 AB21 AA21 AA20 Y22 Y21 W22 W21 U21 T21"), IOStandard("LVCMOS33")), #
    ("J2_16", 0, Pins("G22 G21 D22 E22 B22 C22 A21 B21 B17 B18 A19 A18 A15 A16"), IOStandard("LVCMOS25")), #
    ("S0", 0,
     Subsignal("tx_p", Pins("B4")),
     Subsignal("tx_n", Pins("A4")),
     Subsignal("rx_p", Pins("B8")),
     Subsignal("rx_n", Pins("A8")),
     
     Subsignal("clk_p", Pins("F6"), IOStandard("LVDS_25")),
     Subsignal("clk_n", Pins("E6"), IOStandard("LVDS_25")),
    ),
    ("S2", 0,
     Subsignal("tx_p", Pins("B6")),
     Subsignal("tx_n", Pins("A6")),
     Subsignal("rx_p", Pins("B10")),
     Subsignal("rx_n", Pins("A10")),
     Subsignal("clk_p", Pins("F10"), IOStandard("LVDS_25")),
     Subsignal("clk_n", Pins("E10"), IOStandard("LVDS_25")),
    ),
]

class DiffOut(Module, AutoCSR):
    def __init__(self, signal):
        self._out = CSRStorage(len(signal))
        self.specials += [
            DifferentialOutput(self._out.storage, signal.d_p, signal.d_n)
        ]


# Platform -----------------------------------------------------------------------------------------

class Platform(XilinxPlatform):
    default_clk_name = "clk50"
    default_clk_period = 1e9/50e6

    def __init__(self):
        XilinxPlatform.__init__(self, "xc7a15t-fgg484-2", _io, toolchain="vivado")
        self.add_platform_command("set_property CFGBVS VCCO [current_design]")
        self.add_platform_command("set_property CONFIG_VOLTAGE 3.3 [current_design]")

# CRG ----------------------------------------------------------------------------------------------
class _CRG(Module):
    def __init__(self, platform, sys_clk_freq):
        self.clock_domains.cd_sys       = ClockDomain()

        # # #

        self.submodules.pll = pll = S7PLL(speedgrade=-1)
        pll.register_clkin(platform.request("clk100"), 100e6)
        pll.create_clkout(self.cd_sys,       sys_clk_freq)

        self.comb += pll.reset.eq(~platform.request("user_btn_n"))

# Serdes ----------------------------------------------------------------------------------------------
class Serdes(Module):
    def __init__(self, platform):
        platform.add_source("xilinx_ip/gig_ethernet_pcs_pma_0/gig_ethernet_pcs_pma_0.xci")
        platform.add_source("xilinx_ip/gig_ethernet_pcs_pma_0_ex/imports/gig_ethernet_pcs_pma_0_clocking.v")
        platform.add_source("xilinx_ip/gig_ethernet_pcs_pma_0_ex/imports/gig_ethernet_pcs_pma_0_common_reset.v")
        platform.add_source("xilinx_ip/gig_ethernet_pcs_pma_0_ex/imports/gig_ethernet_pcs_pma_0_resets.v")
        s0_pads = platform.request("S0")
        s0_sys_clk = ClockSignal("sys")
        s0_sys_clk_reset = ResetSignal("sys")

        s0_gtrefclk_bufg=Signal()
        s0_gtrefclk = Signal()
        txoutclk=Signal()
        rxoutclk=Signal()
        mmcm_reset=Signal()
        mmcm_locked=Signal()
        userclk=Signal()
        userclk2=Signal()
        rxuserclk=Signal()
        rxuserclk2=Signal()
        pma_reset=Signal()
        commonreset=Signal()
        gt0_pll1reset=Signal()
        gt0_pll1outclk=Signal()       
        gt0_pll1outrefclk=Signal() 
        gt0_pll1lock=Signal()
        gt0_pll1refclklost=Signal()
        gt0_pll1reset=Signal()

        self.specials += [
            Instance("gig_ethernet_pcs_pma_0",
                     i_gtrefclk_bufg=s0_gtrefclk_bufg,
                     i_gtrefclk=s0_gtrefclk,
                     o_txp=s0_pads.tx_p,                   # Differential +ve of serial transmission from PMA to PMD.
                     o_txn=s0_pads.tx_n,                   # Differential -ve of serial transmission from PMA to PMD.
                     i_rxp=s0_pads.rx_p,                   # Differential +ve for serial reception from PMD to PMA.
                     i_rxn=s0_pads.rx_n,                   # Differential -ve for serial reception from PMD to PMA.

                     i_independent_clock_bufg=s0_sys_clk,
                     o_txoutclk=txoutclk,
                     o_rxoutclk=rxoutclk,
                     # .resetdone(resetdone),                            // output wire resetdone
                     # .cplllock(cplllock),                              // output wire cplllock
                     o_mmcm_reset=mmcm_reset,
                     i_userclk=userclk,
                     i_userclk2=userclk2,
                     i_pma_reset=pma_reset,
                     i_mmcm_locked=mmcm_locked,
                     i_rxuserclk=rxuserclk,
                     i_rxuserclk2=rxuserclk2,
                     i_gmii_txd=0,              # Transmit data from client MAC.
                     i_gmii_tx_en=1,            # Transmit control signal from client MAC.
                     i_gmii_tx_er=0,            # Transmit control signal from client MAC.
#  .gmii_rxd(gmii_rxd),                              // output wire [7 : 0] gmii_rxd
#  .gmii_rx_dv(gmii_rx_dv),                          // output wire gmii_rx_dv
#  .gmii_rx_er(gmii_rx_er),                          // output wire gmii_rx_er
#  .gmii_isolate(gmii_isolate),                      // output wire gmii_isolate
                     i_configuration_vector=0,  # Alternative to MDIO interface.
#  .status_vector(status_vector),                    // output wire [15 : 0] status_vector
                     i_reset=pma_reset,
                     i_signal_detect=1,          # Input from PMD to indicate presence of optical input
                     i_gt0_pll0outclk_in=0,
                     i_gt0_pll0outrefclk_in=0,
                     i_gt0_pll1outclk_in=gt0_pll1outclk,
                     i_gt0_pll1outrefclk_in=gt0_pll1outrefclk,
                     i_gt0_pll0lock_in=gt0_pll1lock,           
                     i_gt0_pll0refclklost_in=gt0_pll1refclklost,
                     o_gt0_pll0reset_out=gt0_pll1reset,
                     #o_rxuserclk2,
                     #i_gmii_tx_clk=sys_clk,           # Transmit clock from client MAC.
                     #o_gmii_rx_clk,           # Receive clock to client MAC.
                     #o_gmii_rxd,              # Received Data to client MAC.
                     #o_gmii_rx_dv,            # Received control signal to client MAC.
                     #o_gmii_rx_er,            # Received control signal to client MAC.



                     #o_status_vector,         # Core status.
            ),
            Instance("gig_ethernet_pcs_pma_0_clocking",
                     i_gtrefclk_p=s0_pads.clk_p,
                     i_gtrefclk_n=s0_pads.clk_n,
                     i_txoutclk=txoutclk,
                     i_rxoutclk=rxoutclk,
                     i_mmcm_reset=mmcm_reset,
                     o_gtrefclk=s0_gtrefclk,
                     o_gtrefclk_bufg=s0_gtrefclk_bufg,
                     o_mmcm_locked=mmcm_locked, 
                     o_userclk=userclk,
                     o_userclk2=userclk2,
                     o_rxuserclk=rxuserclk,
                     o_rxuserclk2=rxuserclk2
            ),
            Instance("gig_ethernet_pcs_pma_0_resets",
                     i_reset=s0_sys_clk_reset,
                     i_independent_clock_bufg=s0_sys_clk,
                     o_pma_reset=pma_reset
            ),
            Instance("gig_ethernet_pcs_pma_0_common_reset",
                     p_STABLE_CLOCK_PERIOD=5,
                     i_STABLE_CLOCK=s0_sys_clk,
                     i_SOFT_RESET=pma_reset,
                     o_COMMON_RESET=commonreset
            )
        ]

# Common ----------------------------------------------------------------------------------------------
# always @(posedge GTREFCLK0_BUFG_IN )
# begin
#   qpllpd_wait <= {qpllpd_wait[94:0], 1'b0};
#   qpll1_por qpllreset_wait <= {qpllreset_wait[126:0], 1'b0};
# end
        s2_pads = platform.request("S2")
        s2_sys_clk = Signal()
        self.specials += [
            Instance("IBUFDS_GTE2",
                     i_I=s2_pads.clk_p,
                     i_IB=s2_pads.clk_n,
                     i_CEB=0,
                     o_O=s2_sys_clk),
        ]

        qpll0_reset=Signal()
        qpll1_reset=Signal()
        qpll1_por=Signal()

        cpll_reset=Signal()
        cpll_pd=Signal()

        qpll0_qplllock = Signal()
        qpll0_qplloutclk = Signal()
        qpll0_qplloutrefclk = Signal()
        qpll0_qpllpd = Signal()
        qpll0_qpllreset = Signal()
        qpll0_pd = Signal()
        
        qpll_drp_fsm = Signal()
        qpll_drp_done = Signal()
        qpll_drp_reset = Signal()
        qpll_drp_clk = Signal()
        qpll_drp_rst_n = Signal()
        qpll_drp_ovrd = Signal()
        qpll_drp_gen3 = Signal()
        qpll_drp_start = Signal()
        qpll_drp_crscode = Signal(12)
        qpll_drp_addr = Signal(8)
        qpll_drp_en = Signal()
        qpll_drp_di = Signal(16)
        qpll_drp_we = Signal()
        qpll_drp_do = Signal(16)
        qpll_drp_rdy = Signal()


        self.comb += qpll0_reset.eq(cpll_reset | qpll0_qpllreset)
        self.comb += qpll1_reset.eq(qpll1_por | gt0_pll1reset | commonreset);
        self.comb += qpll0_pd.eq(cpll_pd | qpll0_qpllpd)
        self.specials += [
            Instance("GTPE2_COMMON",
                     p_SIM_RESET_SPEEDUP="TRUE",
                     p_SIM_PLL0REFCLK_SEL=1,
                     p_SIM_PLL1REFCLK_SEL=1,
                     p_SIM_VERSION="2.0",
                     p_PLL0_FBDIV=4,
	             p_PLL0_FBDIV_45=5,
	             p_PLL0_REFCLK_DIV=1,
 	             p_PLL1_FBDIV=5,
                     p_PLL1_FBDIV_45=5,
                     p_PLL1_REFCLK_DIV=1,
 
                     # ----------------COMMON BLOCK Attributes---------------
                     p_BIAS_CFG=0x50001,
                     p_COMMON_CFG=0,
                     
                     # --------------------------PLL Attributes----------------------------
                     p_PLL0_CFG=0x01F024C,   # pcie
                     p_PLL0_DMON_CFG=0,
                     p_PLL0_INIT_CFG=0x00001E,
                     p_PLL0_LOCK_CFG=0x1E8,
                     p_PLL1_CFG=0x01F03DC,    # ethernet
                     p_PLL1_DMON_CFG=1,
                     p_PLL1_INIT_CFG=0x00001E,
                     p_PLL1_LOCK_CFG=0x1E8,
                     p_PLL_CLKOUT_CFG=0,
                     # --------------------------Reserved Attributes----------------------------
                     p_RSVD_ATTR0=0,
                     p_RSVD_ATTR1=0,
                     # ----------- Common Block  - Dynamic Reconfiguration Port (DRP) -----------
                     i_DRPADDR=qpll_drp_addr,
                     i_DRPCLK=qpll_drp_clk,
                     i_DRPDI=qpll_drp_di,
                     o_DRPDO=qpll_drp_do,
                     i_DRPEN=qpll_drp_en,
                     o_DRPRDY=qpll_drp_rdy,
                     i_DRPWE=qpll_drp_we,
                     # --------------- Common Block - GTPE2_COMMON Clocking Ports ---------------
                     i_GTEASTREFCLK0=0,
                     i_GTEASTREFCLK1=0,
                     i_GTGREFCLK1=0,
                     i_GTREFCLK0=s0_gtrefclk,
                     i_GTREFCLK1=s2_sys_clk,
                     i_GTWESTREFCLK0=0,
                     i_GTWESTREFCLK1=0,
                     o_PLL0OUTCLK=qpll0_qplloutclk,
                     o_PLL0OUTREFCLK=qpll0_qplloutrefclk,
                     o_PLL1OUTCLK=gt0_pll1outclk,
                     o_PLL1OUTREFCLK=gt0_pll1outrefclk,
                     # ------------------------ Common Block - PLL Ports ------------------------
                     # .PLL0FBCLKLOST                  (),
                     o_PLL0LOCK=qpll0_qplllock,
                     i_PLL0LOCKDETCLK=0,
                     i_PLL0LOCKEN=1,
                     i_PLL0PD=qpll0_pd,
                     # o_PLL0REFCLKLOST=
                     i_PLL0REFCLKSEL=0b001,
                     i_PLL0RESET=qpll0_reset,
                     # .PLL1FBCLKLOST                  (),
                     o_PLL1LOCK=gt0_pll1lock,
                     o_PLL1LOCKDETCLK=s0_sys_clk,
                     i_PLL1LOCKEN=1,
                     i_PLL1PD=cpll_pd,
                     o_PLL1REFCLKLOST=gt0_pll1refclklost,
                     i_PLL1REFCLKSEL=0b010,
                     i_PLL1RESET=qpll1_reset,
                     # -------------------------- Common Block - Ports --------------------------
                     i_BGRCALOVRDENB=1,
                     i_GTGREFCLK0=0,
                     i_PLLRSVD1=0,
                     i_PLLRSVD2=0,
                     #.REFCLKOUTMONITOR0              (),
                     #.REFCLKOUTMONITOR1              (),
                     # ---------------------- Common Block - RX AFE Ports -----------------------
                     # .PMARSVDOUT                     (),
                     # ------------------------------- QPLL Ports -------------------------------
                     i_BGBYPASSB=1,
                     i_BGMONITORENB=1,
                     i_BGPDB=1,
                     i_BGRCALOVRD=0b11111,
                     i_PMARSVD=0,
                     i_RCALENB=1,
                    ),
            ]
# PCIe ----------------------------------------------------------------------------------------------
        platform.add_source("xilinx_ip/pcie_7x_0/pcie_7x_0.xci")
        platform.add_source("xilinx_ip/pcie_7x_0_ex/imports/pcie_7x_0_qpll_drp.v");
        platform.add_source("xilinx_ip/pcie_7x_0_ex/imports/pcie_7x_0_gtp_cpllpd_ovrd.v")

        gt_cpllpdrefclk = Signal()
        pipe_clk = Signal()

        self.comb += pipe_clk.eq(s2_sys_clk)
        
        self.specials += [
            Instance("BUFG",
                     i_I=s2_sys_clk,
                     o_O=gt_cpllpdrefclk
            ),
            Instance("pcie_7x_0",
                     o_pci_exp_txp=s2_pads.tx_p,
                     o_pci_exp_txn=s2_pads.tx_n,
                     i_pci_exp_rxp=s2_pads.rx_p,
                     i_pci_exp_rxn=s2_pads.rx_n,
#    .user_clk_out(user_clk_out),
#    .user_reset_out(user_reset_out),
#    .user_lnk_up(user_lnk_up),
#    .user_app_rdy(user_app_rdy),
                     
                     i_s_axis_tx_tready=0,
                     i_s_axis_tx_tdata=0,
                     i_s_axis_tx_tkeep=0,
                     i_s_axis_tx_tlast=0,
                     i_s_axis_tx_tvalid=1,                     
                     i_s_axis_tx_tuser=0,
                     
                     i_m_axis_rx_tready=0,

                     i_cfg_interrupt=0,
#    .cfg_interrupt_rdy(cfg_interrupt_rdy),
                     i_cfg_interrupt_assert=0,
                     i_cfg_interrupt_di=0,
#    .cfg_interrupt_do(cfg_interrupt_do),
#    .cfg_interrupt_mmenable(cfg_interrupt_mmenable),
#    .cfg_interrupt_msienable(cfg_interrupt_msienable),
#    .cfg_interrupt_msixenable(cfg_interrupt_msixenable),
#    .cfg_interrupt_msixfm(cfg_interrupt_msixfm),
                     i_cfg_interrupt_stat=0,
                     
                     i_cfg_pciecap_interrupt_msgnum=0,
                     
                     i_qpll_drp_crscode=qpll_drp_crscode,
                     i_qpll_drp_fsm=qpll_drp_fsm,
                     i_qpll_drp_done=qpll_drp_done,
                     i_qpll_drp_reset=qpll_drp_reset,
                     i_qpll_qplllock=qpll0_qplllock,
                     i_qpll_qplloutclk=qpll0_qplloutclk,
                     i_qpll_qplloutrefclk=qpll0_qplloutrefclk,
                     o_qpll_qplld=qpll0_qpllpd,
                     o_qpll_qpllreset=qpll0_qpllreset,
                     o_qpll_drp_clk=qpll_drp_clk,
                     o_qpll_drp_rst_n=qpll_drp_rst_n,
                     o_qpll_drp_ovrd=qpll_drp_ovrd,
                     o_qpll_drp_gen3=qpll_drp_gen3,
                     o_qpll_drp_start=qpll_drp_start,

                     i_sys_clk=s2_sys_clk,
                     i_sys_rst_n=1,
                     
            ),
            Instance("pcie_7x_0_qpll_drp",
	             p_PCIE_GT_DEVICE="GTP",
	             p_PCIE_USE_MODE="1.0",
	             p_PCIE_PLL_SEL="CPLL",
	             p_PCIE_REFCLK_FREQ=0, # 0 - 100 MHz, 1 - 125 MHz, 2 - 250 MHz 
	             i_DRP_CLK=qpll_drp_clk,
                     i_DRP_RST_N=qpll_drp_rst_n,
                     i_DRP_OVRD=qpll_drp_ovrd,
                     i_DRP_GEN3=qpll_drp_gen3,
                     i_DRP_QPLLLOCK=qpll0_qplllock,
                     i_DRP_START=qpll_drp_start,
                     i_DRP_DO=qpll_drp_do,
                     i_DRP_RDY=qpll_drp_rdy,
                     o_DRP_ADDR=qpll_drp_addr,
                     o_DRP_EN=qpll_drp_en,
                     o_DRP_DI=qpll_drp_di,
                     o_DRP_WE=qpll_drp_we,
                     o_DRP_DONE=qpll_drp_done,
                     o_DRP_QPLLRESET=qpll0_qpllreset,
                     o_DRP_CRSCODE=qpll_drp_crscode,
                     o_DRP_FSM=qpll_drp_fsm,
            ),
            Instance("pcie_7x_0_gtp_cpllpd_ovrd",
                     i_i_ibufds_gte2=gt_cpllpdrefclk,
                     o_o_cpllpd_ovrd=cpll_pd,                                                                                       
                     o_o_cpllreset_ovrd=cpll_reset,
            ),
        ]

        

# BaseSoC ------------------------------------------------------------------------------------------

class BaseSoC(SoCCore):
    def __init__(self, sys_clk_freq=int(100e6), **kwargs):
        platform = Platform()

        # SoCCore ---------------------------------------------------------------------------------
        SoCCore.__init__(self, platform, clk_freq=sys_clk_freq, cpu_variant="standard+debug", **kwargs)

        # CRG --------------------------------------------------------------------------------------
        self.submodules.crg = _CRG(platform, sys_clk_freq)

        # CRG --------------------------------------------------------------------------------------
        self.submodules.uartbridge = UARTWishboneBridge(platform.request("serial2"), int(sys_clk_freq), baudrate=115200)
        self.add_wb_master(self.uartbridge.wishbone)
        self.register_mem("vexriscv_debug", 0xf00f0000, self.cpu.debug_bus, 0x10)

        tp_list = Cat(platform.request("TP1"),
                      platform.request("TP2"),
                      platform.request("TP3"),
                      platform.request("TP4"),
                      platform.request("TP5"),
                      platform.request("TP6"),
                      platform.request("TP7"),
                      platform.request("TP8"))
        print("====================================================================")
        print(tp_list)
        print("====================================================================")
        self.submodules.tp = GPIOTristate(tp_list)
        self.add_csr("tp")
        j1_35_pads = platform.request("J1_35")
        print("====================================================================")
        print(j1_35_pads)
        print("====================================================================")
        self.submodules.j1_35 = GPIOTristate(j1_35_pads)
        self.add_csr("j1_35")
        self.submodules.j1_34 = GPIOTristate(platform.request("J1_34"))
        self.add_csr("j1_34")
        self.submodules.j2_14 = GPIOTristate(platform.request("J2_14"))
        self.add_csr("j2_14")
        self.submodules.j2_16 = GPIOTristate(platform.request("J2_16"))
        self.add_csr("j2_16")
        self.submodules.led = GPIOOut(platform.request("rgb_led").raw_bits())
        self.add_csr("led")
        self.submodules.usba = GPIOTristate(platform.request("usb_a").raw_bits())
        self.add_csr("usba")
        self.submodules.usbmicro = GPIOTristate(platform.request("usb_micro").raw_bits())
        self.add_csr("usbmicro")
        self.submodules.clk_i2c = I2CMaster(pads=platform.request("clk_i2c"))
        self.add_csr("clk_i2c")
        self.submodules.pcie_ctrl = GPIOTristate(platform.request("pcie_ctrl").raw_bits())
        self.add_csr("pcie_ctrl")
        self.submodules.spi_flash = spi_flash.SpiFlashDualQuad(platform.request("spiflash4x"), with_bitbang=True, endianness="little")
        self.spi_flash.add_clk_primitive(platform.device)
        self.add_csr("spi_flash")
        self.submodules.ethernet = Serdes(platform)

#     user_clk_out : OUT STD_LOGIC;
#     user_reset_out : OUT STD_LOGIC;
#     user_lnk_up : OUT STD_LOGIC;
#     user_app_rdy : OUT STD_LOGIC;
#     : OUT STD_LOGIC;
#    : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
#    : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
#    : IN STD_LOGIC;
#     : IN STD_LOGIC;
#     s_axis_tx_tdata: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
#     m_axis_rx_tdata : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
#     m_axis_rx_tkeep : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
#     m_axis_rx_tlast : OUT STD_LOGIC;
#     m_axis_rx_tvalid : OUT STD_LOGIC;
#     m_axis_rx_tready : IN STD_LOGIC;
#     m_axis_rx_tuser : OUT STD_LOGIC_VECTOR(21 DOWNTO 0);
#     cfg_interrupt : IN STD_LOGIC;
#     cfg_interrupt_rdy : OUT STD_LOGIC;
#     cfg_interrupt_assert : IN STD_LOGIC;
#     cfg_interrupt_di : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
#     cfg_interrupt_do : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
#     cfg_interrupt_mmenable : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
#     cfg_interrupt_msienable : OUT STD_LOGIC;
#     cfg_interrupt_msixenable : OUT STD_LOGIC;
#     cfg_interrupt_msixfm : OUT STD_LOGIC;
#     cfg_interrupt_stat : IN STD_LOGIC;
#     cfg_pciecap_interrupt_msgnum : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
#     sys_clk : IN STD_LOGIC;
#     sys_rst_n : IN STD_LOGIC
#                 ),
# 




# Build --------------------------------------------------------------------------------------------

def main():
    parser = argparse.ArgumentParser(description="LiteX SoC")
    builder_args(parser)
    soc_core_args(parser)
    args = parser.parse_args()

    soc = BaseSoC(**soc_core_argdict(args))
    builder = Builder(soc, **builder_argdict(args))
    builder.build()


if __name__ == "__main__":
    main()
