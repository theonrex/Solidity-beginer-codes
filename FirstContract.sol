// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

    contract HotelRoom {
     //Ethers Payment
     //Modifiers
     //Visibility
     // events
     // Enums

        //enum is a collection of options thats never going to change
        //enum keeps track of status or states
        //check if Vacant or Occupied
        enum Statuses {
            Vacant,
             Occupied}

        //currentStatus is going to use {Statuses} to check what the current status is
        Statuses public currentStatus;

        //events in solidity
        event Occupy(address _occupant, uint _value);

        //address of the owner which is able to reveive payment // 
        //payable let's the address receive payment 
        address payable public owner;

        //To make the address of the owner dynamic
        constructor() {
            //owner calling the msg.sender function
            owner = payable(msg.sender);
            //set the state of the status
            currentStatus = Statuses.Vacant;
        }

        //modifire is used to make the function cleaner and reuseable
        modifier onlyWhileVacant {
       //check status [make sure one can't book once it's occupied}
         //{require} is when used inside a function checks the status of the function
         //if currentstatus is == vacant, run the function below else dispaly {currently occupied}
         require( currentStatus == Statuses.Vacant,"currently occupied" );
         _;
        }

        modifier costs(uint _amount) {
               //check price
         //if eth is greater than 2 eth, continue runing, else display {Not enought eth provided}
         require(msg.value >= _amount, "Not enough ether provided" );
         _;
        }
        

        
        //function to pay the owner 
        function book() public payable onlyWhileVacant costs(2 ether){
         //when book function is called, we want to occupy the hotel room
         currentStatus = Statuses.Occupied;
            //Transfer function sends crypto to the receiptent {owner}
         owner.transfer(msg.value);

        //{call function} also used to send eth or message to a recipiant
        //if bool = ture , run 
        (bool sent, bytes memory data) = owner.call{value: msg.value}("");
        require(true);

        //events in solidity
        emit Occupy(msg.sender, msg.value);
     }
    }
