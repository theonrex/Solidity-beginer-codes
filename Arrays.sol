// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyArray {
    //all codes here
    //Arrays
    uint[] public uintArray = [1,2,3];
    string[] public stringArray = ["rex", "inioluwa"];
    string[] public value;

    //Two dimentional arrays
    uint256[] [] public array2D = [[1, 2, 3], [4, 5, 6]];
    //manipulate arrays
    function addValue(string memory _value) public {
        value.push(_value);
    }

//get length of an array
  function stringLength() public view returns(uint) {
    return stringArray.length;
}
}
