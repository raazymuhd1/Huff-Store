## Horse Store (Video stop at 3.42.02)

## EVM 
 - `EVM` is a stack based machine
   meaning any execution/operations process always happen on the stack before pushing the data onto the memory or storage. stack will be cleared out after executions/operations completed

### Function Dispatching
 `Function Dispacthing` is how solidity finding which function to call based on calldata (function selector) we sent, solidity will find a which function we intended to call based on the function selector. solidity did this under the hood for us.

 ### How solidity know which function to call when users sending transaction to/or read from the blockchain
  the way solidity do that is basically by taking the calldata that is pushed onto the stack when users sending transactions or reading from blockchain, from that calldata (function + params) bytes solidity takes the first 4 bytes (1 byte = 8 bits => on calldata bytes 1 byte is each 2 number represents 1 byte) on that calldata which is a function selector, and then solidity perform a check based on that function selector. Whether the function selector exist or not on the contract, if it is exist thus solidity will push `JUMP` onto the stack and `jump` to that `JUMPDEST` in this case is jump to function that matches the function selector.

 1. compiling huff contract run this command `huffc ./src/horseStoreV1/HorseStore.huff --bytecode`

 ### Contract Creation code
 these 3 bytecode will be push onto blockchain on the contract creation process
 - contract creation bytecode
 - contract runtime bytecode
 - contract metadata (optional data) - basically just adding someting like compiler version we used to develop the contract, constructor data etc


## Program Counter
 - program counter is basically a counter number of opcodes

## theres 2 ways of contract creation in ETHEREUM
 - An `EOA` create a contract, this way we won't see any `CREATE` opcode in the opcode return from contract creation
 - A `contract` create another contract using `create` inline assembly or `CREATE` opcode, this way we will see the `CREATE` opcode in the opcode returned from contract creation.


 ## 3 Main Part Where Data Stored on EVM (Stack based machine)
 - Stack - Stack is where all computational stuff happen (add, subtract value, read or write to memory or storage),  before being stored on the memory or storage, data is computes on the stack. 
    - Ex: adding 3 + 4, then `PUSH1` will place 1 byte of each value into the stack, and then `ADD` opcode will pull of those 2 values and perform a sum (a+b) then store in memory or storage.

    so in a nutshell all data computation will happen on the stack before storing onto memory or storage. the stack will be cleared out if we store data on memory or storage, otherwise the stack output will stayed on the stack.
  
    `storage` and `memory` is just like a giant array of data stored in bytes32 format, the only differences is data on memory is not persisted it will be deleted after function execution is completed. but the data on storage will be persisted even after function execution is completed

 - Memory - data stored on memory will be deleted after the transactions completed (function completed)
 - Storage (persisted) - data stored on storage will be persisted even after transactions completed


## Memory in solidity

  in  memory each items/elements are occupied 32 bytes on each slot

- `Free memory pointer (0x40)` - it's pointer that points to the free slot in memory, or basically points to the end of memory
- `0x00 & 0x20 slot` - is used for hashing in memory
- `0x60` - is used for initial value for dinamic array, and should be written to

/*  SLOT FOR HASHING     FREE MEMORY POINTER    SLOT FOR INITIAL VALUE FOR DINAMIC ARRAY
+--------+    +--------+    +--------+                +--------+
|        |    |        |    |        |                |        |
|  0x00  |    |  0x20  |    |  0x40  |                |  0x60  |
|        |    |        |    |        |                |        |
+--------+    +--------+    +--------+                +--------+
*/

  
0 + 32 = 32 byte  32 + 32 = 64 byte        64
32 bytes long     32 bytes long        32 bytes long
slot 0             slot 1                 slot 2

[0x00,             0x20,                  0x40]




### Understanding Opcodes
    By understanding opcodes we will be able to understand what is actually solidity is doing under the hood when we deployed our smart contract onto the blockchain. We literally can understand that by looking into the deployed contract bytecode and walk through the bytecode to understand what is actually solidity's doing when we deployed our contract onto the blockchain.

    Also by understanding opcodes we know why is it smart contract written using solidity much more expensive than smart contract that is written in `HUFF` language. smart contract written in `solidity` is way more expensive than written in `HUFF` lang, bcoz solidity add an extra checking by default when we deployed the contract to reduce more gas costs or for security reasons. And bcoz that of those extra checking, solidity using more `OPCODES` to perform those checking, therefore costs more gas.

    this is different with low-level lang (`YUl` or `HUFF`), where we have more control over our smart contract, we can choose whether or not to perform any extra checking, Therefore we have control over the gas that will be spent when we deployed the contract.


## Toolings
 - [decompile-bytecode](https://app.dedaub.com/) - decompiling solidity bytecode into solidity code