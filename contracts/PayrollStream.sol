//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract PayrollStream{
   
    struct Stream{
        address employer;
        address employee;
        uint256 startTime;
        uint256 endTime;
        uint256 amount;
    }

    mapping(uint256 => Stream) public streams;
    uint256 public streamCount;

    function createStream(address employee, uint256 startTime, uint256 endTime, uint256 amount) external {
        streams[streamCount] = Stream(msg.sender, employee, startTime, endTime, amount);
        streamCount++;
    }
}