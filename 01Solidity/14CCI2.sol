// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface Istorage{
    function add() external;
    function getNum() external view returns(uint);
}
// cross contract Innovacation
contract CCI2{
    // address storageContractAddress;
    // constructor(address _storageContractAddress){
    //     storageContractAddress=_storageContractAddress;
    // }

    // function proxyAdd() public{
    //     Istorage(storageContractAddress).add();
    // }
    // function proxyGetNum() public view returns(uint){
    //    return Istorage(storageContractAddress).getNum();
    // }
    function proxyAdd() public{
        Istorage(0x267B3685795fde5692319605A4aDE4ADbF7c72f0).add();
    }
    function proxyGetNum() public view returns(uint){
        uint value= Istorage(0x267B3685795fde5692319605A4aDE4ADbF7c72f0).getNum();
        return value;
    }
}
