// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ERC20TransferFrom is ERC20{
    constructor() ERC20("Web3 Online Judge Token", "WEB3OJT") {
        _mint(msg.sender, 2000000000 * 10 ** decimals());
    }
}

0x82e6f2230021f011fc02e4afc6d3dc8d614c86ea