// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

 contract Counter { 
   //Code goes here.... 
   // commented codes are alternatives 
   
   //uncommented code are refinatory
     
    //unit count; 

    //constructor() public {
      //  count = 0;
  //  }

   // function getCount() public view returns(uint) {
    // return count;
  //  }
     uint public count = 0; 

    function increCount() public {
        count++; 
        // count = count +1;
    }
}