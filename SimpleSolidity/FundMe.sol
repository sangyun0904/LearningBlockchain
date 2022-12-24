// Get fund from users
// Withdraw funds
// Set a minimum funding value in USD

// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.8;

contract FundME {

    function fund() public payable {
        // Want to be able to set a minimum fund amount in USD
        // 1. How do we send ETH to this contract?
        require(msg.value > 1e18, "Didn't send enough!"); 
        // 1e18 = 1 * 10 ** 18 == 1000000000000000000 wei == 1 eth at least
        // if not revert with error message "Didn't send enough!"

        // What is reverting? 
        // undo any action before, and send remaining gas back
    }

    // function withdraw() {}
}