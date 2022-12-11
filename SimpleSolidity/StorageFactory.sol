// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

contract StroageFactory {
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContact() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        // Address
        // ABI - Application Binary Interface
        // simpleStorageArray[_simpleStorageIndex].store(_simpleStorageNumber);
        SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
        simpleStorage.store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
        // simpleStorageArray[_simpleStorageIndex].retrieve();
        SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
        return simpleStorage.retrieve();
    }

}