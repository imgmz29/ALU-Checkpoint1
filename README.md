# Project1 32-bit ALU
   
## + Contributor
Xueqian Hu NetID: 
Minzhi Guo NetID: mg516
   
## + Design Description
In this project, we built a 32-bit ALU with addition and subtraction, which are supported by CSA, MUX and logic gates. Below are the basic modules or functions of our ALU and introductions of how we realzied them.

### MUX
We first designed a 2to1 MUX. Then we expanded the number of 2to1 MUXes, for example, a 4to2 MUX is made by 2 2to1 MUXes and a 8to4 MUX is made by 4 2to1 MUXes. In this way, we finally  2-bit CSAs and 4to2 MUXes to design a 4-bit CSA. Just in this way, we finally built a 32-bit CSA with 16-bit CSAs and 64to32 MUXes.
### CSA
We first designed a 1-bit full adder and used 1-bit full adders and 2to1 MUXes to design a 2-bit CSA. Then we used three 2-bit CSAs, a 4to2 MUX and two 2to1 MUXes to design a 4-bit CSA. 2-bit CSAs were for addition and giving result of the sum and carry out of the inputs. 4to2 MUX was for selecting the highest 2 bit numbers. One of the 2to1 MUXes was for selecting the carry out and the other one was for calculating the overflow ( which will be explained in detail at ) are for Just in this way, we finally built a 32-bit CSA with 16-bit CSAs and 32to16 MUXes.
### Addition and Subtraction
### Overflow
   
## +Issues
