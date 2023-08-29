// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract NFTMarketplace is ERC721("FinTech NFT Marketplace", "RISE"), ReentrancyGuard {
    using Counters for Counters.Counter;
    Counters.Counter private _itemIds;
    Counters.Counter private _itemsSold;
    address payable ownerMp;

    uint256 listingPrice = 0.025 ether;

    struct MarketItem {
      uint256 itemId;
      address nftContract;
      uint256 tokenId;
      address payable seller;
      address payable owner;
      uint256 price;
      bool sold;
    }
    mapping(uint256 => MarketItem) private idToMarketItem;
    
    event MarketItemCreated (
      uint indexed itemId,
      address indexed nftContract,
      uint256 indexed tokenId,
      address owner,
      address seller,
      uint256 price,
      bool sold
    );

    constructor() {
        ownerMp = payable(msg.sender);
    }
        // Mapping to store NFT prices
    mapping(uint256 => uint256) public nftPrices;
        // Mapping to store NFT listings
    mapping(uint256 => bool) public nftListings;
    mapping(uint256 => bool) public nftComingSoon;
        // list of NFT items in the marketplace
    mapping(uint256 => MarketItem) public ItemsList;

        // Event emitted when an NFT is bought
    event NFTBought(address indexed buyer, uint256 indexed tokenId, uint256 price);

        // Event emitted when an NFT is sold
    event NFTSold(address indexed seller, uint256 indexed tokenId, uint256 price);

       // Event emitted when a new NFT is listed
    event NFTListed(uint256 indexed tokenId, uint256 price);

        // Event emitted when a new NFT is created
    event NFTCreated(uint256 indexed tokenId, address indexed creator);

        // Event emitted when a new NFT is coming soon
    event NFTComingSoon(uint256 indexed tokenId);

    modifier onlyTokenOwner(uint256 tokenId) {
        require(ownerOf(tokenId) == msg.sender, "You can only perform this action on your own NFT");
        _;
    }

    modifier onlyOwner() {
        require(msg.sender == ownerMp, "You can only perform this action on your own NFT");
        _;
    }

     // Function to list a new NFT
    function listNFT(uint256 tokenId, uint256 price, address tokenAddress) external {
        require(_isApprovedOrOwner(msg.sender, tokenId), "You can only list your own NFT");
        require(!nftListings[tokenId], "NFT is already listed");
        nftPrices[tokenId] = price;
        nftListings[tokenId] = true;

        _itemIds.increment();
        uint256 itemId = _itemIds.current();

        idToMarketItem[itemId] = MarketItem(
                                    itemId,
                                    tokenAddress,
                                    tokenId,
                                    payable(msg.sender),
                                    payable(address(this)),
                                    price,
                                    false
                                );

        emit NFTListed(tokenId, price);
    }

    // Function to buy an NFT
    function buyNFT(uint256 tokenId) external payable {
        require(nftListings[tokenId], "NFT is not listed for sale");
        require(msg.value >= nftPrices[tokenId], "Insufficient funds to buy NFT");

        address seller = ownerOf(tokenId);
        nftListings[tokenId] = false;
        nftPrices[tokenId] = 0;
        _transfer(seller, msg.sender, tokenId);
        payable(seller).transfer(msg.value);
        emit NFTBought(msg.sender, tokenId, msg.value);
    }

    // Function to create a new NFT
    function createNFT() external onlyOwner {
        uint256 newTokenId = _itemIds.current();
        _mint(msg.sender, newTokenId);
        _itemIds.increment();
        emit NFTCreated(newTokenId, msg.sender);
    }

    // Function to show coming soon
    function markNFTComingSoon(uint256 tokenId) external onlyOwner {
        require(!_exists(tokenId), "NFT with this ID already exists");
        nftComingSoon[tokenId] = true;
        emit NFTComingSoon(tokenId);
    }

    // Function to withdraw funds from the contract
    function withdrawFunds() external onlyOwner {
        address payable ownerPayable = ownerMp;
        ownerPayable.transfer(address(this).balance);
    }

    function fetchMarketItems() public view returns (MarketItem[] memory ) {
        uint itemCount = _itemIds.current();
        uint unsoldItemsCount = _itemIds.current() - _itemsSold.current();
        uint currentIndex = 0;

        MarketItem[] memory items = new MarketItem[](unsoldItemsCount);
        for( uint i = 0; i < itemCount; i++) {
            if( idToMarketItem[i+1].owner == address(0)) {
                uint currentId = idToMarketItem[i+1].itemId;
                MarketItem storage currentItem = idToMarketItem[currentId];
                items[currentIndex] = currentItem;
                currentIndex += 1;
            }
        }
        return items;
    }

    function fetchMyNFTs() public view returns (MarketItem[] memory ) {
        uint totalItemCount = _itemIds.current();
        uint itemCount = 0;
        uint currentIndex = 0;

        for(uint i = 0; i < totalItemCount; i++) {
            if(idToMarketItem[i + 1].owner == msg.sender) {
                itemCount += 1;
            }
        }

        MarketItem[] memory items = new MarketItem[](itemCount);
        for(uint i = 0; i < totalItemCount; i++) {
            if(idToMarketItem[i + 1].owner == msg.sender) {
                uint currentId = idToMarketItem[i+1].itemId;
                MarketItem storage currentItem = idToMarketItem[currentId];
                items[currentIndex] = currentItem;
                currentIndex += 1;
            }
        }

        return items;
    }

    // transfer an item from the marketplace to the sender's address
    function createMarketSell(
        address nftContract, 
        uint256 itemId
        ) public payable nonReentrant {
        uint price = idToMarketItem[itemId].price;
        uint tokenId = idToMarketItem[itemId].tokenId;
        require(msg.value == price, "Please send the asking price in order to complete transaction");

        idToMarketItem[itemId].seller.transfer(msg.value);
        IERC721(nftContract).transferFrom(address(this), msg.sender, tokenId);
        idToMarketItem[itemId].owner = payable(msg.sender);
        idToMarketItem[itemId].sold = true;
        _itemsSold.increment();
        payable(ownerMp).transfer(listingPrice);
    }

    // transfer the balance from the seller's address to the caller of the function
    function tokenOwnerWithdraw() public {
        uint totalItemCount = _itemIds.current();
        for( uint i = 0; i < totalItemCount; i++) {
            if( idToMarketItem[i + 1].seller == msg.sender) {
                (idToMarketItem[i + 1].seller).transfer(payable(msg.sender).balance);
            }
        }
    }
}
