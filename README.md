# FPGA Physical Unclonable Function (PUF)

This project implements a Physical Unclonable Function (PUF) using VHDL and an FPGA. It was developed as part of a university FPGA course project using Xilinx Vivado and was originally implemented and tested on physical FPGA hardware.

The design combines multiple digital components, including a ring oscillator, multiplexer, demultiplexer, clock divider, and counter as part of the overall PUF architecture.

## Project Components

The project contains the following VHDL source files:

- `PuffDesign2.vhd` – Top-level VHDL design integrating the system components.
- `ClockDivider.vhd` – Implements clock division used by the design.
- `Demux.vhd` – Implements demultiplexer functionality.
- `Mux.vhd` – Implements multiplexer functionality.
- `RingOscillator.vhd` – Implements the ring oscillator component used by the PUF.
- `UpCounter.vhd` – Implements the counter used by the design.

## Technologies

- VHDL
- FPGA
- Xilinx Vivado
- Digital Logic Design
- Physical Unclonable Functions (PUFs)

## Development and Testing

The project was developed and simulated using Xilinx Vivado. The completed design was originally implemented and tested on physical FPGA hardware provided for the university laboratory.

This repository preserves the original VHDL source code and Vivado project files.

## Project Structure

```text
PuffDesign2.srcs/
└── sources_1/
    └── new/
        ├── ClockDivider.vhd
        ├── Demux.vhd
        ├── Mux.vhd
        ├── PuffDesign2.vhd
        ├── RingOscillator.vhd
        └── UpCounter.vhd
```

## Screenshots

Screenshots and photographs from the original project are included to document the Vivado design environment, simulation results, and FPGA hardware used for the original implementation.

## Background

This project was completed as an academic FPGA design project and provided hands-on experience with VHDL, FPGA development, component-based digital design, simulation, hardware implementation, and Physical Unclonable Function concepts.