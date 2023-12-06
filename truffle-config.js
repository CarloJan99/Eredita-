const HDWalletProvider = require('truffle-hdwallet-provider');

const mnemonic = 'your-mnemonic-phrase';

const infuraApiKey = 'your-infura-api-key'; 

module.exports = {

  networks: {
    development: {
      host: "127.0.0.1",    
      port: 7545,
      network_id: "*"
    },
  },

  compilers: {
    solc: {
      version: "0.8.0"
    }
  }

};