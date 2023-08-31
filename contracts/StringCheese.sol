// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts@4.9.3/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts@4.9.3/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts@4.9.3/security/Pausable.sol";
import "@openzeppelin/contracts@4.9.3/access/Ownable.sol";
import "@openzeppelin/contracts@4.9.3/utils/Counters.sol";

contract StringCheese is ERC721, ERC721Enumerable, Pausable, Ownable {
    using Counters for Counters.Counter;

    // *** Property Variables ***//

    Counters.Counter private _tokenIdCounter;

    uint256 public MINT_PRICE = 0.05 ether;
    uint256 public MAX_SUPPLY = 100;

    // *** Lifecycle Methods ***//

    constructor() ERC721("StringCheese", "SC") {
        // Start token at 1. Stats at 0 by default.
        _tokenIdCounter.increment();
    }   
    function withdraw() public onlyOwner {
        require(address(this).balance > 0, "Balance is zero");
        payable(owner()).transfer(address(this).balance);
}

    // *** Pausable Function *** //

    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }

    // *** Minting Function *** //

    function safeMint(address to) public payable{
    //Check that Total Supply Is Less than Max
        require(totalSupply() < MAX_SUPPLY, "Can't mint anymore!");

        require(msg.value >= MINT_PRICE, "Sorry, that won't cut it! Need more ETH!");
        uint256 tokenId = _tokenIdCounter.current();
        _tokenIdCounter.increment();
        _safeMint(to, tokenId);
    }
    // *** Other Functions *** //
    function _beforeTokenTransfer(address from, address to, uint256 tokenId, uint256 batchSize)
        internal
        whenNotPaused
        override(ERC721, ERC721Enumerable)
    {
        super._beforeTokenTransfer(from, to, tokenId, batchSize);
    }

    function _baseURI() internal pure override returns (string memory) {
        return "ipfs://StringCheeseBaseURL/";
    }


    // The following functions are overrides required by Solidity.

    function supportsInterface(bytes4 interfaceId)
        public
        view
        override(ERC721, ERC721Enumerable)
        returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }
}

/*NOTES:
 Owner: 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
        - deployed contract
        - can only call onlyOwner modifier functions
 Address 2: 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2
        - mint 1 NFT
        */

    