var ElectionOne = artifacts.require("./ElectionOne.sol");

module.exports = function(deployer) {
  deployer.deploy(ElectionOne);
};
