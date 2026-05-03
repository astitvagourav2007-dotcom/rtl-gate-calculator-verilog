# 8-bit RTL to Gate-Level Calculator

Designed and verified a fully functional 8-bit calculator in Verilog HDL.

## Operations Supported
- ADD (with overflow detection)
- SUB (with borrow detection)  
- MUL (8x8 = 16-bit product)
- DIV (with divide-by-zero flag)

## Verification Results
- 27 test cases written
- All 27 PASSED ✅
- Simulated using Icarus Verilog on WSL/Ubuntu

## Tools Used
- Icarus Verilog
- GTKWave
- WSL2 / Ubuntu
- VS Code

## How to Run
iverilog -o sim calculator_rtl.v tb.v && vvp sim
