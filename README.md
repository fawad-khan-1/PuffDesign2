# VHDL Ring-Oscillator Physical Unclonable Function (ROPUF)

This project implements a Ring-Oscillator Physical Unclonable Function (ROPUF) using VHDL and an FPGA.

The project was developed as the final laboratory project for a university VHDL/FPGA course. Its purpose was to integrate the individual digital components developed throughout the course into a complete FPGA design.

The design was developed using Xilinx Vivado, tested through simulation, synthesized, and successfully implemented on physical FPGA hardware.

## Project Overview

The ROPUF uses multiple ring oscillators and compares their operating frequencies to produce an output.

The complete design integrates several VHDL components, including:

- Clock divider
- Demultiplexers
- Multiplexers
- Ring oscillators
- Up counters
- Comparators
- Top-level PUF design

Several of these components were originally developed individually during earlier laboratory projects and were later instantiated and integrated into the final ROPUF design.

## System Architecture

The design uses a clock divider to divide the clock signal used by components within the system.

The ROPUF contains two signal paths containing demultiplexers, ring oscillators, multiplexers, counters, and comparison logic.

The general signal flow is:

1. A demultiplexer selects the appropriate ring-oscillator path.
2. Ring oscillators generate oscillating signals.
3. The ring-oscillator outputs are connected to multiplexer inputs.
4. The selected multiplexer output is sent to an up counter.
5. The counters measure the oscillation activity.
6. A comparator compares the resulting values from the two paths.
7. The comparison result is provided through the top-level ROPUF design.

This architecture allows the design to compare the operating frequencies of ring oscillators as part of the PUF implementation.

## VHDL Design

The project uses a hierarchical VHDL design.

Individual components were implemented as separate VHDL modules and instantiated by the higher-level ROPUF design. This allowed components developed during previous laboratory exercises to be reused as part of the final integrated system.

The repository contains the VHDL source files preserved from the original project.

## FPGA Implementation

The project was not limited to VHDL source code or schematic development.

The completed ROPUF was:

- Tested using simulation
- Synthesized in Xilinx Vivado
- Implemented using an XDC constraints file
- Programmed onto physical FPGA hardware
- Tested on the physical FPGA

The original laboratory report records that the design produced the correct result after simulation and physical hardware testing.

## Troubleshooting

During the original project, difficulties occurred during synthesis after the XDC constraints file was added.

After troubleshooting the design, the synthesis and implementation issues were resolved and the ROPUF operated successfully.

This provided practical experience debugging an FPGA design beyond the VHDL source-code level.

## Technologies and Concepts

- VHDL
- FPGA Development
- Xilinx Vivado
- Ring Oscillators
- Physical Unclonable Functions (PUFs)
- Digital Logic Design
- Hierarchical VHDL Design
- Component Instantiation
- Multiplexers
- Demultiplexers
- Counters
- Comparators
- FPGA Synthesis
- FPGA Simulation
- XDC Constraints
- Physical Hardware Testing

## Original Project Documentation

The repository includes the original laboratory report written when the project was completed.

The report documents:

- The objective of the project
- ROPUF architecture and operation
- VHDL implementation
- Original Vivado development environment
- Elaborated design schematic
- Simulation and hardware testing
- Synthesis troubleshooting
- Project results and learning outcomes

The original report is included to preserve documentation of the project as it existed when it was developed.

## Screenshots

The original laboratory report contains screenshots captured during development in Xilinx Vivado.

These include:

- The original VHDL project and source code in Vivado
- The elaborated ROPUF design schematic showing the interconnected FPGA components

These screenshots provide documentation of the original development environment and integrated hardware design.

## Results

The completed ROPUF was tested in simulation and then implemented on physical FPGA hardware.

Although synthesis issues were initially encountered after adding the XDC constraints file, these problems were troubleshot and the design ultimately ran successfully.

## Learning Outcome

This project served as the culmination of the VHDL/FPGA course by requiring individually developed VHDL components to be integrated into a complete system.

The project provided hands-on experience with:

- Designing reusable VHDL components
- Integrating components into a larger hierarchical design
- FPGA simulation
- Synthesis and implementation
- Troubleshooting FPGA design problems
- Testing a completed VHDL design on physical FPGA hardware

## Project Background

This project has been preserved as part of my engineering portfolio to demonstrate experience with VHDL, FPGA development, digital hardware design, component integration, troubleshooting, and physical hardware implementation.