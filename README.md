# 32-bit ALU Design and Verification

## Overview

This project implements a **32-bit Arithmetic Logic Unit (ALU)** using **Verilog HDL** and **AMD/Xilinx Vivado**.

The ALU performs arithmetic, logical, comparison, and shift operations on two 32-bit input values.

The project includes RTL design, testbench simulation, synthesis, FPGA implementation, timing analysis, utilization analysis, power analysis, and Design Rule Check (DRC).

## Features

The 32-bit ALU supports operations such as:

- Addition
- Subtraction
- Bitwise AND
- Bitwise OR
- Bitwise XOR
- Bitwise NOT
- Left Shift
- Right Shift
- Less-Than Comparison

## Inputs and Output

| Signal | Width | Description |
|---|---|---|
| A | 32-bit | First input |
| B | 32-bit | Second input |
| ALU_Sel | 4-bit | Operation selector |
| Result | 32-bit | ALU output |

## Tools Used

- Verilog HDL
- AMD/Xilinx Vivado
- Vivado Simulator

## Target FPGA

```text
xc7a35tcpg236-1
```

## Project Structure

```text
32-bit-ALU-Design-and-Verification/
│
├── src/
│   └── alu_32bit.v
│
├── testbench/
│   └── alu_32bit_tb.v
│
├── constraints/
│   └── alu_32bit.xdc
│
├── Figures/
│   └── Vivado result screenshots
│
├── waveforms/
│   ├── ALU_32bit_Simulation_Waveform.png
│   └── ALU_32bit_Simulation_Waveform.wcfg
│
├── .gitignore
└── README.md
```

## Design Flow

```text
RTL Design
    ↓
Testbench
    ↓
Behavioral Simulation
    ↓
Synthesis
    ↓
Implementation
    ↓
Timing Analysis
    ↓
Utilization Analysis
    ↓
Power Analysis
    ↓
DRC
```

## Results

The 32-bit ALU was successfully designed, simulated, synthesized, and implemented using Vivado.

### Resource Utilization

- Slice LUTs: **315**
- Slices: **87**
- LUTs as Logic: **315**
- Bonded I/O: **100**

### Timing

- Total Negative Slack (TNS): **0.000 ns**
- Total Hold Slack (THS): **0.000 ns**
- Setup Failing Endpoints: **0**
- Hold Failing Endpoints: **0**

The Vivado timing report indicates that the specified timing constraints are met.

### Design Rule Check

The implemented design completed the Design Rule Check with:

**No Violations Found**

### Power Analysis

Vivado power analysis was also performed on the implemented design. The generated estimate has a low confidence level and is included in the project results for reference.

## Simulation

A Verilog testbench is provided to verify the functionality of the ALU.

The simulation tests different values of:

- A
- B
- ALU_Sel
- Result

The simulation waveform files are available in the `waveforms` folder.

## How to Run

1. Open AMD/Xilinx Vivado.
2. Create a new RTL project.
3. Add `src/alu_32bit.v` as the design source.
4. Add `testbench/alu_32bit_tb.v` as the simulation source.
5. Add `constraints/alu_32bit.xdc` as the constraint file.
6. Run Behavioral Simulation.
7. Run Synthesis.
8. Run Implementation.
9. Check utilization, timing, power, and DRC reports.

## Conclusion

The project demonstrates the complete FPGA design flow for a **32-bit ALU using Verilog HDL**.

The ALU was functionally verified through simulation and successfully processed through synthesis and implementation in Vivado.

## Author

**Tharunkumar SV**
