## Huff Lang
 - `MAIN` macro is an entry point, any call to any function on huff contract will call `MAIN` macro 
 - `function` in huff uses for defining interfaces
    - for function that modifies state it must specified keyword `payable` or `nonpayable`
    - for view function or reading from the state don't need to uses keyword `payable` or `nonpayable`
  
 - `macro` in huff uses for defining the actual function
    - `takes(0)` - means it will take 0 item from the stack
    - `returns(0)` - means will return 0 item onto the stack
    - `param` - to load param into macro in huff uses this syntax `<param>`
 - `[]` - uses for referring value
 - `#include` - uses for importing another huff macros
 - `#define` - uses for defining anything, interfaces, macro, even variable