// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.20;

import { HorseStore } from "../../src/horseStoreV1/HorseStore.sol";
import { Test, console } from "forge-std";

abstract Base_TestV1 is Test {

    HorseStore horseStore;

    function setUp() public {
        horseStore = new HorseStore();
    }

    function test_readNumberOfHorses() public {
        uint256 horses = horseStore.readNumberOfHorses();
        console.log(horses);
    }
}