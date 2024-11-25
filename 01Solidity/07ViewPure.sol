// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract ViewPurePrac {
    /*"view" function signifies that the function does not modify the state of the contract and only reads data from it. Whereas, 
    "pure" functions are those that neither read nor modify the state, operating only on their inputs and returning a value.*/
    
    uint64  public x=8;
    uint64 public y=2;

    function sum() public view returns(uint64 result){
       result=x+y;
    }
 
    function subtract(int s1,int s2) public pure returns(int result){
        result=s1-s2;
    }
    function update() public{
        x++;
        y++;
    }
    function seeValue() public view returns(uint64,uint64){
        return(x,y);
    }
    //fixed public z =7/2;
}