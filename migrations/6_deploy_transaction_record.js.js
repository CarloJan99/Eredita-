const TransactionRecord = artifacts.require("TransactionRecord");

module.exports = function (deployer) {
  deployer.deploy(TransactionRecord);
};
