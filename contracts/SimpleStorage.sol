// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*
 * SimpleStorage
 * Network: Base (EVM compatible)
 * Purpose: Minimal example contract
 */

contract SimpleStorage {
    uint256 private value;

    event ValueUpdated(uint256 newValue);

    function set(uint256 _value) external {
        value = _value;
        emit ValueUpdated(_value);
    }

    function get() external view returns (uint256) {
        return value;
    }
}
