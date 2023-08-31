// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract NFTMarketplace is ERC721URIStorage  {
    using Counters for Counters.Counter;
    //_tokenIds variable has the most recent minted tokenId
    Counters.Counter private _itemIds;
    //Keeps track of the number of items sold on the marketplace
    Counters.Counter private _itemsSold;
    //address of the marketplace
    address payable private ownerMp;
    //The fee charged by the marketplace to be allowed to list an NFT
    uint256 mktPercent = 0.00025 ether;
    // base list price of tokens:
    uint256 listingPrice = 0.025 ether;
    address private tokenAddress = address(0);

    struct MarketItem {
      uint256 itemId;               // the id of tokens in the market place
      address nftContract;          // address of the token
      uint256 tokenId;              // the id identifier of the token. Token id within a collection.
      address payable seller;       // the address listing the token selling it
      address payable owner;        // the actual owner of the token, the marketplace or how bought it.
      uint256 price;                // listing price or bought price
      bool currentlyListed;         // listed or sold.
    }
    mapping(uint256 => MarketItem) private idToMarketItem;
     
    constructor() ERC721("UM FinTech NFTMarketplace", "RISE") {
        ownerMp = payable(msg.sender);
    }
     
        // list of NFT items in the marketplace
    mapping(uint256 => MarketItem) public ItemsList;

        // Event emitted when a new NFT is coming soon
    event NFTComingSoon(uint256 indexed tokenId);
       // Event emitted when a new NFT is listed
    event NFTListed(uint256 indexed tokenId, uint256 price);
    event MarketItemCreated (
                uint indexed itemId,
                address indexed nftContract,
                uint256 indexed tokenId,
                address owner,
                address seller,
                uint256 price,
                bool sold
            );
        // Event emitted when an NFT is bought
    event NFTBought(address indexed buyer, uint256 indexed tokenId, uint256 price);
        // Event emitted when an NFT is sold
    event NFTSold(address indexed seller, uint256 indexed tokenId, uint256 price);

    modifier onlyOwner() {
        require(msg.sender == ownerMp, "You can only perform this action on your own NFT");
        _;
    }

    //The first time a token is created, it is listed here
    // top level when creating a token for the first time:
    // the URI is the metadata URI 
    function createToken(string memory tokenURI, uint256 price) public payable returns (uint) {
        //Increment the tokenId counter, which is keeping track of the number of minted NFTs
        _itemIds.increment();
        uint256 newItemId = _itemIds.current();

        //Mint the NFT with tokenId newTokenId to the address who called createToken
        _safeMint(msg.sender, newItemId);

        //Map the tokenId to the tokenURI (which is an IPFS URL with the NFT metadata)
        _setTokenURI(newItemId, tokenURI);

        //Helper function to update Global variables and emit an event
        createListedToken(newItemId, price, tokenAddress);

        return newItemId;
    }

    // Function to list a new NFT
    function createListedToken(uint _tokenId, uint _price, address _tokenAddress) internal {
        // require(_isApprovedOrOwner(msg.sender, _tokenId), "You can only list your own NFT");
        _itemIds.increment();
        uint256 itemId = _itemIds.current();

        idToMarketItem[itemId] = MarketItem(
                                    itemId,
                                    _tokenAddress,
                                    _tokenId,
                                    payable(msg.sender),
                                    payable(address(this)),
                                    _price,
                                    false
                                );

        // ref: https://ethereum.org/en/developers/tutorials/transfers-and-approval-of-erc-20-tokens-from-a-solidity-smart-contract/
        _transfer(msg.sender, address(this), _tokenId);

        emit MarketItemCreated(
                            itemId,                            
                            _tokenAddress,
                            _tokenId,
                            msg.sender,
                            address(this),
                            _price,
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

    /* Returns only items a user has listed */
    function fetchItemsListed() public view returns (MarketItem[] memory) {
        uint totalItemCount = _itemIds.current();
        uint itemCount = 0;
        uint currentIndex = 0;

        for (uint i = 0; i < totalItemCount; i++) {
            if (idToMarketItem[i + 1].seller == msg.sender) {
                itemCount += 1;
            }
        }

        MarketItem[] memory items = new MarketItem[](itemCount);
        for (uint i = 0; i < totalItemCount; i++) {
            if (idToMarketItem[i + 1].seller == msg.sender) {
                uint currentId = i + 1;
                MarketItem storage currentItem = idToMarketItem[currentId];
                items[currentIndex] = currentItem;
                currentIndex += 1;
            }
        }
        return items;
    }

    /* allows someone to resell a token they have purchased */
    function resellToken(uint256 tokenId, uint256 price) public payable {
      require(idToMarketItem[tokenId].owner == msg.sender, "Only item owner can perform this operation");
      require(msg.value == listingPrice, "Price must be equal to listing price");
      idToMarketItem[tokenId].currentlyListed = false;
      idToMarketItem[tokenId].price = price;
      idToMarketItem[tokenId].seller = payable(msg.sender);
      idToMarketItem[tokenId].owner = payable(address(this));
      _itemsSold.decrement();

      _transfer(msg.sender, address(this), tokenId);
    }

    function executeSale(uint256 tokenId) public payable {
        uint price = idToMarketItem[tokenId].price;
        address seller = idToMarketItem[tokenId].seller;
        require(msg.value == price, "Please submit the asking price in order to complete the purchase");

        //update the details of the token
        idToMarketItem[tokenId].currentlyListed = true;
        idToMarketItem[tokenId].seller = payable(msg.sender);
        _itemsSold.increment();

        //Actually transfer the token to the new owner
        _transfer(address(this), msg.sender, tokenId);
        //approve the marketplace to sell NFTs on your behalf
        approve(address(this), tokenId);

        //Transfer the listing fee to the marketplace creator
        payable(address(this)).transfer(idToMarketItem[tokenId].price);
        //Transfer the proceeds from the sale to the seller of the NFT
        payable(seller).transfer(msg.value);

        emit NFTSold(seller, tokenId, idToMarketItem[tokenId].price);
    }

    function updateListPrice(uint256 _listPrice) public payable {
        listingPrice = _listPrice;
    }

    function getCurrentListingPrice() public view returns (uint256) {
        return listingPrice;
    }

    function getLatestIdToListedToken() public view returns (MarketItem memory) {
        uint256 currentTokenId = _itemIds.current();
        return idToMarketItem[currentTokenId];
    }

    function getListedForTokenId(uint256 tokenId) public view returns (MarketItem memory){
        return idToMarketItem[tokenId];
    }

    function getCurrentToken() public view returns (uint256) {
        return _itemIds.current();
    }

    function getTotalItemsListed() public view returns (uint256) {
        return _itemIds.current();
    }

    //Returns all the NFTs that the current user is owner or seller in
    function getMyNFTs() public view returns (MarketItem[] memory) {
        uint totalItemCount = _itemIds.current();
        uint itemCount = 0;
        uint currentIndex = 0;
        uint currentId;
        // Important to get a count of all the NFTs that belong to the user before we can make an array for them
        for(uint i=0; i < totalItemCount; i++)
        {
            if(idToMarketItem[i+1].owner == msg.sender || idToMarketItem[i+1].seller == msg.sender){
                itemCount += 1;
            }
        }
        //Once you have the count of relevant NFTs, create an array then store all the NFTs in it
        MarketItem[] memory items = new MarketItem[](itemCount);
        for(uint i=0; i < totalItemCount; i++) {
            if(idToMarketItem[i+1].owner == msg.sender || idToMarketItem[i+1].seller == msg.sender) {
                currentId = i+1;
                MarketItem storage currentItem = idToMarketItem[currentId];
                items[currentIndex] = currentItem;
                currentIndex += 1;
            }
        }
        return items;
    }

    // This will return all the NFTs currently listed on the marketplace
    function getAllNFTs() public view returns (MarketItem[] memory) {
        uint nftCount = _itemIds.current();
        MarketItem[] memory tokens = new MarketItem[](nftCount);
        uint currentIndex = 0;
        uint currentId;
        //at the moment currentlyListed is true for all, if it becomes false in the future we will 
        //filter out currentlyListed == false over here
        for(uint i=0;i<nftCount;i++)
        {
            currentId = i + 1;
            MarketItem storage currentItem = idToMarketItem[currentId];
            tokens[currentIndex] = currentItem;
            currentIndex += 1;
        }
        //the array 'tokens' has the list of all NFTs in the marketplace
        return tokens;
    }
    
    function createMarketSell(
        address nftContract, 
        uint256 itemId
        ) public payable {
        uint price = idToMarketItem[itemId].price;
        uint tokenId = idToMarketItem[itemId].tokenId;
        require(msg.value == price, "Please send the asking price in order to complete transaction");

        idToMarketItem[itemId].seller.transfer(price);
        IERC721(nftContract).transferFrom(address(this), msg.sender, tokenId);
        idToMarketItem[itemId].owner = payable(msg.sender);
        idToMarketItem[itemId].currentlyListed = true;
        _itemsSold.increment();
        payable(ownerMp).transfer(price);
    }

}
