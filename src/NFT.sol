// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;
import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract NFT is ERC721 {
    uint256 private s_tokenCounter = 0;
    mapping(uint256 => string) private s_tokenIdToUri;

    constructor(
        string memory name,
        string memory symbol
    ) ERC721(name, symbol) {}

    function mintNFT(string memory tokenUri) public {
        s_tokenIdToUri[++s_tokenCounter] = tokenUri;
        _safeMint(msg.sender, s_tokenCounter);
    }

    function tokenURI(
        uint256 tokenId
    ) public view override returns (string memory) {
        return s_tokenIdToUri[tokenId];
    }
}
