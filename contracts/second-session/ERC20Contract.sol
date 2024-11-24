// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.7.0 <0.9.0;

import "@openzeppelin/contracts@5.0.0/token/ERC20/ERC20.sol";

contract PawrollToken is ERC20 {
    constructor() ERC20("Pawroll", "PAW") {
        _mint(msg.sender, 1000 * 10 ** decimals());
    }
}
