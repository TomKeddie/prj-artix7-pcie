# This file is Copyright (c) 2019 Florent Kermarrec <florent@enjoy-digital.fr>
# License: BSD

import argparse

from migen import *

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
        IOStandard("DIFF_HSTL_I")),
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
        Subsignal("rx", Pins("V17")),
        IOStandard("LVCMOS33"),
    ),
    ("serial2", 0,
        Subsignal("tx", Pins("W20"), Misc("PULLUP=TRUE")),
        Subsignal("rx", Pins("W19")),
        IOStandard("LVCMOS33"),
    ),
    ("usb_a", 0,
     Subsignal("d_p", Pins("N13")),    # IO_L10_16_P
     Subsignal("d_n", Pins("N14")),    # IO_L10_16_N
     Subsignal("pullup", Pins("N15")), # IO_L8_16_N
     IOStandard("LVCMOS33")
    ),
    ("usb_micro", 0,
     Subsignal("d_p", Pins("V18")),    # IO_L10_16_P
     Subsignal("d_n", Pins("V19")),    # IO_L10_16_N
     Subsignal("pullup", Pins("U18")), # IO_L8_16_N
     Subsignal("id", Pins("T18")), # IO_L8_16_N
     IOStandard("LVCMOS33")
    ),
    ("TP1", 0, Pins("B1"), IOStandard("LVCMOS15")),
    ("TP2", 0, Pins("A1"), IOStandard("LVCMOS15")),
    ("TP3", 0, Pins("AB5"), IOStandard("LVCMOS18")),
    ("TP4", 0, Pins("AA5"), IOStandard("LVCMOS18")),
    ("TP5", 0, Pins("B15"), IOStandard("LVCMOS25")),
    ("TP6", 0, Pins("B16"), IOStandard("LVCMOS25")),
    ("TP7", 0, Pins("V20"), IOStandard("LVCMOS33")),
    ("TP8", 0, Pins("V22"), IOStandard("LVCMOS33")),
    ("user_btn_n", 0, Pins("U17"), IOStandard("LVCMOS33"), Misc("PULLUP=TRUE")),
    ("user_led_n", 0, Pins("AB10"), IOStandard("LVCMOS33")),
    ("rgb_led", 0,
        Subsignal("r", Pins("P15")),  # IO_L7_13_P
        Subsignal("g", Pins("P16")),  # IO_L7_13_N
        Subsignal("b", Pins("P14")),  # IO_L8_13_N
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
    ("J1_35", 0, Pins("B2 C2 D1 E1 G2 H2 J1 K1 J2 K2 L1 M1 N2 P2"), IOStandard("LVCMOS15")),
    ("J1_34", 0, Pins("R2 R3 U1 T1 V2 U2 Y1 W1 Y2 W2 AB1 AA1 AB2 AB3"), IOStandard("LVCMOS18")),
    ("J2_14", 0, Pins("AB18 AA18 AB20 AA19 AB22 AB21 AA21 AA20 Y22 Y21 W22 W21 U21 T21"), IOStandard("LVCMOS33")),
    ("J2_16", 0, Pins("G22 G21 D22 E22 B22 C22 A21 B21 A19 A18 B18 B17 A16 A15"), IOStandard("LVCMOS25")),
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
