# Design and Verification of 32-bit ALU

A Verilog HDL implementation and verification of a 32-bit Arithmetic Logic Unit (ALU), developed and analyzed using AMD/Xilinx Vivado.

## Supported Operations

| ALU_Sel | Operation |
|---|---|
| `0000` | Addition |
| `0001` | Subtraction |
| `0010` | AND |
| `0011` | OR |
| `0100` | XOR |
| `0101` | NOT A |
| `0110` | Shift Left |
| `0111` | Shift Right |
| `1000` | Comparison (`A < B`) |

## Project Structure

- `src/alu_32bit.v` — 32-bit ALU RTL design
- `testbench/alu_32bit_tb.v` — functional verification testbench
- `constraints/alu_32bit.xdc` — FPGA constraints from the Vivado project
- `Figures/` — RTL, synthesis, implementation, utilization, timing, power and DRC results
- `waveform/` — simulation waveform evidence/configuration
- `vivado/ALU_32BIT.xpr` — Vivado project file

## Verification

The testbench exercises addition, subtraction, AND, OR, XOR, NOT, logical left/right shifts, and comparison. Functional simulation was performed in Vivado/XSim.

## Implementation Analysis

The project includes evidence from RTL analysis, synthesis, implementation, resource utilization, timing summary, power analysis, and Design Rule Check (DRC).

## Tools

- Verilog HDL
- AMD/Xilinx Vivado
- Vivado/XSim waveform simulation

## Author

THARUNKUMAR S V
