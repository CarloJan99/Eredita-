const OnlyExecutor = artifacts.require("OnlyExecutor");

module.exports = function (deployer) {
  deployer.deploy(OnlyExecutor);
};
