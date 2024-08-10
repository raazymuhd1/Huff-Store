// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import { IHorseStore } from "../../src/IHorseStore.sol";
import { HorseStoreYul } from "../../src/horseStoreV1/HorseStoreYul.sol";
import { Test, console } from "forge-std/Test.sol";
import { Base_TestV1 } from "./Base_TestV1.sol";

contract HorseStoreYulTest is Base_TestV1 {

    function setUp() public override {
        horseStore = IHorseStore(address(new HorseStoreYul()));
    }
}