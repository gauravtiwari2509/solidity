// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract EventTicker {
    uint256  numberofTicket;
    uint256  ticketPrice;
    uint256  totalAmount;
    uint256  startAt;
    uint256  endAt;
    uint256  timeRange;
    string  message="buy your first event ticket";
    uint256 totalTicketAvl=10;
    constructor(uint256 _ticketPrice){
        ticketPrice=_ticketPrice;
        startAt=block.timestamp;
        endAt=block.timestamp+ 7 days;
        timeRange=(endAt-startAt) / 60 / 60 /24;
    }

    function buyTicket(uint256 _numTicket) public{
        require(totalTicketAvl > 0, "No tickets available");
        numberofTicket+=_numTicket;
        totalAmount+=_numTicket*ticketPrice;
        totalTicketAvl-=_numTicket;
    }
    function getAmmount() public view returns(uint256){
        return(numberofTicket * ticketPrice);
    }
    function ticketAvailable() view public returns(uint256){
        return totalTicketAvl;
    }
}