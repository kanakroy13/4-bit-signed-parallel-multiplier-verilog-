## 💻 4x4 Bit Array Multiplier using Full and Half Adders

This project implements a **4x4 bit array multiplier** designed using basic building blocks like **AND gates, Half Adders (HA), and Full Adders (FA)**. It multiplies two 4-bit binary numbers and produces an 8-bit product.

###  Logic Diagram

The below image illustrates the **logical architecture** of the 4x4 array multiplier. Each row represents a partial product generated using AND gates, which are then added using full and half adders in a structured array format.

![image](https://github.com/user-attachments/assets/1f7c2f67-fcdf-4425-a2df-d844c7f4020d)

- `X[3:0]` and `Y[3:0]` are input bits.
- `Z[7:0]` is the final 8-bit output product.
- Partial products are generated using AND gates.
- Each diagonal summation is handled by HAs and FAs as per array multiplication logic.

###  Simulink Implementation

The image below shows the **Simulink block-level implementation** of the same logic using built-in logic gates and custom FA/HA subsystems.

![image](https://github.com/user-attachments/assets/6fbc506a-7367-4f99-bdc4-466c75541728)

- Simulink blocks are neatly arranged to reflect the array structure.
- Each FA and HA block is clearly labeled for better traceability.
- Inputs `A[3:0]` and `B[3:0]` are multiplied to generate output `Z[7:0]`.

###  Features

- Simple and modular design.
- Logical and hardware-friendly implementation.
- Useful for FPGA or ASIC-level multiplication modules.


