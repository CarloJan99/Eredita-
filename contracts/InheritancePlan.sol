// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./OnlyExecutor.sol";

contract InheritancePlan is OnlyExecutor {
    struct InheritanceDetails {
        uint256 key;
        uint256 value;
    }

    mapping(uint256 => mapping(uint256 => uint256)) public inheritancePlans;

    // Other contract code...

    function modifyInheritancePlan(uint256 planId, InheritanceDetails[] memory updatedDetails) external onlyExecutor returns (bool) {
        // Function implementation using an array of structs
        for (uint256 i = 0; i < updatedDetails.length; i++) {
            inheritancePlans[planId][updatedDetails[i].key] = updatedDetails[i].value;
        }

        // Return a boolean indicating the success of the operation
        return true;
    }

    // Other contract code...
}
