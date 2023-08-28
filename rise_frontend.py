import streamlit as st
from web3 import Web3
from ipfshttpclient import Client
import requests
import json

# Connect to an Ethereum node
w3 = Web3(Web3.HTTPProvider('https://mainnet.infura.io/v3/313367f15ce5484eb9d7db3f45cdc687'))

# Addresses of the deployed contracts
nft_market_address = '0xc980839A5F3003760cD4BD55d22f0b63a652Eac9'
nft_token_address = '0xA5161992959f9BbD3a815C34f06789DBF9b9fE95'
nft_market_events ='0x49df71ab6f38d7F5CF3Ae5E7537c17A62d15E42A'

# Load contract ABIs
with open('NFTMarketABI.json') as f:
    nft_market_abi = json.load(f)
with open('StringCheeseABI.json') as f:
    nft_token_abi = json.load(f)
with open('NFTMarketEvents.json') as f:
    nft_events_abi = json.load(f)

# Create contract instances
nft_market_contract = w3.eth.contract(address=nft_market_address, abi=nft_market_abi)
nft_token_contract = w3.eth.contract(address=nft_token_address, abi=nft_token_abi)


# Initialize IPFS client
ipfs_client = Client('azure-innocent-iguana-297.mypinata.cloud')  # Change to your IPFS node address


# Replace the IPFS URL with the actual IPFS hash
pinata_metadata_hash = 'QmZqKGQEQFuc1wERQrbUVoxVggsHFVLhW8UrCPnFmoDTYE'

# Fetch NFT metadata using IPFS client
response = ipfs_client.cat(pinata_metadata_hash)
nfts = json.loads(response)

st.title('R.I.S.E Marketplace')

# Display available NFTs
def display_nfts(nfts):
    for nft in nfts:
        st.write(f'NFT: {nft["name"]}, Price: {nft["price"]}')
        
        buy_button = st.button(f'Buy {nft["name"]}')
        list_button = st.button(f'List {nft["name"]}')
        coming_soon_button = st.button(f'Coming Soon {nft["name"]}')
        create_nft_button = st.button(f'Create NFT {nft["name"]}')
        
        if buy_button:
            buy_nft(nft["tokenId"], nft["price"])
        
        if list_button:
            list_nft(nft["tokenId"], nft["price"])
        
        if coming_soon_button:
            mark_coming_soon(nft["tokenId"])
        
        if create_nft_button:
            create_nft()

def buy_nft(token_id, price):
    # Call the buyNFT function on the NFTMarket contract
    transaction = nft_market_contract.functions.buyNFT(token_id).buildTransaction({
        'chainId': 1,  # Ethereum mainnet
        'gas': 2000000,  # Adjust gas limit
        'gasPrice': w3.toWei('50', 'gwei'),  # Adjust gas price
        'nonce': w3.eth.getTransactionCount(wallet_address),
        'value': w3.toWei(price, 'ether')  # Send the required value to buy the NFT
    })
    signed_txn = w3.eth.account.signTransaction(transaction, private_key='YOUR_PRIVATE_KEY')
    tx_hash = w3.eth.sendRawTransaction(signed_txn.rawTransaction)
    st.write(f'Transaction sent: {tx_hash.hex()}')
    pass

def list_nft(token_id, price):
    # Call the listNFT function on the NFTMarket contract
    transaction = nft_market_contract.functions.listNFT(token_id, price).buildTransaction({
        'chainId': 1,  # Ethereum mainnet
        'gas': 2000000,  # Adjust gas limit
        'gasPrice': w3.toWei('50', 'gwei'),  # Adjust gas price
        'nonce': w3.eth.getTransactionCount(wallet_address),
    })
    signed_txn = w3.eth.account.signTransaction(transaction, private_key='YOUR_PRIVATE_KEY')
    tx_hash = w3.eth.sendRawTransaction(signed_txn.rawTransaction)
    st.write(f'Transaction sent: {tx_hash.hex()}')

def mark_coming_soon(token_id):
    # Call the markNFTComingSoon function on the NFTMarket contract
    transaction = nft_market_contract.functions.markNFTComingSoon(token_id).buildTransaction({
        'chainId': 1,  # Ethereum mainnet
        'gas': 2000000,  # Adjust gas limit
        'gasPrice': w3.toWei('50', 'gwei'),  # Adjust gas price
        'nonce': w3.eth.getTransactionCount(wallet_address),
    })
    signed_txn = w3.eth.account.signTransaction(transaction, private_key='YOUR_PRIVATE_KEY')
    tx_hash = w3.eth.sendRawTransaction(signed_txn.rawTransaction)
    st.write(f'Transaction sent: {tx_hash.hex()}')

def create_nft():
    # Call the createNFT function on the NFTMarket contract
    transaction = nft_market_contract.functions.createNFT().buildTransaction({
        'chainId': 1,  # Ethereum mainnet
        'gas': 2000000,  # Adjust gas limit
        'gasPrice': w3.toWei('50', 'gwei'),  # Adjust gas price
        'nonce': w3.eth.getTransactionCount(wallet_address),
    })
    signed_txn = w3.eth.account.signTransaction(transaction, private_key='YOUR_PRIVATE_KEY')
    tx_hash = w3.eth.sendRawTransaction(signed_txn.rawTransaction)
    st.write(f'Transaction sent: {tx_hash.hex()}')

# Fetch NFT data from the contracts (replace with your actual function calls)
nfts = [
    {"name": "NFT 1", "price": 0.1, "tokenId": 1},
    {"name": "NFT 2", "price": 0.05, "tokenId": 2},
    {"name": "NFT 3", "price": 0.05, "tokenId": 3},
    {"name": "NFT 4", "price": 0.05, "tokenId": 4},
    {"name": "NFT 5", "price": 0.05, "tokenId": 5},
    {"name": "NFT 6", "price": 0.05, "tokenId": 6},
    {"name": "NFT 7", "price": 0.05, "tokenId": 7},
    {"name": "NFT 8", "price": 0.05, "tokenId": 8},
    {"name": "NFT 9", "price": 0.05, "tokenId": 9},
    {"name": "NFT 10", "price": 0.05, "tokenId": 10},
]

# Display NFTs and handle actions
display_nfts(nfts)

