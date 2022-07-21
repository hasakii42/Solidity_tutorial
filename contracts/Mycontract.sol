// SPDX-License-Identifier: MIT
pragma solidity^0.8.0;

contract MyContract{
 // State Variables >> Stored in Blockchain forever and can be updated
 // Scope is entire smart contract
  uint public myUnit = 1;
  uint256 public myUnit256  = 1; 
  uint8 public myUnit8 = 1;
  int256 public myInt = 1; //can be nagetive value

  //Strings 
   string public myString ="Hello , World!";
   bytes32 public myBytes32 = "Hello, World!";
   
   // store address ; Address>> username in blockchain , to connect metamask or wallet
  // address public myAddress =  0xC50d2d25451fd54f1e61616 ;
   
 //Struct
   struct MyStruct{
       uint256 myUint256;
       string myString;
   }

 MyStruct public myStruct = MyStruct(1,"Hello, world!");

 //Local Variables
 function getValue() public pure returns(uint){ // pure >> doesnt modify blockchain or mutate just returns
     uint value = 1;
     return value;
 }


 }