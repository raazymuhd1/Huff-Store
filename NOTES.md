## Learning Assembly on Solidity

## EVM
 - Evm is a stack based virtual machine

 ## OPERATIONS
 - PUSH1 0x01 - push one byte of number 1
 - DUP1 - duplicate item at stack 1
 - GT - check if the top item on the stack are greater than the second item on the stack
 - MUL - multiply
 - ADD - addition
 - DIV - division
 - SDIV - signed integer division 

### Bitwise Operator
- AND - only return the bit 1 if the top two on the stack are 1
- OR - only return the bit 1 if one of the top two on the stack are 1
- SHR - shifting 2 bit of the top stack
- SHL - shifting 2 bits of the top stack
- XOR - 
- NOT - flip the bits

- binary number
  1. one -  0b 0001
  2. two -  0b 0010
  3. three - 0b 0011
  4. four - 0b 0100
  5. five - 0b 0101
  6. six - 0b 0110
  7. seven - 0b 0111
  8. eight - 0b 1000
  9. nine - 0b 1001
  10. ten - 0b 1010

## functions in inline assembly
 - cannot access variable outside of that function
 - uses "leave" keyword to stop execution and exiting the function
 - arguments does not require type

## if statement in assembly
 - should always have a curly brackets

## loops in assembly 
 - theres np while loops
 - but we can make it as while loops with for loops, by leave an inialazation and post-iteration empty

## While the free memory pointer is automatically updated by Solidity, it is not updated by assembly code, so you have to do it yourself if solidity code follows the in-line assembly code.

Each time when switching from Yul back to Solidity, the free memory pointer should be manually updated so that Solidity can use it:

## The differences of byte code of smart contract

1. creation bytecode
 - the bytecode that generated when ur deploying a contract, it   includes a constructor logic and arguments

2. Runtime bytecode
 - it a code that stored on-chain that describes a smart contract. it's not included a constructor logic and arguments


 ## how contract address is computed
  - is a combination of a sender address + nonce hash it with keccak256