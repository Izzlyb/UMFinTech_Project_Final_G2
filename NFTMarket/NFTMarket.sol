// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

contract NFTMarket is ReentrancyGuard {
    using Counters for Counters.Counter;
    Counters.Counter private _itemIds;
    Counters.Counter private _itemsSold;
    address payable owner;

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
    event NFTListed(uint256 indexed tokenId, uint256 price);

    // constructor() ERC721("FinTech Tokens", "FTTK") {
    //   owner = payable(msg.sender);
    // }
    constructor() {
      owner = payable(msg.sender);
    }

    function getListingPrice() public view returns (uint256) {
        return listingPrice;
    }

    function createMarketItem(
        address nftContract,
        uint256 tokenId,
        uint256 price
    ) public payable nonReentrant {
        require(price > 0, "Price must be at least 0.025 ether");
        require(msg.value == listingPrice, "Price must be equal to listing price");

        _itemIds.increment();
        uint256 itemId = _itemIds.current();

        idToMarketItem[itemId] = MarketItem(
            itemId,
            nftContract,
            tokenId,
            payable(msg.sender),
            payable(address(0)),            // owner is set to an empty address == address(0)
            price,
            false
        );

        IERC721(nftContract).transferFrom(msg.sender, address(this), tokenId);
        emit MarketItemCreated(
                itemId,
                nftContract,
                tokenId,
                msg.sender,
                address(0),
                price,
                false
                );
    }

    /* Creates the sale of a marketplace item */
    /* Transfers ownership of the item, as well as funds between parties */
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
        payable(owner).transfer(listingPrice);
    }

    /* Returns all unsold market items */
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

    /* Returns only items that a user has purchased */
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

    /* Returns only items a user has listed */
    function fetchItemsCreated() public view returns (MarketItem[] memory) {
        uint totalItemCount = _itemIds.current();
        uint itemCount = 0;
        uint currentIndex = 0;

        for( uint i = 0; i < totalItemCount; i++) {
            if( idToMarketItem[i + 1].seller == msg.sender) {
                itemCount += 1;
            }
        }

        MarketItem[] memory items = new MarketItem[](itemCount);
        for( uint i = 0; i < totalItemCount; i++) {
            if(idToMarketItem[i + 1].seller == msg.sender) {
                uint currentId = idToMarketItem[i + 1].itemId;
                MarketItem storage currentItem = idToMarketItem[currentId];
                items[currentIndex] = currentItem;
                currentIndex += 1;
            }
        }

        return items;
    }

    function clearListing(uint256 tokenId) external onlyOwner {
        idToMarketItem[tokenId] = 0;
        idToMarketItem[tokenId].nftContract = address(0);
        idToMarketItem[tokenId].seller = address(0);
        idToMarketItem[tokenId].owner = address(0);
        idToMarketItem[tokenId].price = 0;
        idToMarketItem[tokenId].sold = true;
    }
}
