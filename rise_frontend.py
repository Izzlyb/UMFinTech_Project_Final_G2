import os 
import streamlit as st
from web3 import Web3
from dotenv import load_dotenv
import requests
import json

load_dotenv('SAMPLE.env')

# Connect to an Ethereum node
w3 = Web3(Web3.HTTPProvider(os.getenv("WEB3_PROVIDER_URI")))

@st.cache_resource
def load_contracts():
    # Load contract ABIs
    with open('./contracts/compiled/FtNftMarketABI.json') as f:
        nft_market_abi = json.load(f)
    with open('StringCheeseABI.json') as f:
        nft_token_abi = json.load(f)

    # Addresses of the deployed contracts
    nft_market_address = os.getenv('NFT_MARKET_ADDRESS')
    nft_token_address = os.getenv('NFT_TOKEN_ADDRESS')
    
    # Create contract instances
    nft_market_contract = w3.eth.contract(address=nft_market_address, abi=nft_market_abi)
    nft_token_contract = w3.eth.contract(address=nft_token_address, abi=nft_token_abi)

    return nft_market_contract, nft_token_contract

# Load the contract
nft_market_contract, nft_token_contract = load_contracts()


ipfs_hash = 'QmZqKGQEQFuc1wERQrbUVoxVggsHFVLhW8UrCPnFmoDTYE'
ipfs_gateway_url = f'https://gateway.pinata.cloud/ipfs/QmZqKGQEQFuc1wERQrbUVoxVggsHFVLhW8UrCPnFmoDTYE'

# Fetch content from the IPFS gateway
response = requests.get(ipfs_gateway_url)
#nfts = response.json()

st.title('R.I.S.E Marketplace')

# Input field for entering wallet address
wallet_address = os.getenv('NFT_TOKEN_ADDRESS')


def mint_nft(ipfs_metadata_uri, wallet_address, chain_id):
    # Call the mintNFT function on the NFTToken contract
    # transaction = nft_token_contract.functions.safeMint(ipfs_metadata_uri).transact({
    #     'chainId': chain_id,
    #     'gas': 2000000,
    #     'gasPrice': w3.toWei('50', 'gwei'),
    #     'nonce': w3.eth.get_transaction_count(wallet_address),
    # })
    # signed_txn = w3.eth.account.signTransaction(transaction, private_key=os.getenv('PRIVATE_KEY'))
    # tx_hash = w3.eth.sendRawTransaction(signed_txn.rawTransaction)
    # st.write(f'Transaction sent: {tx_hash.hex()}')
    st.write(f'Transaction sent: from mint_nft')

ipfs_metadata_uri = 'ipfs://QmZqKGQEQFuc1wERQrbUVoxVggsHFVLhW8UrCPnFmoDTYE'
# mint_nft(ipfs_metadata_uri, wallet_address, chain_id=1337)

#  Display available NFTs
def display_nfts(nfts):
    for nft_key, nft_data in nfts.items():
        nft_name, nft_price, nft_token_id, nft_image_url = nft_data
        st.sidebar.write(f'NFT: {nft_name}, Price: {nft_price}')
        st.write(f'NFT: {nft_name}')
        st.image(nft_image_url, width=400)
        
        buy_button = st.sidebar.button(f'Buy {nft_name}')
        list_button = st.sidebar.button(f'List {nft_name}')
        #coming_soon_button = st.button(f'Coming Soon {nft["name"]}')
        #create_nft_button = st.button(f'Create NFT {nft["name"]}')

        if buy_button:
            buy_nft(nft["tokenId"], nft["price"], wallet_address, chain_id=1337)  

        if list_button:
            getCurrentListingPrice()
            # list_nft(nft["tokenId"], nft["price"], wallet_address, chain_id=1337)  
#Features to work on going forward
       #if coming_soon_button:
            #st.write(f'wallet address:{wallet_address}')
            #mark_coming_soon(nft["tokenId"], wallet_address)

        #if create_nft_button:
            #create_nft(wallet_address, chain_id=1337)
  
    
