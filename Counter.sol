// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Counter{
    // all code goes here
    uint count; //means the count value cant be negative // also means it cant be a string or array but only unit
//constructoris a function of sm that get to run once
constructor() public {
    count = 0;
}

//public modifier means it can be called within and outside the contract
//view function 
//This is a read function meaning it just reads and get info from the blockchain // free
    function getCount()  public view returns(uint) { 
        return count;
    }
    //write function is a function that changes the state of the blockchain // cost gas
    function increment() public{
        count = count + 1;
    }
}
