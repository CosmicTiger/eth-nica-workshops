// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract SimpleStorage {
    uint storedData;

    function setNumber(uint x) public {
        if (x > 10){
            storedData = x;
        }
    }

    function retrieveNumber() public view returns (uint) {
        return storedData;
    }
}