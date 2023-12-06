// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract OnlyExecutor {
    address public executor;
    bool public isParticipantConfirmed;

    event ExecutorSet(address indexed newExecutor);

    modifier onlyExecutor() {
        require(msg.sender == executor, "Not the executor");
        _;
    }

    modifier onlyAfterDeathConfirmation() {
        require(isParticipantConfirmed, "Participant not confirmed");
        _;
    }

    function setExecutor(address newExecutor) external {
        require(executor == address(0), "Executor already set");
        executor = newExecutor;
        emit ExecutorSet(newExecutor);
    }
}
