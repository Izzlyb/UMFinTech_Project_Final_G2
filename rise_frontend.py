import streamlit as st
from web3 import Web3
from ipfshttpclient import Client
import requests
import json

# Connect to an Ethereum node
w3 = Web3(Web3.HTTPProvider('https://mainnet.infura.io/v3/313367f15ce5484eb9d7db3f45cdc687'))

# Addresses of the deployed contracts
nft_market_address = '0xC3da1469d665FA184d7C50147cFD71d23D753603'
nft_token_address = '0x5A3e8FE3c2891D5b2b83A60B303b41654587c983'
nft_market_events ='0x1B36628CF0442E2E6136e2A5628086193e69b3d4'

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
nft_market_events = w3.eth.contract(address=nft_market_events, abi=nft_events_abi)


# Replace 'QmZqKGQEQFuc1wERQrbUVoxVggsHFVLhW8UrCPnFmoDTYE' with your IPFS hash
ipfs_hash = 'QmZqKGQEQFuc1wERQrbUVoxVggsHFVLhW8UrCPnFmoDTYE'
ipfs_gateway_url = f'https://gateway.pinata.cloud/ipfs/QmZqKGQEQFuc1wERQrbUVoxVggsHFVLhW8UrCPnFmoDTYE'

# Fetch content from the IPFS gateway
response = requests.get(ipfs_gateway_url)
nfts = response.json()

st.title('R.I.S.E Marketplace')

# Input field for entering wallet address
wallet_address = st.text_input('Enter your Wallet Address')

# Display available NFTs
def display_nfts(nfts):
    for nft in nfts:
        st.write(f'NFT: {nft["name"]}, Price: {nft["price"]}')

        buy_button = st.button(f'Buy {nft["name"]}')
        list_button = st.button(f'List {nft["name"]}')
        coming_soon_button = st.button(f'Coming Soon {nft["name"]}')
        create_nft_button = st.button(f'Create NFT {nft["name"]}')

        if buy_button:
            buy_nft(nft["tokenId"], nft["price"], wallet_address)  

        if list_button:
            list_nft(nft["tokenId"], nft["price"], wallet_address)  

        if coming_soon_button:
            mark_coming_soon(nft["tokenId"], wallet_address)  

        if create_nft_button:
            create_nft(wallet_address)  

def buy_nft(token_id, price):
    # Call the buyNFT function on the NFTMarket contract
    transaction = nft_market_events.functions.buyNFT(token_id).transact({
        'chainId': 1,  # Ethereum mainnet
        'gas': 2000000,  # Adjust gas limit
        'gasPrice': w3.to_wei('50', 'gwei'),  # Adjust gas price
        'nonce': w3.eth.get_transaction_count(wallet_address),
        'value': w3.to_wei(price, 'ether')  # Send the required value to buy the NFT
    })
    signed_txn = w3.eth.account.signTransaction(transaction, private_key='0x3e9c8468ed5bb35e7cac7c545744f99f0f74381d7b56b57e8fc526eb08e93e0c')
    tx_hash = w3.eth.sendRawTransaction(signed_txn.rawTransaction)
    st.write(f'Transaction sent: {tx_hash.hex()}')
    pass

def list_nft(token_id, price):
    # Call the listNFT function on the NFTMarket contract
    transaction = nft_market_events.functions.listNFT(token_id, price).transact({
        'chainId': 1,  # Ethereum mainnet
        'gas': 2000000,  # Adjust gas limit
        'gasPrice': w3.to_wei('50', 'gwei'),  # Adjust gas price
        'nonce': w3.eth.get_transaction_count(wallet_address),
    })
    signed_txn = w3.eth.account.signTransaction(transaction, private_key='0x3e9c8468ed5bb35e7cac7c545744f99f0f74381d7b56b57e8fc526eb08e93e0c')
    tx_hash = w3.eth.sendRawTransaction(signed_txn.rawTransaction)
    st.write(f'Transaction sent: {tx_hash.hex()}')

def mark_coming_soon(token_id):
    # Call the markNFTComingSoon function on the NFTMarket contract
    transaction = nft_market_events.functions.markNFTComingSoon(token_id).transact({
        'chainId': 1,  # Ethereum mainnet
        'gas': 2000000,  # Adjust gas limit
        'gasPrice': w3.to_wei('50', 'gwei'),  # Adjust gas price
        'nonce': w3.eth.get_transaction_count(wallet_address),
    })
    signed_txn = w3.eth.account.signTransaction(transaction,       private_key='0x3e9c8468ed5bb35e7cac7c545744f99f0f74381d7b56b57e8fc526eb08e93e0c')
    tx_hash = w3.eth.sendRawTransaction(signed_txn.rawTransaction)
    st.write(f'Transaction sent: {tx_hash.hex()}')

def create_nft():
    # Call the createNFT function on the NFTMarket contract
    transaction = nft_market_contract.functions.createMarketItem().transact({
        'chainId': 1,  # Ethereum mainnet
        'gas': 2000000,  # Adjust gas limit
        'gasPrice': w3.to_wei('50', 'gwei'),  # Adjust gas price
        'nonce': w3.eth.get_transaction_count(wallet_address),
    })
    signed_txn = w3.eth.account.signTransaction(transaction, private_key='0x3e9c8468ed5bb35e7cac7c545744f99f0f74381d7b56b57e8fc526eb08e93e0c')
    tx_hash = w3.eth.sendRawTransaction(signed_txn.rawTransaction)
    st.write(f'Transaction sent: {tx_hash.hex()}')

# Fetch NFT data from the contracts (replace with your actual function calls)
nfts = [
    {"name": "NFT 1", "price": 0.18, "tokenId": 1},
    {"name": "NFT 2", "price": 0.82, "tokenId": 2},
    {"name": "NFT 3", "price": 0.96, "tokenId": 3},
    {"name": "NFT 4", "price": 0.77, "tokenId": 4},
    {"name": "NFT 5", "price": 0.41, "tokenId": 5},
    {"name": "NFT 6", "price": 0.58, "tokenId": 6},
    {"name": "NFT 7", "price": 0.33, "tokenId": 7},
    {"name": "NFT 8", "price": 0.23, "tokenId": 8},
    {"name": "NFT 9", "price": 0.60, "tokenId": 9},
    {"name": "NFT 10", "price": 0.09, "tokenId": 10},
]

# Display NFTs and handle actions
display_nfts(nfts)

