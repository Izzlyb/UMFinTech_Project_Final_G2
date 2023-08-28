import streamlit as st
from web3 import Web3
import requests
import json

# Connect to an Ethereum node
w3 = Web3(Web3.HTTPProvider('https://mainnet.infura.io/v3/YOUR_INFURA_PROJECT_ID'))


nft_market_abi = None
nft_token_abi = None
nft_events_abi = None

try:
    with open('NFTMarketABI.json') as f:
        nft_market_abi = json.load(f)
except Exception as e:
    st.error(f"Error loading NFTMarketABI.json: {e}")

try:
    with open('StringCheeseABI.json') as f:
        nft_token_abi = json.load(f)
except Exception as e:
    st.error(f"Error loading StringCheeseABI.json: {e}")

try:
    with open('NFTMarketEvents.json') as f:
        nft_events_abi = json.load(f)
except Exception as e:
    st.error(f"Error loading NFTMarketEvents.json: {e}")

# Continue with the rest of your code using nft_market_abi, nft_token_abi, and nft_events_abi

# Create contract instances
nft_market_contract = w3.eth.contract(address=nft_market_address, abi=nft_market_abi)
nft_token_contract = w3.eth.contract(address=nft_token_address, abi=nft_token_abi)


pinata_metadata_url = 'ipfs://QmZqKGQEQFuc1wERQrbUVoxVggsHFVLhW8UrCPnFmoDTYE'
response = requests.get(pinata_metadata_url)
nfts = response.json()

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
    # Add more NFTs
]

# Display NFTs and handle actions
display_nfts(nfts)