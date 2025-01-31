// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

interface IERC20Mintable {
    function mint(address to, uint256 amount) external;
}

contract ERC20Mintable{
    IERC20Mintable public token;

    function setToken(address _token) public {
        token = IERC20Mintable(_token);
    }
}

contract MyERC20Mintable is ERC20, IERC20Mintable {
    uint public INITIAL_SUPPLY = 2000000000 * 10 ** 18;
    constructor() ERC20("Web3 Online Judge Token", "WEB3OJT"){
        _mint(msg.sender, INITIAL_SUPPLY);
    }

    function mint(address to, uint256 amount) override public {
        _mint(to, amount);
    }
}
