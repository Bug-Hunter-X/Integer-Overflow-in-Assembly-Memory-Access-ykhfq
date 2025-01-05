# Integer Overflow in Assembly Memory Access

This repository demonstrates a potential integer overflow bug in assembly code that can lead to unexpected behavior or crashes. The bug occurs due to the addition of two registers without proper overflow checking when calculating a memory address. 

## Bug Description
The assembly code attempts to access memory using a calculation that's vulnerable to integer overflow. If the values in the registers involved exceed the allowable address space, it causes a segmentation fault.

## Solution
The solution involves adding a check to ensure that the calculated memory address remains within the bounds of the allocated memory.  This can be achieved by either performing the addition in a larger register size or by explicitly checking for overflow before memory access.