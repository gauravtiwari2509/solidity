// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Money {
    uint256 public totalMoney;

    function depost() public payable {
        totalMoney += msg.value;
    }

    function withdraw(address payable ad) public {
        require(totalMoney > 0, "no money available");
        payable(ad).transfer(totalMoney);
        totalMoney = 0;
    }
}

//a contract practice
contract MoneyPrac {
    address owner;
    address recipient;
    uint256 public totalMoney;
    uint256 public startTime;
    uint256 constant tenYears = 10 * 365 * 24 * 60 * 60;
    uint256 constant oneMinute=1*60;
    constructor(address _recipient) {
        owner = msg.sender;
        recipient = _recipient;
        startTime = block.timestamp;
    }

    modifier OnlyOwner() {
        require(msg.sender == owner, "you are not the owner");
        _;
    }
    modifier OnlyRecipient() {
        require(msg.sender == recipient, "you are not the recipient");
        _;
    }
    modifier isDead() {
        require(
            startTime + tenYears < block.timestamp,
            "10 years haven't passed till now"
        );
        _;
    }
    modifier OnlyOwnerOrRecipient() {
        require(
            msg.sender == owner || msg.sender == recipient,
            "Caller is not the owner or the recipient"
        );
        _;
    }

    function deposit() public payable {
        require(msg.value>0,"can't depist 0eth try to increase your amount");
        totalMoney += msg.value;
    }

    function changeRecipient(address _recipient) public OnlyOwner {
        recipient = _recipient;
    }

    function ping() public OnlyOwner {
        startTime = block.timestamp;
    }

    function withdraw(address payable _withdrawAccountAddress) public payable OnlyOwnerOrRecipient isDead{
        require(totalMoney>0,"no money left");
        payable(_withdrawAccountAddress).transfer(totalMoney);
    }
    function withdrawPartial(address payable _withdrawAccountAddress) public payable OnlyOwnerOrRecipient {
        require(startTime+oneMinute < block.timestamp,"one minute not completed");
        require(totalMoney>0,"no money left");
        payable(_withdrawAccountAddress).transfer(totalMoney);
        //instead of total amount i can do :-->  address(this).balance
    }
}
