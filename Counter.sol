// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

contract Counter {
    uint count;

    constructor(uint _count) {
        count = _count;
    }

    function increment() public {
        count += 1;
    }

    function decrement() public {
        count -= 1;
    }

    function getCount() public view returns (uint) {
        return count;
    }

}
