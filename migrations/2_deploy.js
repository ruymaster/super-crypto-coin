const SCCToken = artifacts.require('SCCToken');

// require('@openzeppelin/test-helpers/configure')({ provider: web3.currentProvider, environment: 'truffle' });

// const { singletons } = require('@openzeppelin/test-helpers');

module.exports = async function (deployer, network, accounts) {
  
  await deployer.deploy(SCCToken);
  const token = await SCCToken.deployed();
  
};
