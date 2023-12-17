//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract MoneytoContractExample{
    address public owner;
    uint balance;

    constructor(uint _balance)  {
        owner = msg.sender;
        balance = _balance;
    }
}

