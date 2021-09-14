# Project1 32-bit ALU
   
## Contributor
Xueqian Hu NetID: xh110

Minzhi Guo NetID: mg516
   
## Design Description
In this project, we built a 32-bit ALU with addition and subtraction, which are supported by CSA, MUX and logic gates. Below are the basic modules or functions of our ALU and introductions of how we realzied them.

### MUX
We first designed a 2to1 MUX. Then we expanded the number of 2to1 MUXes, for example, a 4to2 MUX is made by 2 2to1 MUXes and a 8to4 MUX is made by 4 2to1 MUXes. In this way, we finally  2-bit CSAs and 4to2 MUXes to design a 4-bit CSA. Just in this way, we finally built a 32-bit CSA with 16-bit CSAs and 64to32 MUXes.
### CSA
We first designed a 1-bit full adder and used 1-bit full adders and 2to1 MUXes to design a 2-bit CSA. Then we used three 2-bit CSAs, a 4to2 MUX and two 2to1 MUXes to design a 4-bit CSA. 2-bit CSAs were for addition and giving result of the sum and carry out of the inputs. 4to2 MUX was for selecting the highest 2 bit numbers. One of the 2to1 MUXes was for selecting the carry out and the other one was for calculating the overflow (which will be explained in detail below) are for Just in this way, we finally built a 32-bit CSA with 16-bit CSAs and 32to16 MUXes.
### Addition and Subtraction
We used a 64to32 MUX to select whether to do addition or subtraction. The two 32-bit inputs were operand B and (operand B)', the select input was 0 (addtion) or 1 (subtraction), which wasalso the carry in of the 32-bit CSA.
### Overflow
When we built the 2-bit CSA, we added an output wire leading the first full adder's carry out which was also the second full adder's carry in. So when we built the 4-bit CSA we could get the carry in of the last full adder. And so on, when we built the 32-bit CSA, it could have a wire leading the last full adder's carry in. Here, we named the last full adder's carry CI and named its carry out CO. We used CO and CI to just if overflow would happen. When CI XOR CO was false, overflow would happen.

## Issues
When testing by the Gate Level Simulation, we found our ALU was not fast enough. At first it worked well, but with gate delay accummulating, it spent more than 20ns in generating the final result, so there were errors when tesing with a slow module. Maybe we should use CLAs to do the calculation or use decoder instead of MUXes.
