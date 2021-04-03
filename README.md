# RISCV-RV32I-LOGISIM
# **RV32I Single Cycle-Logisim Simulation**

## Introduction:
- **Logisim** is a tool which allows you to designing and simulating the digital logic circuits. With the capacity to build larger circuits from the smaller subcircuits.
- **RISCV** is an open source software standard instruction set architecture (ISA) that has originally designed to support computer architecture research and education. 
## Required Equipments:
- Register File
- ALU
- Control Unit 
   1. Control Decode 
   2. Type Decode
 - Immediate Generation
 - Program Counter/ Instruction Pointer
 -Memory
   1. Instruction Memory (ROM)
   2. Data Memory (RAM)
 - Branch Circuit
## Instructed By:
- [Zeeshan Rafique](https://github.com/zeeshanrafique23)
## Pre-Required Tools:
- Logisim Software [Logisim.](http://www.cburch.com/logisim/download.html)
- Venus online simulator [Venus](https://venus.cs61c.org/)
- Github [Github](https://github.com)
- Git [Git](https://git-scm.com/downloads)
## Implementation/Designing:
Construct the simple single cycle RISCV (RV32I) processor on logisim,by using 32 bit register file, control unit, immediate generation, ALU and use a Logisim ROM for the instruction memory and a Logisim RAM for the data memory.Firstly, create the 32 bit register file,this register file takes 5-bit address to select one of the 32 registers and write data to it using register enable wire.Secondly, make 32 Bit ALU with 4-bit having operations of ADD,SUB,AND,OR,XOR,slt,sltu,srl,sll,sra,DB which selects which operation to perform according to the instruction.Then make a control unit with the combination of type decode and control decode. Also create additional subcircuits, such as branches, jalr and the sign extension and shift 2, to keep your main circuit manageable and connected these components using wires and tunnel.And then provided register file uses the clock of logisim, also need to connect the PC and Data Memory (RAM) to the clock.
## Circuit Diagram:
![image](https://user-images.githubusercontent.com/81455748/113479151-2980ee80-9442-11eb-8efc-123280b29d54.png)
## Instructions Using In RISCV (RV32I):
- add
- addi
- sub
- xor
- and
- slt
- sltu
- sll
- srl
- sra
- lw
- jalr
- slli
- srli
- srai
- slti
- sltiu
- sw
- auipc
- lui
- li
- beq
- bne
- blt
- bge
- bltu
- bgeu
## References:
RISCV BOOK https://www.amazon.com/dp/0128122757
ISA MANUAL https://riscv.org/technical/specifications/
