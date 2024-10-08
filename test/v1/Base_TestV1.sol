// SPDX-License-Identifier: GPL-3.0-only
pragma solidity 0.8.20;
import { IHorseStore } from "../../src/IHorseStore.sol";
import { HorseStore } from "../../src/horseStoreV1/HorseStore.sol";
import { Test, console } from "forge-std/Test.sol";

abstract contract Base_TestV1 is Test {

    IHorseStore horseStore;

    function setUp() public virtual {
        horseStore = IHorseStore(address(new HorseStore()));
    }

    function test_readNumberOfHorses() public {
        uint256 horses = horseStore.readNumberOfHorses();
        console.log(horses);
    }

    function test_setWriteValue() public {
        horseStore.updateHorseNumber(10);
        uint256 horses = horseStore.readNumberOfHorses();
        assertEq(horses, 10);
    }
}