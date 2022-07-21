//SPDX-License-Identifier : MIT

pragma solidity^0.8.0;

//Arrays
contract MyContract{
    uint[] public uintArray = [1, 2, 3];
    string[] public stringArray = ["apple","banana","carrot"];
    string[] public values;
    uint256[][] public array2D = [[1, 2, 3], [ 4, 5, 6]];

    function addValue(string memory _value) public{
        values.push(_value); //push >> adds new word end of the array
    }

    function valueCount() public view returns(uint){
        return values.length; // returns the length of the array
    }
}