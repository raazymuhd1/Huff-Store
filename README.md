## Horse Store

### Function Dispatching
 `Function Dispacthing` is how solidity finding which function to call based on calldata (function selector) we sent, solidity will find a which function we intended to call based on the function selector. solidity did this under the hood for us.

 1. compiling huff contract run this command `huffc ./src/horseStoreV1/HorseStore.huff --bytecode`

 ### Contract Creation Process
 these 3 bytecode will be push onto blockchain on the contract creation process
 - contract runtime bytecode
 - contract build time bytecode
 - contract metadata (optional data)


 ## 3 Main Part Where Data Stored on EVM (Stack based machine)
 - Stack - Stack is where all computational stuff happen (add, subtract value, read or write to memory or storage),  before being stored on the memory or storage, data is computes on the stack. 
    - Ex: adding 3 + 4, then `PUSH1` will place 1 byte of each value into the stack, and then `ADD` opcode will pull of those 2 values and perform a sum (a+b) then store in memory or storage.

    so in a nutshell all data computation will happen on the stack before storing onto memory or storage. the stack will be cleared out if we store data on memory or storage, otherwise the stack output will stayed on the stack.
  
    `storage` and `memory` is just like a giant array of data stored in bytes32 format, the only differences is data on memory is not persisted it will be deleted after function execution is completed. but the data on storage will be persisted even after function execution is completed

 - Memory - data stored on memory will be deleted after the transactions completed (function completed)
 - Storage (persisted) - data stored on storage will be persisted even after transactions completed