def buy_nft(token_id, price, wallet_address, chain_id):
    # Call the buyNFT function on the NFTMarket contract
    transaction = nft_market_contract.functions.buyNFT(token_id).transact({
        'chainId': 1337,
        'gas': 2000000,
        'gasPrice': w3.to_wei('50', 'gwei'),
        'nonce': w3.eth.get_transaction_count(wallet_address),
        'value': w3.to_wei(price, 'ether')
    })
    signed_txn = w3.eth.account.signTransaction(transaction, private_key=os.getenv('PRIVATE_KEY_ADDRESS'))
    tx_hash = w3.eth.sendRawTransaction(signed_txn.rawTransaction)
    st.write(f'Transaction sent: {tx_hash.hex()}')
    pass


def list_nft(token_id, price, wallet_address, chain_id):
    # Call the listNFT function on the NFTMarket contract
    transaction = nft_market_contract.functions.listNFT(token_id, price).transact({
        'chainId': 1337,  # Ethereum mainnet
        'gas': 2000000,  # Adjust gas limit
        'gasPrice': w3.to_wei('50', 'gwei'),  # Adjust gas price
        'nonce': w3.eth.get_transaction_count(wallet_address),
    })
    signed_txn = w3.eth.account.signTransaction(transaction, private_key=os.getenv('PRIVATE_KEY_ADDRESS'))
    tx_hash = w3.eth.sendRawTransaction(signed_txn.rawTransaction)
    st.write(f'Transaction sent: {tx_hash.hex()}')

#Features to work on going forward 

#def mark_coming_soon(token_id, address):
    #address = "0x182cbd20b3391348c881683048f14bb5F1A2A51d"
    # Call the markNFTComingSoon function on the NFTMarket contract
    #tx_hash = nft_market_contract.functions.markNFTComingSoon(token_id).transact({'from': address, 'gas': 1000000})
    #receipt = w3.eth.wait_for_transaction_receipt(tx_hash)
    # signed_txn = w3.eth.account.signTransaction(transaction, private_key='0x4523fcc229b66d5809b6ff6c870ec243e37119ffa3923dc71fcd410daf08f872')
    # tx_hash = w3.eth.sendRawTransaction(signed_txn.rawTransaction)
    #st.write(f'Transaction sent: {receipt}')


#def create_nft():
    # Call the createNFT function on the NFTMarket contract
    #transaction = nft_market_contract.functions.createMarketItem().transact({
        #'chainId': 1337,  # Ethereum mainnet
        #'gas': 2000000,  # Adjust gas limit
       # 'gasPrice': w3.to_wei('50', 'gwei'),  # Adjust gas price
        #'nonce': w3.eth.get_transaction_count(wallet_address),
  #  })
    #signed_txn = w3.eth.account.signTransaction(transaction, private_key=os.getenv('PRIVATE_KEY_ADDRESS'))
    #tx_hash = w3.eth.sendRawTransaction(signed_txn.rawTransaction)
    #st.write(f'Transaction sent: {tx_hash.hex()}')


def getCurrentListingPrice():
    address = "0x182cbd20b3391348c881683048f14bb5F1A2A51d"

    tx_hash = nft_market_contract.functions.getCurrentListingPrice().transact({'from': address, 'gas': 1000000})
    receipt = w3.eth.wait_for_transaction_receipt(tx_hash)

    st.write(receipt)

# Fetch NFT data from the contracts (replace with your actual function calls)
nfts = {
   "Image1": ["SLAMINA", 0.18, 1, './images/1.png'],
   "Image2": ["DICK APEY",  0.82,  2, './images/2.png'],
   "Image3": ["COWA-BABooN-GA",  0.96,  3, './images/3.png'],
   "Image4": ["PURPLE STAR",  0.77,  4, './images/4.png'],
   "Image5": ["READ",  0.41,  5, './images/5.png'],
   "Image6": ["MORE",  0.58,  6, './images/6.png'],
   "Image7": ["BOOKS",  0.33,  7, './images/7.png'],
   "Image8":  ["APE WITH WINGS",  0.23,  8, './images/8.png'],
   "Image9": ["WHO'S-WHO",  0.60,  9, './images/9.png'],
   "Image10": ["PROSPECTOR",  0.09, 10, './images/10.png'],
}


# Display NFTs and handle actions
display_nfts(nfts)
