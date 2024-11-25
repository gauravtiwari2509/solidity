// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract A{
    string public name="Contract A";
    function getName() public view returns(string memory){
        return name;
    }

}
//shadowing is disallowd in solidity 0.6
// this  will not compile
// contract B is A{
//     string public name="Contract B";
// }

contract C is A{
    //this is the correct way to override inherited state variables
    constructor() {
        name="Contract C";
    }
}