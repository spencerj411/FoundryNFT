// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;
import {Script} from "forge-std/Script.sol";
import {NFT} from "src/NFT.sol";

contract DeployNFT is Script {
    string private constant NFT_NAME = "DOGGIE";
    string private constant NFT_TICKER = "DOG";

    function run() external returns (NFT) {
        vm.startBroadcast();
        NFT nft = new NFT(NFT_NAME, NFT_TICKER);
        vm.stopBroadcast();
        return nft;
    }
}
