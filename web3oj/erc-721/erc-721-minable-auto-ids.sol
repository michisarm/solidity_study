// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

interface IERC721Mintable2 {
    function mint(address to) external;
}

contract ERC721Mintable2{
    IERC721Mintable2 public token;

    function setToken(address _token) public {
        token = IERC721Mintable2(_token);
    }
}

contract MyERC721Init is ERC721, IERC721Mintable2 {
    
    constructor() ERC721("Web3 Online Judge NFT", "WEB3OJNFT"){
        _mint(0x4e22B2b398a3361c8d316B96c7f18628163E795e,0);
    }

    function _baseURI() internal view virtual override returns (string memory) {
        return "https://app.web3oj.com/web3ojnft/";
    }

    function setWeb3ojNFT(address _owner, address _web3ojNFT, bool _approved) public {
        // setApprovalForAll(_web3ojNFT, _approved);
        _setApprovalForAll(_owner, _web3ojNFT, _approved);
    }

    function mint(address to) public {
        
    }
}
