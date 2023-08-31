require("@nomicfoundation/hardhat-toolbox");
require("dotenv").config();


/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: {
    version: "0.8.11",
    settings: {
      optimizer: {
        enabled: true,
        runs: 200
      }
    }
  },
  networks: {
    hardhat: { },
    goerli: {
      url: process.env.GOERLI_RPC_URL,
      accounts: [ process.env.ACCOUNT_PRIVATE_KEY, ],
    },
    sepolia: {
      url: process.env.SEPOLIA_RPC_URL,
      accounts: [ process.env.ACCOUNT_PRIVATE_KEY, ],
    },
    mumbai: {
      url: process.env.MUMBAI_TESTNET_RPC,
      accounts: [ process.env.ACCOUNT_PRIVATE_KEY, ],
    }
  },
  etherscan: {
    apiKey: {
      polygonMumbai: process.env.POLYGONSCAN_API_KEY,
      goerli: process.env.ETHERSCAN_WEB3_API_KEY,
      sepolia: process.env.ETHERSCAN_WEB3_API_KEY
    }
  }
};
