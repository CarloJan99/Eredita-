// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./OnlyExecutor.sol";

contract IdentityVerification is OnlyExecutor {
    mapping(address => bool) private verifiedUsers;

    event UserVerified(address indexed user);

    modifier onlyVerifiedUser(address userAddress) {
        require(verifiedUsers[userAddress], "User not verified");
        _;
    }

    function verifyIdentity(address userAddress) external onlyExecutor {
        verifiedUsers[userAddress] = true;
        emit UserVerified(userAddress);
    }
}
