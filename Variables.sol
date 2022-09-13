// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    //all codes for the contract goes here

    //state variable
    int256 public myInt = 1;
uint myUint  = 1;
uint256 public myUint256  = 1;
uint8 public myUint8  = 1;

//strings
string public myString  = "Hello, world";
//stores strings in a bytes format// treats it more like an array
bytes32 public myBytes32 = "Hello World";

//address
address public myAddress = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;

//struct
struct MyStruct {
    uint256 myUint256;
    string myString;
}

MyStruct public myStruct = MyStruct(1, "Hello Rex");


    //Local Variables are variables that exist inside a solidity function
    //it cant be called outside the function
    //pure is used when the functions modify the blockchain // fetch information
    function getValue() public pure returns(uint) {
        uint value = 1;
        return value;
    }

    
}
