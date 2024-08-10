// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract HorseStoreYul {

  uint256 numberOfHorses;

    function updateHorseNumber(uint256 newNumberOfHorses) external {
        assembly {
            sstore(numberOfHorses.slot, newNumberOfHorses)
        }
    }

    function readNumberOfHorses() external view returns (uint256) {
        assembly {
            let horses := sload(numberOfHorses.slot)
            let memptr := mload(0x40)
            mstore(memptr, horses)

            return(memptr, 0x20)
        }
    }


}