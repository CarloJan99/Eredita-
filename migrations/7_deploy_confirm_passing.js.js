const ConfirmPassing = artifacts.require("ConfirmPassing");

module.exports = function (deployer) {
  deployer.deploy(ConfirmPassing);
};
