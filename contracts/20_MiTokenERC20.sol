// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MiTokenERC20 is ERC20 {
    constructor() ERC20("Ballenita Fan Token", "BFT"){
        _mint(msg.sender, 10000000 ** 10 ** decimals());
    }
}