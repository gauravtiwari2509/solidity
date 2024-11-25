// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Event {
    event Log(address indexed sender, string message);
    event AnotherLog();

    function test() public {
        emit Log(msg.sender, "Hello world!");
        emit Log(msg.sender, "Hello evm!");
        emit AnotherLog();
    }
}
//An event in Solidity is a logging mechanism that records data on the blockchain, allowing external applications to listen for specific logs. They are used for tracking contract changes and interactions without consuming storage space on-chain.

/*
Event Declaration:
The event keyword is used to define an event. Events can take parameters, which are the data that you want to log when the event is triggered.
Emit:
The emit keyword is used to trigger (or "fire") the event. When you call emit, it writes the data to the blockchain log, making it available to external applications.
*/