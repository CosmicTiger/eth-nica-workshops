// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract PublicCounter {
    int public counter = 0;
    address owner;

    constructor() {
        owner = msg.sender;
    }

    function increment() public {
        counter++;
    }

    function resetCount() public {
        require(msg.sender == owner, "Only owner can reset of the owner");
        counter = 0;
    }
}
