// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract WillContract {
    address owner;
    address[] willTo;
    uint256 time;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "owner can only deploy this contract");
        _;
    }

    function deposit () public payable {}

    function addReciepent(address _willTo) public onlyOwner {
        willTo.push(_willTo);

    }

    function iamAlive() public onlyOwner {
        time = block.timestamp;
    }

    function pullMoney() public {
        require(block.timestamp > 10, "He is alive yet");

        payable (willTo[0]).transfer(address(this).balance);
    }

    function lastAlive() public view returns (uint256){
        return time;
    }
}
