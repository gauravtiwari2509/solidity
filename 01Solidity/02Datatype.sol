// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DataTypesExample {
    bool public isApproved = false; //Boolean
    uint256 public count = 100; //Unsigned Integer (256 bit)
    int256 public balance = -500; //Signed Integer (int is alias to int256)
    address public owner = 0x1234567890123456789012345678901234567890; // Address
    //fixed public price = 123.456; //Fixed Point Type (not supported by current solidity version)
    bytes32 public hash = 0x1234567890123456789012345678901234567890123456789012345678901234; // Byte32
    bytes public data = hex"001122FF"; //Dynamic Byte Array
    string public name = "Alice"; //String
    uint256[5] public numbers = [1, 2, 3, 4, 5]; //Fixed-size Array
    uint256[] public dynamicArray; //Dynamic Array
    mapping(address => uint256) public balances; //Mapping
    enum State { Pending, Active, Inactive } //Enum
    State public state = State.Pending;
    //Function to add elements to dynamicArray
    function addToDynamicArray(uint256 _value) public {
        dynamicArray.push(_value);
    }
    //use constant to those variable which is not going to change because it saves the gas 
    address constant MY_ACC_NO=0xf5568aF61B089440008183EF92a3296C075A8c15;
}