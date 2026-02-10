# Verilog Implementations

This repository contains a collection of Verilog modules and experiments, ranging from basic logic gates to complex combinational and sequential circuits. Each implementation typically includes the Verilog code, testbenches for simulation, and scripts for synthesis.

## 📂 Directory Structure

The project is organized into the following categories:

### 1. Basic Logic Gates
Found in the root directory:
-   **andGate**
-   **notGate**
-   **orGate**
-   **xorGate**

### 2. Combinational Circuits
Located in `Combinational Circuits/`:
-   **Adders**: Implementations of various adders (Half, Full, etc.).
-   **Comparators**: Digital comparators for comparing binary numbers.
-   **Decoders**: Binary decoders.
-   **Multiplexers**: Mux implementations.
-   **Multipliers**: Binary multipliers.
-   **Parity Bit Generators**: Circuits for error detection.
-   **Priority Encoders**: Encoders that handle multiple active inputs.
-   **Simple Counter**: Basic counting logic (Note: While counters are sequential, this specific implementation is grouped here).
-   **combinational_ckt_1**: A custom combinational circuit design (Root Directory).

### 3. Sequential Circuits
Located in `Sequential Circuits/`:
-   **jkFlipFlop**: Implementation of the JK Flip-Flop.
-   **srLatch**: Basic SR Latch using NOR gates.
-   **srFlipFlop**: Clocked SR Flip-Flop.
-   **dFlipFlop**: D Flip-Flop implementation.
-   **tFlipFlop**: T Flip-Flop implementation.

## 🛠️ Tools Used

-   **Icarus Verilog (`iverilog`)**: For compilation and simulation.
-   **GTKWave**: For viewing simulation waveforms.
-   **Yosys**: For checking synthesis.

## 🚀 How to Run

To run a simulation for a specific module (e.g., an AND gate):

1.  Navigate to the module's directory:
    ```bash
    cd andGate
    ```

2.  Compile the Verilog files:
    ```bash
    iverilog -o output_filename design_file.v testbench_file.v
    ```
    *(Replace `design_file.v` and `testbench_file.v` with the actual filenames found in the directory)*

3.  Run the simulation:
    ```bash
    vvp output_filename
    ```

4.  View the waveform (if a VCD file is generated):
    ```bash
    gtkwave dump.vcd
    ```

## 📝 Notes

-   Each directory generally contains the necessary `.v` files for the specific circuit.
-   Ensure you have `iverilog` and `gtkwave` installed on your system to run simulations.