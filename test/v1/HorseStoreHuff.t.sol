// SPDX-License-Identifier: GPL-3.0-only
pragma solidity 0.8.20;

import { Base_TestV1, HorseStore } from "./Base_TestV1.sol";
import {  Test, console } from "forge-std/Test.sol";
import { HuffDeployer } from "foundry-huff/HuffDeployer.sol";

contract HorseStoreHuff is Base_TestV1 {

    string public constant HORSE_STORE_HUFF_LOCATION = "horseStoreV1/HorseStore"; // file location for huff contract

    function setUp() public override {
        // deploying huff contract
        horseStore = HorseStore(HuffDeployer.config().deploy(HORSE_STORE_HUFF_LOCATION));
    }
}