// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;
// syntax --> mapping(keytype => valuetype)
contract MappingPrac {
    //Mapping from address to uint
    mapping(address => uint256) public myMap;

    function get(address _addr) public view returns (uint256) {
        //maping always returns a value
        //if the value was never set, it will return the default value.
        return myMap[_addr];
    }

    function set(address _addr, uint256 _i) public {
        myMap[_addr] = _i;
    }

    function remove(address _addr) public {
        //reset the value to default
        delete myMap[_addr];
    }
}

contract NestedMapping {
    //nested mapping (mapping from address to another mapping)
    mapping(address => mapping(uint256 => bool)) public nested;

    function get(address _addr1, uint256 _i) public view returns (bool) {
        //you can get values from a nested mapping
        //even when it's not initialized
        return nested[_addr1][_i];
    }

    function set(
        address _addr1,
        uint256 _i,
        bool _bool
    ) public {
        nested[_addr1][_i] = _bool;
    }

    function remove(address _addr1, uint256 _i) public {
        delete nested[_addr1][_i];
    }
}

contract MappingPrac2{
    mapping(uint=>string) myString;
    function set(uint _num,string memory _name) public {
        myString[_num]=_name;
    }
    function get(uint _num) public view returns(string memory){
      
        return myString[_num];
    }
    function remove(uint _num) public{
        delete myString[_num];
    }
}
contract nestedMappingPrac2{
    mapping(uint=> mapping(string=>uint)) studentDetail;
    function set(uint _idx,string memory _studN,uint _regdNo ) public {
        studentDetail[_idx][_studN]=_regdNo;
    }

    function get(uint _idx,string memory _studN) public view returns(uint){
        return studentDetail[_idx][_studN];
    }
    }