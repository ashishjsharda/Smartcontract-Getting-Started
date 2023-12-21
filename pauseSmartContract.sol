//SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract SendMoneyContract{
    uint public balanceReceived;
    address  owner;
    bool public paused; // boolean to store pause status

    // constructor function to set the owner
    constructor()  {
        owner = msg.sender;
    }

    // payable function to receive funds
    function receiveMoneyContract() public payable {
        balanceReceived += msg.value;
    }


    // function to pause the contract
    function pausedContract(bool _paused) public {
        require(msg.sender ==owner, "you're not the owner");
        paused = _paused;
    }


    // function to withdraw money if contract is not paused
    function withdrawMoney(address payable beneficiary)  public {
        require(msg.sender==owner, "you're not the owner");
        require(!paused, "Contract is paused");

        beneficiary.transfer(address(this).balance);
    }

}



