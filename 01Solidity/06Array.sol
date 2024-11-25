// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ArrayExample {
    uint256[] public dynamicArray; // Dynamic Array
    uint256[5] public fixedSizeArray; // Fixed-size Array

    constructor() {
        // Initialize fixed-size array
        fixedSizeArray = [1, 2, 3, 4, 5];
    }

    // Function to add elements to dynamicArray
    function addToDynamicArray(uint256 _value) public {
        dynamicArray.push(_value);
    }

    // Function to get the length of dynamicArray
    function getDynamicArrayLength() public view returns (uint256) {
        return dynamicArray.length;
    }

    // Function to update an element in fixedSizeArray
    function updateFixedSizeArray(uint256 _index, uint256 _value) public {
        require(_index < fixedSizeArray.length, "Index out of bounds");
        fixedSizeArray[_index] = _value;
    }

    // Function to get an element from fixedSizeArray
    function getFixedSizeArrayElement(uint256 _index)
        public
        view
        returns (uint256)
    {
        require(_index < fixedSizeArray.length, "Index out of bounds");
        return fixedSizeArray[_index];
    }

    // Function to sum all elements of dynamicArray
    function sumDynamicArray() public view returns (uint256) {
        uint256 sum = 0;
        for (uint256 i = 0; i < dynamicArray.length; i++) {
            sum += dynamicArray[i];
        }
        return sum;
    }
}

contract arrPrac {
    //solidity can return the entire array
    //but this function should be vided for arrays that can grow indefinitely in length
    uint256[] public arr = [1, 2, 3, 4, 5];

    function getArr() public view returns (uint256[] memory) {
        return arr;
    }

    uint256[] dynamicArr;

    function push(uint256 i) public {
        dynamicArr.push(i);
    }

    function pop() public {
        dynamicArr.pop();
    }

    function getDyArr() public view returns (uint256[] memory) {
        return dynamicArr;
    }

    function getLength() public view returns (uint256) {
        return dynamicArr.length;
    }

    function removeElement(uint256 idx) public {
        // When we use delete on an element of a dynamic array, the element is reset to its default value, but the array size does not change.
        delete dynamicArr[idx];
    }

    // function examples() external pure{
    //     uint[] memory a=new uint[](5);
    // }

    function push100() public {
        for (uint256 i = 0; i <= 100; i++) {
            dynamicArr.push(i);
        }
    }

    function pop_numEle(uint256 _num) public {
        for (uint256 i = 1; i <= _num; i++) {
            // require(dynamicArr.length>0,"no element to remove");
            // assert(dynamicArr.length>0);
            if (arr.length < 1) revert("removing goes beyond length");
            dynamicArr.pop();
        }
    }
}
