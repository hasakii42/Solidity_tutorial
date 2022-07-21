//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
//Ether payments
//Modifiers
//Visibility
//Events
//Enum >> Data Stucture in Solidity collections of option which never gonna change
//Smart contract for hotel room transactions and booking
contract HotelRoom{
    //Vacant
    //Coccupied
    enum Statuses {
         Vacant, 
         Occupied 
         }

    Statuses public currentStatus;
    
    event Occupy (address _occupant, uint _value);

    address payable public owner;
  
    constructor(){
       owner = payable (msg.sender);
       currentStatus = Statuses.Vacant;
    }

    modifier onlyWhileVacant{
      //Check Status
      require(currentStatus == Statuses.Vacant, "Currently occupied.");
       _;
     }

    modifier costs(uint _amount) {
   //Check Price
        require(msg.value >= _amount,"Not enough ether provided");
        _;
    }

    function book() public payable onlyWhileVacant costs(2 ether){
      
        //require function is solidity function to checks the statement and returns T or F
         currentStatus = Statuses.Occupied;

        //msg.value global varaible store value of ether/crypto 
        // owner.transfer(msg.value);  alternative to ehter payment
         (bool sent, bytes memory data) = owner.call{value: msg.value}("");
         require(true);

         emit Occupy(msg.sender, msg.value);
    }
}