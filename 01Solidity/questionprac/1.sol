// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Wallet {
    address public owner;

    // Constructor to set the owner of the contract
    constructor() {
        owner = msg.sender;
    }

    // Deposit function to accept Ether
    function deposit() public payable {
        // Ether sent with this transaction is automatically added to the contract's balance
        require(msg.value > 0);
    }

    // Withdraw all funds, only by the owner
    function withdrawAll() public {
        require(msg.sender == owner);
        payable(owner).transfer(address(this).balance);
    }

    // Get the contract's balance
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}
