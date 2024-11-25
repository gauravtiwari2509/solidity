// Example using memory, storage, and calldata

contract Example {
    uint256[] public arr;  // This is stored in storage.

    // Function that returns an array in memory
    function getArr() public view returns (uint256[] memory) {
        return arr;  // 'arr' is a state variable, and the function returns it as a memory array.
    }

    // Function that takes an array as calldata (read-only)
    function processCalldata(uint256[] calldata inputArr) external pure returns (uint256) {
        return inputArr[0];  // Accessing a calldata array.
    }

    // Function that modifies the array stored in storage
    function setArr(uint256[] memory newArr) public {
        arr = newArr;  // Modifying the storage array.
    }
}
