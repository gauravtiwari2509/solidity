// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RequireExample {

function voteParty(uint _age) public pure returns(string memory){
    require(_age>=18,"not eligible to vote (below 18)");
    return ("vote successfull");
}
function checkInput(int _num) public pure returns(string memory){
    require(_num>=0,"invalid uint8");
    require(_num < 256,"invalid uint8");
    return "valid uint8";
}
}
