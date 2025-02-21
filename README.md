# Multifunction ALU

A Verilog-based design to model a multifunction arithmetic and logic unit (ALU) with both arithmetic and logical operations.

## Summary
This project models a multifunction ALU that accepts two n‑bit signed inputs (in 2’s complement) and a 3‑bit control code to perform various arithmetic and logic operations. The design ensures that the output has the minimum required bit-width to prevent overflow. The ALU supports operations such as scaled addition, division, subtraction, NAND, NOR, NOT, and XOR. The project encompasses a complete implementation—from determining output width and designing the ALU using MSI components (with parameterized behavioral modules) to developing a structural Verilog model, and generating simulation waveforms for both the structural and behavioral implementations using test cases based on a student ID.

## Specifications
- **Inputs:**
  - **X, Y:** n‑bit signed numbers (2’s complement representation).
  - **C:** A 3‑bit unsigned control code that selects the ALU operation.
  
- **Output:**
  - **O:** Signed ALU output (2’s complement) with a bit-width chosen to guarantee that overflow never occurs.

- **Supported ALU Operations (Selected by C):**
  - **000:** O = (X + Y) / 2
  - **001:** O = 2 * (X + Y)
  - **010:** O = (X / 2) + Y
  - **011:** O = X - (Y / 2)
  - **100:** O = X NAND Y
  - **101:** O = NOT(X)
  - **110:** O = X NOR Y
  - **111:** O = X XOR Y

- **Project Tasks:**
  - (a) **Output Bit-Width:** Specify the minimum number of bits required for O to prevent overflow.
  - (b) **MSI-Based Implementation:** Design the ALU using medium-scale integration (MSI) components with a minimal gate count. Utilize extensions (sign‑ or zero‑extension) as needed.
  - (c) **Parameterized Modules:** Write behavioral Verilog modules for the defined MSI components. Each module must be parameterized to support varying input sizes.
  - (d) **Structural Model:** Develop a structural Verilog model for the ALU using the modules from part (c).
  - (e) **Waveform Generation (Structural):** Generate simulation waveforms for the structural ALU. Assume 4‑bit inputs for X and Y and set test values based on a student ID (with any digit 8 or 9 replaced by 1).
  - (f) **Single Behavioral Model:** Create one complete behavioral Verilog module that models the designed ALU.
  - (g) **Waveform Generation (Behavioral):** Generate simulation waveforms for the behavioral ALU using the same 4‑bit test cases as in part (e).

## Author

Qusay Taradeh
