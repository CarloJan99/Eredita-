// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./OnlyExecutor.sol";

contract ConfirmPassing is OnlyExecutor {
    event ParticipantConfirmed();

    function confirmParticipant() external onlyExecutor {
        isParticipantConfirmed = true;
        emit ParticipantConfirmed();
    }
}
