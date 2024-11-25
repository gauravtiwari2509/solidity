// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PayableDemo {
    // Event to log deposits
    event Deposited(address indexed sender, uint amount);
    
    // Event to log transfers
    event Transferred(address indexed recipient, uint amount);

    // A payable function to receive Ether and emit an event
    function deposit() external payable {
        require(msg.value > 0, "Must send some Ether");
        emit Deposited(msg.sender, msg.value);
    }

    // A function to get the contract's balance
    function getBalance() external view returns (uint) {
        return address(this).balance;
    }

    // A function to transfer Ether to a specified address
    function transferEther(address payable recipient, uint amount) external {
        require(address(this).balance >= amount, "Insufficient balance");
        recipient.transfer(amount);
        emit Transferred(recipient, amount);
    }

    // Fallback function to receive Ether
    fallback() external payable {
        emit Deposited(msg.sender, msg.value);
    }

    // Receive function to receive Ether
    receive() external payable {
        emit Deposited(msg.sender, msg.value);
    }
}