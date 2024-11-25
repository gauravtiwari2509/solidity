// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Storage{
    uint public num;
    constructor(uint _num){
        num=_num;
    }
    function getNum() public view returns(uint){
        return num;
    }
    function add() public {
        num +=1;
    }

}
//0x267B3685795fde5692319605A4aDE4ADbF7c72f0