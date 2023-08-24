// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
contract NFTMarketplace is ERC721("NFT Marketplace", "NFTM"), Ownable {
    uint256 public tokenCounter;
    constructor() {
        tokenCounter = 0;
    }
    mapping(uint256 => uint256) public nftPrices;
    mapping(uint256 => bool) public nftListings;
    mapping(uint256 => bool) public nftComingSoon;
    event NFTBought(address indexed buyer, uint256 indexed tokenId, uint256 price);
    event NFTSold(address indexed seller, uint256 indexed tokenId, uint256 price);
    event NFTListed(uint256 indexed tokenId, uint256 price);
    event NFTCreated(uint256 indexed tokenId, address indexed creator);
    event NFTComingSoon(uint256 indexed tokenId);
    modifier onlyTokenOwner(uint256 tokenId) {
        require(ownerOf(tokenId) == msg.sender, "You can only perform this action on your own NFT");
        _;
    }
    function listNFT(uint256 tokenId, uint256 price) external {
        require(_isApprovedOrOwner(msg.sender, tokenId), "You can only list your own NFT");
        require(!nftListings[tokenId], "NFT is already listed");
        nftPrices[tokenId] = price;
        nftListings[tokenId] = true;
        emit NFTListed(tokenId, price);
    }
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
    function createNFT() external onlyOwner {
        uint256 newTokenId = tokenCounter;
        _mint(msg.sender, newTokenId);
        tokenCounter++;
        emit NFTCreated(newTokenId, msg.sender);
    }
    function markNFTComingSoon(uint256 tokenId) external onlyOwner {
        require(!_exists(tokenId), "NFT with this ID already exists");
        nftComingSoon[tokenId] = true;
        emit NFTComingSoon(tokenId);
    }
    function withdrawFunds() external onlyOwner {
    address payable ownerPayable = payable(owner());
    ownerPayable.transfer(address(this).balance);
    }
} 