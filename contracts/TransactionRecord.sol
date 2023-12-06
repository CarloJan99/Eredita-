// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TransactionRecord {
    mapping(uint256 => string) public transactionDetails;

    event TransactionRecorded(uint256 indexed transactionId, address indexed userAddress);

    function recordTransaction(uint256 transactionId, string memory details) external {
        transactionDetails[transactionId] = details;
        emit TransactionRecorded(transactionId, msg.sender);
    }
}
