# FPGA constraints are included in the original Vivado project.
# This repository copy documents the board pin assignments and I/O settings.
# See the original ALU_32BIT.xpr/project sources for the complete Vivado configuration.

# I/O Standard constraints for 32-bit ALU
set_property IOSTANDARD LVCMOS33 [get_ports {A[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {B[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ALU_Sel[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Result[*]}]

# FPGA configuration voltage
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
