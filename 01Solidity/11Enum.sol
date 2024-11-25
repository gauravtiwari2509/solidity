// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
//imported enum from different file it's easy to maintain when we have a big project
// import "./EnumDecl.sol";
contract EnumPrac {
    enum Status {
        pending,
        accepted,
        shipped,
        delivered,
        rejected,
        cancelled
    }
    Status public status;

    function get() public view returns (Status) {
        return status;
    }

    function set(Status _status) public {
        status = _status;
    }
    function cancel() public {
        status =Status.cancelled;
    }
    function reset() public{
        delete status;
    }
}