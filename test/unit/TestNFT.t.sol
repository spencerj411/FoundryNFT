// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;
import {Test} from "forge-std/Test.sol";
import {NFT} from "src/NFT.sol";
import {DeployNFT} from "script/DeployNFT.s.sol";

contract TestNFT is Test {
    NFT private nft;

    function setUp() external {
        nft = (new DeployNFT()).run();
    }
}
