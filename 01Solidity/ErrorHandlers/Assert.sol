// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract AssertStatement{
    bool result;
    function resetResult() public{
        result=false;
    }
    function checkoverFlow(uint256 _num1,uint256 _num2) public{
        uint256 sum = _num1 + _num2;
        assert(sum <= 255); //only condition no message
        result = true;
    }
    
    function getResult() view public returns(string memory){
        if (result==true) {
            return "no overflow";
        }
        else{
            return "overflow";
        }
    }
    
}

