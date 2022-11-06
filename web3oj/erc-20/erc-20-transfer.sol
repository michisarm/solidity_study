// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ERC20Transfer{
    ERC20 public web3ojt;

    function setWeb3ojt(address _web3ojt) public {
        web3ojt = ERC20(_web3ojt);
    }
}


contract MyERC20Transfer is ERC20, Ownable {
    uint public INITIAL_SUPPLY = 2000000000 * 10 ** 18;

    constructor() ERC20("Web3 Online Judge Token", "WEB3OJT"){}

    function mint() public onlyOwner {
        _mint(msg.sender, INITIAL_SUPPLY);
    }

    function transferProblem(address to, uint256 _amount) public{
        transfer(to,_amount);
    }
}
