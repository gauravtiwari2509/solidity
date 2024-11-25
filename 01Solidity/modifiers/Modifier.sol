// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
//function modifier
//-- modifier are code that can be run before and after the function call
//-- generally use for 3 reason
//restrict access, validate inputs, gaurd against reentrancy hack

contract ModifierFunction{
    address public owner;
    uint256 public x =10;
    bool public locked;
    constructor() {
        owner=msg.sender;
    }
    modifier onlyOwner(){
        require(msg.sender==owner,"Not owner");
        _;
    }
    modifier validateData(address _addr){
        require(_addr !=address(0),"not valid address");
        _;
    }
    function changeOwner(address _newOwner) public onlyOwner validateData(_newOwner){
        owner=_newOwner;
    }

    modifier noReentrancy(){
        require(!locked,"no reentrancy ");
        locked=true;
        _; //if above condition true then execute after this
        locked=false;
    }
    function decrement(uint256 i) public noReentrancy{
        x-=i;
        if(i>1){
            decrement(i-1);
        }
    }
}