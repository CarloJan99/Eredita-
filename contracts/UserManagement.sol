// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UserManagement {
    mapping(address => bool) private users;

    event UserRegistered(address indexed user);

    function registerUser() external {
        users[msg.sender] = true;
        emit UserRegistered(msg.sender);
    }

    function authenticateUser() external view returns (bool) {
        return users[msg.sender];
    }
}
