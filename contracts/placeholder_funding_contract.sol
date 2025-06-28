// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title NexaCofyFund
/// @notice Placeholder contract to represent Nexara-aligned microfunding
contract NexaCofyFund {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    /// @notice Receive ETH for symbolic student support
    receive() external payable {}

    /// @notice Withdraw balance to the deployer's address
    function withdraw() public {
        require(msg.sender == owner, "Only owner can withdraw");
        payable(owner).transfer(address(this).balance);
    }
}
