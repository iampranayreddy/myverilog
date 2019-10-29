# myverilog
my verilog practice codes
This repository has codes for basic verilog codes.
The Testbench file names are followed by "tb" at the end of the name. For example, If "Basic.v" is actual module, "Basicb.v" is its test bench file.
Few of the dont have the testbenches.
1bfaWha: One bit Full Adder With Half Adder
4bfa: Four bit Full Adder etc.
I will add additional files soon.
Feel free to pull requests or suggest edits.
The code doesnt contain "`include example.v`", So please include all the essential files while execting.
Example: iverilog -o mux8.out mux8.v mux8tb.v mux4.v mux2.v 
Example: iverilog -o 1bfa.v 1bfatb.v 1bha.v
