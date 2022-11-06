// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ERC721Init{
    ERC721 public web3ojNFT;

    function setWeb3ojNFT(address _web3ojNFT) public {
        web3ojNFT = ERC721(_web3ojNFT);
    }
}

contract MyERC721Init is ERC721, Ownable {
    
    // Base URI
    string private _baseURIextended;

    constructor() ERC721("Web3 Online Judge NFT", "WEB3OJNFT"){
        _mint(0x4e22B2b398a3361c8d316B96c7f18628163E795e,0);
    }

    // function mint(address to, uint256 tokenId) public {
    //     _mint(to,tokenId);
    // }

    function _baseURI() internal view virtual override returns (string memory) {
        return "https://app.web3oj.com/web3ojnft/";
    }

    function setWeb3ojNFT(address _owner, address _web3ojNFT, bool _approved) public {
        // setApprovalForAll(_web3ojNFT, _approved);
        _setApprovalForAll(_owner, _web3ojNFT, _approved);
    }
}
