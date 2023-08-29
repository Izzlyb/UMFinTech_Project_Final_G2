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
    
    constructor() {
        ownerMp = payable(msg.sender);
    }
        // list of NFT items in the marketplace
    mapping(uint256 => MarketItem) public ItemsList;

        // Event emitted when a new NFT is coming soon
    event NFTComingSoon(uint256 indexed tokenId);

    modifier onlyOwner() {
        require(msg.sender == ownerMp, "You can only perform this action on your own NFT");
        _;
    }

     // Function to list a new NFT
    function listNFT(uint256 tokenId, uint256 price, address tokenAddress) external {
        require(_isApprovedOrOwner(msg.sender, tokenId), "You can only list your own NFT");

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

    }

    // Function to show coming soon
    function markNFTComingSoon(uint256 tokenId) external returns (uint256) {
        require(!_exists(tokenId), "NFT with this ID already exists");
        uint256 itemId = _itemIds.current();

        idToMarketItem[itemId].tokenId = tokenId;

        emit NFTComingSoon(tokenId);

        return idToMarketItem[itemId].itemId;
    }


    function setListingPrice(uint256 _price) public {
        listingPrice = _price;
    }

    function getTotalItemsListed() public view returns (uint256) {
        return _itemIds.current();
    }

    function getCurrentListingPrice() public view returns (uint256) {
        return listingPrice;
    }
}
