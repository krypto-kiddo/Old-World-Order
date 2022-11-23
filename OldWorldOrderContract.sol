// I finally posted the code here my friend.
// Things have been a rollercoaster but yea
// Hate it when people are dumb enough to not find my easter eggs, but i guess that's the point ;-;

// Code written by Krypto-Kiddo
// OWO token ERC1155 original smartcontract code
// Verified on Etherscan --> https://goerli.etherscan.io/address/0x850b090026b06e7b8b6c2d775c3a0f5509a90ea3

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

contract OldWorldOrder is ERC1155 {

    uint256 public constant OwO_Coin = 0;
    uint256 public constant OwO_NFT_1 = 1;
    uint256 public constant OwO_NFT_2 = 2;
    uint256 public constant OwO_NFT_3 = 3;
    uint256 public constant OwO_NFT_4 = 4;

    constructor() ERC1155("https://gateway.pinata.cloud/ipfs/QmfWmF6mZ4ZjmKw3NeeeHj5s3v76LSd5gv2iUBJBDcj3ZD/{id}.json"){
        _mint(msg.sender, OwO_Coin, 666666666, "");
        _mint(msg.sender, OwO_NFT_1, 3, "");
        _mint(msg.sender, OwO_NFT_2, 3, "");
        _mint(msg.sender, OwO_NFT_3, 3, "");
        _mint(msg.sender, OwO_NFT_4, 3, "");
    }

    function uri(uint256 _tokenid) override public view returns (string memory) {
        return string(
            abi.encodePacked(
                "https://gateway.pinata.cloud/ipfs/QmfWmF6mZ4ZjmKw3NeeeHj5s3v76LSd5gv2iUBJBDcj3ZD/",
                Strings.toString(_tokenid),".json"
            )
        );
    }
}
