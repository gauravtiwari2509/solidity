// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract GlobalVar{
    address public owner;
    address public Myblockhash;
    uint public number;
    uint public gasLimit;
    uint public difficulty;
    uint public value;
    uint public timestamp;
    address public origin;
    uint public gasprice;
    bytes public callData;
    bytes4 public Firstfour;

    constructor(){
        owner=msg.sender;
        Myblockhash=block.coinbase;
        //difficulty=block.difficulty;
        gasLimit=block.gaslimit;
        timestamp=block.timestamp;
        gasprice=tx.gasprice;
        origin=tx.origin;
        callData=msg.data;
        Firstfour=msg.sig;
        number=block.number;
       // value=msg.value; 
        // nowOn=now;
    }
}