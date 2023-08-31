# UMFinTech_Project_Final_G2

## Description of Project

Develop the final project for the UM FinTech Boot Camp. Implementation of a NFT marketplace.

The goal was to create a smart contract to mint NFT contracts based on the Open Zeppelin contract ERC721. Another contract to implement a market place where you would be able to list, sell, buy or transfer NFT tokens with other registered users of these contracts. And an user interface to communicate and link the two solidity smart contracts together. 

## Technologies

* Python
* Streamlit
* Solidity
* OpenZeppelin Contracts
* Remix
* IPFS
* Finata Gateway
* Ganache
* Sepolia TestNet
* Etherscan website
* OpenSea website
* Python Libraries
    1. Pandas
    2. dotenv
    3. Web3
    4. Pathlib
    5. Os
    6. Requests
    7. JSON

## Products

We created the FtNftMarketplace and StringCheese solidity smart contracts and the rise_frontend python script to run as the front end of the smart contracts.

Using remix we were able to deploy the smart contracts on to the blockchain. We used Etherscan to validate the deployment of the contracts. obtainand the smart contracts we were able to mint and deploy nfts to the OpenSea NFT repository. With the FtNftMarketplace we were able to hold a list of NFTs for sale, to buy and to transfer.

## Short comings

We stumble into the obstacle of stablishing communications between the streamlit python script and the smart contracts once deploy on to the blockchain. We could send and retreive integers or small strings but we were not able to transmit complex data like a NFT contract information to the python script.



NFT diagram


Marketplace Diagram



image of Etherscan with NFT minting setter functions



image of Etherscan with NFT minting getter functions



image of Etherscan with NFTMarketplace setter functions



image of Etherscan with NFTMarketplace getter functions



Image of TestNet OpenSea







verified contract: StringCheese: 0xc3214a92A7a1FD081773c937951266Ea181d90f3
verified contract: NFTMarketplace: 0xE26BF8dAbce73eC962953446528f531622a37002



