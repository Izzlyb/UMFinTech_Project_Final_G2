# Sample Hardhat Project

This project demonstrates a basic Hardhat use case. It comes with a sample contract, a test for that contract, and a script that deploys that contract.

Try running some of the following tasks:

```shell
npx hardhat help
npx hardhat test
REPORT_GAS=true npx hardhat test
npx hardhat node
npx hardhat run scripts/deploy.js
```

tokenId 1: https://ipfs.io/ipfs/QmWJFNraZd5bJ36nS3jKCsBhqHQjKqrpcX7aLRaoZMFSV4


 Welcome to Remix 0.35.1 

Your files are stored in indexedDB, 205.27 MB / 3.3 TB used

You can use this terminal to: 
Check transactions details and start debugging.
Execute JavaScript scripts:
 - Input a script directly in the command line interface 
 - Select a Javascript file in the file explorer and then run `remix.execute()` or `remix.exeCurrent()`  in the command line interface  
 - Right click on a JavaScript file in the file explorer and then click `Run` 
The following libraries are accessible:
web3 version 1.5.2
ethers.js 
remix
Type the library name to see available commands.
creation of NFTMarketplace pending...
view on etherscan
[block:4198643 txIndex:3]from: 0x091...2949dto: NFTMarketplace.(constructor)value: 0 weidata: 0x608...90033logs: 0hash: 0xcd4...dcd80
status	true Transaction mined and execution succeed
transaction hash	0xb0f12e2aa121596e1c084897f06a37450edc6851615f5b8a578d16be7e48d707
block hash	0xcd43622eaca024d527a876e3da5df1cf1b326fb9ad465e8cb8b5295d85ddcd80
block number	4198643
contract address	0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60
from	0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d
to	NFTMarketplace.(constructor)
gas	4430403 gas
transaction cost	4430403 gas 
input	0x608...90033
decoded input	{}
decoded output	 - 
logs	[]
val	0 wei
transact to NFTMarketplace.createToken pending ... 
view on etherscan
[block:4198770 txIndex:12]from: 0x091...2949dto: NFTMarketplace.createToken(string,uint256) 0x761...CEf60value: 0 weidata: 0x72b...00000logs: 4hash: 0x17e...f6193
status	true Transaction mined and execution succeed
transaction hash	0x1a9764d31ba7ca18bf5316c5466ea4187b3deda8aec7239df243aa90437a2875
block hash	0x17ef80ab351a9846b95ea348332a72b73e6c3ec0dbc84fd1a5468e878fff6193
block number	4198770
from	0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d
to	NFTMarketplace.createToken(string,uint256) 0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60
gas	334455 gas
transaction cost	314555 gas 
input	0x72b...00000
decoded input	{
	"string tokenURI": "https://ipfs.io/ipfs/QmWJFNraZd5bJ36nS3jKCsBhqHQjKqrpcX7aLRaoZMFSV4",
	"uint256 price": "25000000000000000"
}
decoded output	 - 
logs	[
	{
		"from": "0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60",
		"topic": "0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef",
		"event": "Transfer",
		"args": {
			"0": "0x0000000000000000000000000000000000000000",
			"1": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"2": "1",
			"from": "0x0000000000000000000000000000000000000000",
			"to": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"tokenId": "1"
		}
	},
	{
		"from": "0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60",
		"topic": "0xf8e1a15aba9398e019f0b49df1a4fde98ee17ae345cb5f6b5e2c27f5033e8ce7",
		"event": "MetadataUpdate",
		"args": {
			"0": "1",
			"_tokenId": "1"
		}
	},
	{
		"from": "0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60",
		"topic": "0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef",
		"event": "Transfer",
		"args": {
			"0": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"1": "0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60",
			"2": "1",
			"from": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"to": "0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60",
			"tokenId": "1"
		}
	},
	{
		"from": "0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60",
		"topic": "0x045dfa01dcba2b36aba1d3dc4a874f4b0c5d2fbeb8d2c4b34a7d88c8d8f929d1",
		"event": "MarketItemCreated",
		"args": {
			"0": "2",
			"1": "0x0000000000000000000000000000000000000000",
			"2": "1",
			"3": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"4": "0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60",
			"5": "25000000000000000",
			"6": false,
			"itemId": "2",
			"nftContract": "0x0000000000000000000000000000000000000000",
			"tokenId": "1",
			"owner": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"seller": "0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60",
			"price": "25000000000000000",
			"sold": false
		}
	}
]
val	0 wei
call to NFTMarketplace.symbol
CALL
[call]from: 0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949dto: NFTMarketplace.symbol()data: 0x95d...89b41
call to NFTMarketplace.tokenURI
call to NFTMarketplace.tokenURI errored: Returned error: {"jsonrpc":"2.0","error":"execution reverted: ERC721: invalid token ID","id":3806804554571817}
call to NFTMarketplace.name
CALL
[call]from: 0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949dto: NFTMarketplace.name()data: 0x06f...dde03
call to NFTMarketplace.getLatestIdToListedToken
CALL
[call]from: 0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949dto: NFTMarketplace.getLatestIdToListedToken()data: 0xd1a...88ae5
from	0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d
to	NFTMarketplace.getLatestIdToListedToken() 0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60
input	0xd1a...88ae5
decoded input	{}
decoded output	{
	"0": "tuple(uint256,address,uint256,address,address,uint256,bool): 2,0x0000000000000000000000000000000000000000,1,0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d,0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60,25000000000000000,false"
}
logs	[]
call to NFTMarketplace.getCurrentToken
CALL
[call]from: 0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949dto: NFTMarketplace.getCurrentToken()data: 0xef2...d1746
from	0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d
to	NFTMarketplace.getCurrentToken() 0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60
input	0xef2...d1746
decoded input	{}
decoded output	{
	"0": "uint256: 2"
}
logs	[]
call to NFTMarketplace.tokenURI
call to NFTMarketplace.tokenURI errored: Returned error: {"jsonrpc":"2.0","error":"execution reverted: ERC721: invalid token ID","id":3806804554571832}
call to NFTMarketplace.tokenURI
CALL
[call]from: 0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949dto: NFTMarketplace.tokenURI(uint256)data: 0xc87...00001
from	0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d
to	NFTMarketplace.tokenURI(uint256) 0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60
input	0xc87...00001
decoded input	{
	"uint256 tokenId": "1"
}
decoded output	{
	"0": "string: https://ipfs.io/ipfs/QmWJFNraZd5bJ36nS3jKCsBhqHQjKqrpcX7aLRaoZMFSV4"
}
logs	[]
call to NFTMarketplace.ItemsList
CALL
[call]from: 0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949dto: NFTMarketplace.ItemsList(uint256)data: 0x1ff...00001
from	0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d
to	NFTMarketplace.ItemsList(uint256) 0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60
input	0x1ff...00001
decoded input	{
	"uint256 ": "1"
}
decoded output	{
	"0": "uint256: itemId 0",
	"1": "address: nftContract 0x0000000000000000000000000000000000000000",
	"2": "uint256: tokenId 0",
	"3": "address: seller 0x0000000000000000000000000000000000000000",
	"4": "address: owner 0x0000000000000000000000000000000000000000",
	"5": "uint256: price 0",
	"6": "bool: currentlyListed false"
}
logs	[]
call to NFTMarketplace.getMyNFTs
CALL
[call]from: 0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949dto: NFTMarketplace.getMyNFTs()data: 0x629...cb2e4
from	0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d
to	NFTMarketplace.getMyNFTs() 0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60
input	0x629...cb2e4
decoded input	{}
decoded output	{
	"0": "tuple(uint256,address,uint256,address,address,uint256,bool)[]: 2,0x0000000000000000000000000000000000000000,1,0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d,0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60,25000000000000000,false"
}
logs	[]
call to NFTMarketplace.getAllNFTs
CALL
[call]from: 0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949dto: NFTMarketplace.getAllNFTs()data: 0xe03...91b09
from	0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d
to	NFTMarketplace.getAllNFTs() 0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60
input	0xe03...91b09
decoded input	{}
decoded output	{
	"0": "tuple(uint256,address,uint256,address,address,uint256,bool)[]: 0,0x0000000000000000000000000000000000000000,0,0x0000000000000000000000000000000000000000,0x0000000000000000000000000000000000000000,0,false,2,0x0000000000000000000000000000000000000000,1,0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d,0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60,25000000000000000,false"
}
logs	[]
call to NFTMarketplace.balanceOf
CALL
[call]from: 0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949dto: NFTMarketplace.balanceOf(address)data: 0x70a...2949d
from	0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d
to	NFTMarketplace.balanceOf(address) 0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60
input	0x70a...2949d
decoded input	{
	"address owner": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d"
}
decoded output	{
	"0": "uint256: 0"
}
logs	[]
call to NFTMarketplace.balanceOf
CALL
[call]from: 0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949dto: NFTMarketplace.balanceOf(address)data: 0x70a...cef60
from	0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d
to	NFTMarketplace.balanceOf(address) 0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60
input	0x70a...cef60
decoded input	{
	"address owner": "0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60"
}
decoded output	{
	"0": "uint256: 1"
}
logs	[]
transact to NFTMarketplace.createToken pending ... 
view on etherscan
[block:4198796 txIndex:1]from: 0x091...2949dto: NFTMarketplace.createToken(string,uint256) 0x761...CEf60value: 0 weidata: 0x72b...00000logs: 4hash: 0x917...77860
status	true Transaction mined and execution succeed
transaction hash	0x582bc51dd363ffa3f7988b007c0de50ec7661f91f8ea2f340b6cdb1e9c5754f4
block hash	0x917286041704ff287633426e877fc40ce1e2819332f4d686c9435546dc677860
block number	4198796
from	0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d
to	NFTMarketplace.createToken(string,uint256) 0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60
gas	300243 gas
transaction cost	280343 gas 
input	0x72b...00000
decoded input	{
	"string tokenURI": "https://ipfs.io/ipfs/QmNZ3Bzj4oQuzVsrtCFy4Lf83eAS8ckCbKM7KAmqQz5tNu",
	"uint256 price": "25200000000000000"
}
decoded output	 - 
logs	[
	{
		"from": "0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60",
		"topic": "0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef",
		"event": "Transfer",
		"args": {
			"0": "0x0000000000000000000000000000000000000000",
			"1": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"2": "3",
			"from": "0x0000000000000000000000000000000000000000",
			"to": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"tokenId": "3"
		}
	},
	{
		"from": "0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60",
		"topic": "0xf8e1a15aba9398e019f0b49df1a4fde98ee17ae345cb5f6b5e2c27f5033e8ce7",
		"event": "MetadataUpdate",
		"args": {
			"0": "3",
			"_tokenId": "3"
		}
	},
	{
		"from": "0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60",
		"topic": "0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef",
		"event": "Transfer",
		"args": {
			"0": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"1": "0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60",
			"2": "3",
			"from": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"to": "0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60",
			"tokenId": "3"
		}
	},
	{
		"from": "0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60",
		"topic": "0x045dfa01dcba2b36aba1d3dc4a874f4b0c5d2fbeb8d2c4b34a7d88c8d8f929d1",
		"event": "MarketItemCreated",
		"args": {
			"0": "4",
			"1": "0x0000000000000000000000000000000000000000",
			"2": "3",
			"3": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"4": "0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60",
			"5": "25200000000000000",
			"6": false,
			"itemId": "4",
			"nftContract": "0x0000000000000000000000000000000000000000",
			"tokenId": "3",
			"owner": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"seller": "0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60",
			"price": "25200000000000000",
			"sold": false
		}
	}
]
val	0 wei
call to NFTMarketplace.ownerOf
call to NFTMarketplace.ownerOf errored: Returned error: {"jsonrpc":"2.0","error":"execution reverted: ERC721: invalid token ID","id":3806804554573225}
call to NFTMarketplace.tokenURI
call to NFTMarketplace.tokenURI errored: Returned error: {"jsonrpc":"2.0","error":"execution reverted: ERC721: invalid token ID","id":3806804554573228}
call to NFTMarketplace.tokenURI
CALL
[call]from: 0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949dto: NFTMarketplace.tokenURI(uint256)data: 0xc87...00001
from	0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d
to	NFTMarketplace.tokenURI(uint256) 0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60
input	0xc87...00001
decoded input	{
	"uint256 tokenId": "1"
}
decoded output	{
	"0": "string: https://ipfs.io/ipfs/QmWJFNraZd5bJ36nS3jKCsBhqHQjKqrpcX7aLRaoZMFSV4"
}
logs	[]
call to NFTMarketplace.getMyNFTs
CALL
[call]from: 0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949dto: NFTMarketplace.getMyNFTs()data: 0x629...cb2e4
from	0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d
to	NFTMarketplace.getMyNFTs() 0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60
input	0x629...cb2e4
decoded input	{}
decoded output	{
	"0": "tuple(uint256,address,uint256,address,address,uint256,bool)[]: 2,0x0000000000000000000000000000000000000000,1,0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d,0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60,25000000000000000,false,4,0x0000000000000000000000000000000000000000,3,0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d,0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60,25200000000000000,false"
}
logs	[]
call to NFTMarketplace.getLatestIdToListedToken
CALL
[call]from: 0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949dto: NFTMarketplace.getLatestIdToListedToken()data: 0xd1a...88ae5
from	0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d
to	NFTMarketplace.getLatestIdToListedToken() 0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60
input	0xd1a...88ae5
decoded input	{}
decoded output	{
	"0": "tuple(uint256,address,uint256,address,address,uint256,bool): 4,0x0000000000000000000000000000000000000000,3,0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d,0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60,25200000000000000,false"
}
logs	[]
call to NFTMarketplace.tokenURI
CALL
[call]from: 0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949dto: NFTMarketplace.tokenURI(uint256)data: 0xc87...00003
from	0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d
to	NFTMarketplace.tokenURI(uint256) 0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60
input	0xc87...00003
decoded input	{
	"uint256 tokenId": "3"
}
decoded output	{
	"0": "string: https://ipfs.io/ipfs/QmNZ3Bzj4oQuzVsrtCFy4Lf83eAS8ckCbKM7KAmqQz5tNu"
}
logs	[]
call to NFTMarketplace.getAllNFTs
CALL
[call]from: 0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949dto: NFTMarketplace.getAllNFTs()data: 0xe03...91b09
from	0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d
to	NFTMarketplace.getAllNFTs() 0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60
input	0xe03...91b09
decoded input	{}
decoded output	{
	"0": "tuple(uint256,address,uint256,address,address,uint256,bool)[]: 0,0x0000000000000000000000000000000000000000,0,0x0000000000000000000000000000000000000000,0x0000000000000000000000000000000000000000,0,false,2,0x0000000000000000000000000000000000000000,1,0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d,0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60,25000000000000000,false,0,0x0000000000000000000000000000000000000000,0,0x0000000000000000000000000000000000000000,0x0000000000000000000000000000000000000000,0,false,4,0x0000000000000000000000000000000000000000,3,0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d,0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60,25200000000000000,false"
}
logs	[]
call to NFTMarketplace.balanceOf
CALL
[call]from: 0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949dto: NFTMarketplace.balanceOf(address)data: 0x70a...cef60
from	0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d
to	NFTMarketplace.balanceOf(address) 0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60
input	0x70a...cef60
decoded input	{
	"address owner": "0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60"
}
decoded output	{
	"0": "uint256: 2"
}
logs	[]
transact to NFTMarketplace.createToken pending ... 
view on etherscan
[block:4198826 txIndex:1]from: 0x091...2949dto: NFTMarketplace.createToken(string,uint256) 0x761...CEf60value: 0 weidata: 0x72b...00000logs: 4hash: 0x73c...b8a16
status	true Transaction mined and execution succeed
transaction hash	0xa998a8ebd16d657a71bc14cd92690fbb95af37916521a1436a9c95e876aa8f4e
block hash	0x73cdacecaf831295a276e59b709a5565ad76529e8644e352e3ccf97b07db8a16
block number	4198826
from	0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d
to	NFTMarketplace.createToken(string,uint256) 0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60
gas	300255 gas
transaction cost	280355 gas 
input	0x72b...00000
decoded input	{
	"string tokenURI": "https://ipfs.io/ipfs/QmXuYEjXNXcSfXprbgt7GZXjrFmf98dAnayz1L9sRWLPkh",
	"uint256 price": "25300000000000000"
}
decoded output	 - 
logs	[
	{
		"from": "0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60",
		"topic": "0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef",
		"event": "Transfer",
		"args": {
			"0": "0x0000000000000000000000000000000000000000",
			"1": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"2": "5",
			"from": "0x0000000000000000000000000000000000000000",
			"to": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"tokenId": "5"
		}
	},
	{
		"from": "0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60",
		"topic": "0xf8e1a15aba9398e019f0b49df1a4fde98ee17ae345cb5f6b5e2c27f5033e8ce7",
		"event": "MetadataUpdate",
		"args": {
			"0": "5",
			"_tokenId": "5"
		}
	},
	{
		"from": "0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60",
		"topic": "0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef",
		"event": "Transfer",
		"args": {
			"0": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"1": "0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60",
			"2": "5",
			"from": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"to": "0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60",
			"tokenId": "5"
		}
	},
	{
		"from": "0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60",
		"topic": "0x045dfa01dcba2b36aba1d3dc4a874f4b0c5d2fbeb8d2c4b34a7d88c8d8f929d1",
		"event": "MarketItemCreated",
		"args": {
			"0": "6",
			"1": "0x0000000000000000000000000000000000000000",
			"2": "5",
			"3": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"4": "0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60",
			"5": "25300000000000000",
			"6": false,
			"itemId": "6",
			"nftContract": "0x0000000000000000000000000000000000000000",
			"tokenId": "5",
			"owner": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"seller": "0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60",
			"price": "25300000000000000",
			"sold": false
		}
	}
]
val	0 wei


view on etherscan
[block:4198826 txIndex:1]from: 0x091...2949dto: NFTMarketplace.createToken(string,uint256) 0x761...CEf60value: 0 weidata: 0x72b...00000logs: 4hash: 0x73c...b8a16
status	true Transaction mined and execution succeed
transaction hash	0xa998a8ebd16d657a71bc14cd92690fbb95af37916521a1436a9c95e876aa8f4e
block hash	0x73cdacecaf831295a276e59b709a5565ad76529e8644e352e3ccf97b07db8a16
block number	4198826
from	0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d
to	NFTMarketplace.createToken(string,uint256) 0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60
gas	300255 gas
transaction cost	280355 gas 
input	0x72b...00000
decoded input	{
	"string tokenURI": "https://ipfs.io/ipfs/QmXuYEjXNXcSfXprbgt7GZXjrFmf98dAnayz1L9sRWLPkh",
	"uint256 price": "25300000000000000"
}
decoded output	 - [




]
logs	[
	{
		"from": "0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60",
		"topic": "0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef",
		"event": "Transfer",
		"args": {
			"0": "0x0000000000000000000000000000000000000000",
			"1": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"2": "5",
			"from": "0x0000000000000000000000000000000000000000",
			"to": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"tokenId": "5"
		}
	},
	{
		"from": "0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60",
		"topic": "0xf8e1a15aba9398e019f0b49df1a4fde98ee17ae345cb5f6b5e2c27f5033e8ce7",
		"event": "MetadataUpdate",
		"args": {
			"0": "5",
			"_tokenId": "5"
		}
	},
	{
		"from": "0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60",
		"topic": "0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef",
		"event": "Transfer",
		"args": {
			"0": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"1": "0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60",
			"2": "5",
			"from": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"to": "0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60",
			"tokenId": "5"
		}
	},
	{
		"from": "0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60",
		"topic": "0x045dfa01dcba2b36aba1d3dc4a874f4b0c5d2fbeb8d2c4b34a7d88c8d8f929d1",
		"event": "MarketItemCreated",
		"args": {
			"0": "6",
			"1": "0x0000000000000000000000000000000000000000",
			"2": "5",
			"3": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"4": "0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60",
			"5": "25300000000000000",
			"6": false,
			"itemId": "6",
			"nftContract": "0x0000000000000000000000000000000000000000",
			"tokenId": "5",
			"owner": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"seller": "0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60",
			"price": "25300000000000000",
			"sold": false
		}
	}
]
val	0 wei


transact to NFTMarketplace.createToken pending ... 
view on etherscan
[block:4198852 txIndex:7]from: 0x091...2949dto: NFTMarketplace.createToken(string,uint256) 0x761...CEf60value: 0 weidata: 0x72b...00000logs: 4hash: 0x3e4...64709
status	true Transaction mined and execution succeed
transaction hash	0x693c823b556351b06cd5ef70ce381c3ee8e3a7bda8640c4677e447279e610b23
block hash	0x3e4b3b859336d52aba7b4cf3f12ef52725dc89485d791e6d1f03e2e6abf64709
block number	4198852
from	0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d
to	NFTMarketplace.createToken(string,uint256) 0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60
gas	300255 gas
transaction cost	280355 gas 
input	0x72b...00000
decoded input	{
	"string tokenURI": "https://ipfs.io/ipfs/QmV3wcMh8xAwHZagwNmyCpbYWuuhtY8CsCTTHz1yoPhpC1",
	"uint256 price": "25400000000000000"
}
decoded output	 - {

0x72b3b62000000000000000000000000000000000000000000000000000000000000000400000000000000000000000000000000000000000000000000059e23748d14000000000000000000000000000000000000000000000000000000000000000004368747470733a2f2f697066732e696f2f697066732f516d587559456a584e5863536658707262677437475a586a72466d66393864416e61797a314c397352574c506b680000000000000000000000000000000000000000000000000000000000

}
logs	[
	{
		"from": "0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60",
		"topic": "0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef",
		"event": "Transfer",
		"args": {
			"0": "0x0000000000000000000000000000000000000000",
			"1": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"2": "7",
			"from": "0x0000000000000000000000000000000000000000",
			"to": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"tokenId": "7"
		}
	},
	{
		"from": "0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60",
		"topic": "0xf8e1a15aba9398e019f0b49df1a4fde98ee17ae345cb5f6b5e2c27f5033e8ce7",
		"event": "MetadataUpdate",
		"args": {
			"0": "7",
			"_tokenId": "7"
		}
	},
	{
		"from": "0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60",
		"topic": "0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef",
		"event": "Transfer",
		"args": {
			"0": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"1": "0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60",
			"2": "7",
			"from": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"to": "0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60",
			"tokenId": "7"
		}
	},
	{
		"from": "0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60",
		"topic": "0x045dfa01dcba2b36aba1d3dc4a874f4b0c5d2fbeb8d2c4b34a7d88c8d8f929d1",
		"event": "MarketItemCreated",
		"args": {
			"0": "8",
			"1": "0x0000000000000000000000000000000000000000",
			"2": "7",
			"3": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"4": "0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60",
			"5": "25400000000000000",
			"6": false,
			"itemId": "8",
			"nftContract": "0x0000000000000000000000000000000000000000",
			"tokenId": "7",
			"owner": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"seller": "0x761a74f971B1bb5F42D3733BDf6f7EdD245CEf60",
			"price": "25400000000000000",
			"sold": false
		}
	}
]
val	0 wei

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Contract No.: 0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364

view on etherscan
[block:4198940 txIndex:15]from: 0x091...2949dto: NFTMarketplace.(constructor)value: 0 weidata: 0x608...90033logs: 0hash: 0x67a...474bf
status	true Transaction mined and execution succeed
transaction hash	0x3d7eec78d948b6b0f0fed2f1765a026269afaaf695713585311da2006098ad1d
block hash	0x67ab0992fcb9b827b7b470e48fcaed419efadffa878eceb3720d6a94116474bf
block number	4198940
contract address	0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364
from	0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d
to	NFTMarketplace.(constructor)
gas	4445697 gas
transaction cost	4445697 gas 
input	0x608...90033
decoded input	{
}
decoded output	 - 
logs	[
    
]
val	0 wei

///////////////////////////

view on etherscan
[block:4198958 txIndex:6]from: 0x091...2949dto: NFTMarketplace.createToken(string,uint256) 0x26b...Be364value: 0 weidata: 0x72b...00000logs: 4hash: 0x582...571a2
status	true Transaction mined and execution succeed
transaction hash	0x77539aee5d28b99924116cd0292380a5d964fa1a941bb092dda86d4aa322e6ba
block hash	0x582eb70ecb7ad8529a46ceb4a4db054b30d54167c3e634d77f352abd3f6571a2
block number	4198958
from	0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d
to	NFTMarketplace.createToken(string,uint256) 0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364
gas	333927 gas
transaction cost	314027 gas 
input	0x72b...00000
decoded input	{
	"string tokenURI": "ipfs://QmfLvJEjKERjLLmfSsoeQhgmBZc1AfUAiRjRAPNGp2kWrr",
	"uint256 price": "55550000000000000"
}
decoded output	 - {
}
logs	[
	{
		"from": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
		"topic": "0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef",
		"event": "Transfer",
		"args": {
			"0": "0x0000000000000000000000000000000000000000",
			"1": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"2": "1",
			"from": "0x0000000000000000000000000000000000000000",
			"to": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"tokenId": "1"
		}
	},
	{
		"from": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
		"topic": "0xf8e1a15aba9398e019f0b49df1a4fde98ee17ae345cb5f6b5e2c27f5033e8ce7",
		"event": "MetadataUpdate",
		"args": {
			"0": "1",
			"_tokenId": "1"
		}
	},
	{
		"from": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
		"topic": "0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef",
		"event": "Transfer",
		"args": {
			"0": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"1": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
			"2": "1",
			"from": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"to": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
			"tokenId": "1"
		}
	},
	{
		"from": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
		"topic": "0x045dfa01dcba2b36aba1d3dc4a874f4b0c5d2fbeb8d2c4b34a7d88c8d8f929d1",
		"event": "MarketItemCreated",
		"args": {
			"0": "1",
			"1": "0x0000000000000000000000000000000000000000",
			"2": "1",
			"3": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"4": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
			"5": "55550000000000000",
			"6": false,
			"itemId": "1",
			"nftContract": "0x0000000000000000000000000000000000000000",
			"tokenId": "1",
			"owner": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"seller": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
			"price": "55550000000000000",
			"sold": false
		}
	}
]
val	0 wei


///////////////////////////////////////////////////////////////////////////////////


view on etherscan
[block:4198988 txIndex:9]from: 0x091...2949dto: NFTMarketplace.createToken(string,uint256) 0x26b...Be364value: 0 weidata: 0x72b...00000logs: 4hash: 0x47b...ec0d9
status	true Transaction mined and execution succeed
transaction hash	0xfe8eda7f725710ad74b5e32aca61cbb8deaaae8e1cbe887df919fc025bdc89ef
block hash	0x47b3220254628799fed495253cc1d69c1d01839806ae2d057818c4c9e7dec0d9
block number	4198988
from	0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d
to	NFTMarketplace.createToken(string,uint256) 0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364
gas	282627 gas
transaction cost	262727 gas 
input	0x72b...00000
decoded input	{
	"string tokenURI": "ipfs://QmeDkPLzXL1wfkcysNh7o1R31cVjDNDKS1aYgwHKhkv58U",
	"uint256 price": "66666600000000000"
}
decoded output	 - 
logs	[
	{
		"from": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
		"topic": "0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef",
		"event": "Transfer",
		"args": {
			"0": "0x0000000000000000000000000000000000000000",
			"1": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"2": "2",
			"from": "0x0000000000000000000000000000000000000000",
			"to": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"tokenId": "2"
		}
	},
	{
		"from": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
		"topic": "0xf8e1a15aba9398e019f0b49df1a4fde98ee17ae345cb5f6b5e2c27f5033e8ce7",
		"event": "MetadataUpdate",
		"args": {
			"0": "2",
			"_tokenId": "2"
		}
	},
	{
		"from": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
		"topic": "0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef",
		"event": "Transfer",
		"args": {
			"0": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"1": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
			"2": "2",
			"from": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"to": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
			"tokenId": "2"
		}
	},
	{
		"from": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
		"topic": "0x045dfa01dcba2b36aba1d3dc4a874f4b0c5d2fbeb8d2c4b34a7d88c8d8f929d1",
		"event": "MarketItemCreated",
		"args": {
			"0": "2",
			"1": "0x0000000000000000000000000000000000000000",
			"2": "2",
			"3": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"4": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
			"5": "66666600000000000",
			"6": false,
			"itemId": "2",
			"nftContract": "0x0000000000000000000000000000000000000000",
			"tokenId": "2",
			"owner": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"seller": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
			"price": "66666600000000000",
			"sold": false
		}
	}
]
val	0 wei


//////////////////////////////////////////////////////////////////////////////////////


call to NFTMarketplace.getAllNFTs
CALL
[call]from: 0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949dto: NFTMarketplace.getAllNFTs()data: 0xe03...91b09
from	0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d
to	NFTMarketplace.getAllNFTs() 0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364
input	0xe03...91b09
decoded input	{
}
decoded output	{
	"0": "tuple(uint256,address,uint256,address,address,uint256,bool)[]: 1,0x0000000000000000000000000000000000000000,1,0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d,0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364,55550000000000000,false,2,0x0000000000000000000000000000000000000000,2,0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d,0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364,66666600000000000,false"
}
logs	[

[]

]

//////////////////////////////////////////////////////////////////////////////////////


view on etherscan
[block:4199011 txIndex:9]from: 0x091...2949dto: NFTMarketplace.createToken(string,uint256) 0x26b...Be364value: 0 weidata: 0x72b...00000logs: 4hash: 0x7fc...12aa1
status	true Transaction mined and execution succeed
transaction hash	0x284f7eed6a64fcf83a6c1d91af593d712ba9f37e25c56b33bce106c51f514a60
block hash	0x7fc0e448e7ba2b434e6e34d03a2c86cd7d87976e04236e3b10fba904c1b12aa1
block number	4199011
from	0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d
to	NFTMarketplace.createToken(string,uint256) 0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364
gas	282639 gas
transaction cost	262739 gas 
input	0x72b...00000
decoded input	{
	"string tokenURI": "ipfs://QmWihWL5qvHvfSqjHd6wR9nzR8UF5fTFdRdwEvRnHqmsVq",
	"uint256 price": "77777770000000000"
}
decoded output	 - 
logs	[
	{
		"from": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
		"topic": "0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef",
		"event": "Transfer",
		"args": {
			"0": "0x0000000000000000000000000000000000000000",
			"1": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"2": "3",
			"from": "0x0000000000000000000000000000000000000000",
			"to": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"tokenId": "3"
		}
	},
	{
		"from": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
		"topic": "0xf8e1a15aba9398e019f0b49df1a4fde98ee17ae345cb5f6b5e2c27f5033e8ce7",
		"event": "MetadataUpdate",
		"args": {
			"0": "3",
			"_tokenId": "3"
		}
	},
	{
		"from": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
		"topic": "0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef",
		"event": "Transfer",
		"args": {
			"0": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"1": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
			"2": "3",
			"from": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"to": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
			"tokenId": "3"
		}
	},
	{
		"from": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
		"topic": "0x045dfa01dcba2b36aba1d3dc4a874f4b0c5d2fbeb8d2c4b34a7d88c8d8f929d1",
		"event": "MarketItemCreated",
		"args": {
			"0": "3",
			"1": "0x0000000000000000000000000000000000000000",
			"2": "3",
			"3": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"4": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
			"5": "77777770000000000",
			"6": false,
			"itemId": "3",
			"nftContract": "0x0000000000000000000000000000000000000000",
			"tokenId": "3",
			"owner": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"seller": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
			"price": "77777770000000000",
			"sold": false
		}
	}
]
val	0 wei


//////////////////////////////////////////////////////////////////////////////////////


call to NFTMarketplace.getAllNFTs
CALL
[call]from: 0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949dto: NFTMarketplace.getAllNFTs()data: 0xe03...91b09
from	0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d
to	NFTMarketplace.getAllNFTs() 0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364
input	0xe03...91b09
decoded input	{}
decoded output	{
	"0": "tuple(uint256,address,uint256,address,address,uint256,bool)[]: 1,0x0000000000000000000000000000000000000000,1,0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d,0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364,55550000000000000,false,2,0x0000000000000000000000000000000000000000,2,0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d,0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364,66666600000000000,false,3,0x0000000000000000000000000000000000000000,3,0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d,0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364,77777770000000000,false"
}
logs	[]

\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
QmVQsppo6CcZKnt9CXgWbSXkGucR9VKkdo1k91d5t59crW


------------------------------------------------------------------------------------

 Welcome to Remix 0.35.1 

Your files are stored in indexedDB, 206.21 MB / 3.3 TB used

You can use this terminal to: 
Check transactions details and start debugging.
Execute JavaScript scripts:
 - Input a script directly in the command line interface 
 - Select a Javascript file in the file explorer and then run `remix.execute()` or `remix.exeCurrent()`  in the command line interface  
 - Right click on a JavaScript file in the file explorer and then click `Run` 
The following libraries are accessible:
web3 version 1.5.2
ethers.js 
remix
Type the library name to see available commands.
creation of NFTMarketplace pending...
view on etherscan
[block:4199286 txIndex:7]from: 0x091...2949dto: NFTMarketplace.(constructor)value: 0 weidata: 0x608...b0033logs: 0hash: 0xf21...6cea6
status	true Transaction mined and execution succeed
transaction hash	0x635bf27de8638d90c823d0eb39a2eb3fa6aa209eeb6402c688e1c0fc832d96b4
block hash	0xf214a60ce6897172c71952f6ae58cd879c4f949d6881c2a8d4f9b8e1b446cea6
block number	4199286
contract address	0x861AbE6BF1ff5468fb0D831A765Fce290a85a6C0
from	0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d
to	NFTMarketplace.(constructor)
gas	4442472 gas
transaction cost	4442472 gas 
input	0x608...b0033
decoded input	{}
decoded output	 - 
logs	[]
val	0 wei

===============================================================================


------------------------------------------------------------------------------------

transact to NFTMarketplace.createToken pending ... 
view on etherscan
[block:4199556 txIndex:1]from: 0x091...2949dto: NFTMarketplace.createToken(string,uint256) 0x26b...Be364value: 0 weidata: 0x72b...00000logs: 4hash: 0xe13...39efa
status	true Transaction mined and execution succeed
transaction hash	0x592e2ac4ac1996d9808daa47392bacf29360d069c03fd847efbab89fb302246a
block hash	0xe1397b7bb5962476ad5e7884cc490d452a33d72e9c81556cbadf29d342939efa
block number	4199556
from	0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d
to	NFTMarketplace.createToken(string,uint256) 0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364
gas	282627 gas
transaction cost	262727 gas 
input	0x72b...00000
decoded input	{
	"string tokenURI": "ipfs://QmXggsWFhoNcSzhHKmMFZn7RhUdTqrqCQTUwExhhuHnbmH",
	"uint256 price": "200000000000000000"
}
decoded output	 - 
logs	[
	{
		"from": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
		"topic": "0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef",
		"event": "Transfer",
		"args": {
			"0": "0x0000000000000000000000000000000000000000",
			"1": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"2": "4",
			"from": "0x0000000000000000000000000000000000000000",
			"to": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"tokenId": "4"
		}
	},
	{
		"from": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
		"topic": "0xf8e1a15aba9398e019f0b49df1a4fde98ee17ae345cb5f6b5e2c27f5033e8ce7",
		"event": "MetadataUpdate",
		"args": {
			"0": "4",
			"_tokenId": "4"
		}
	},
	{
		"from": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
		"topic": "0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef",
		"event": "Transfer",
		"args": {
			"0": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"1": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
			"2": "4",
			"from": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"to": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
			"tokenId": "4"
		}
	},
	{
		"from": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
		"topic": "0x045dfa01dcba2b36aba1d3dc4a874f4b0c5d2fbeb8d2c4b34a7d88c8d8f929d1",
		"event": "MarketItemCreated",
		"args": {
			"0": "4",
			"1": "0x0000000000000000000000000000000000000000",
			"2": "4",
			"3": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"4": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
			"5": "200000000000000000",
			"6": false,
			"itemId": "4",
			"nftContract": "0x0000000000000000000000000000000000000000",
			"tokenId": "4",
			"owner": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"seller": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
			"price": "200000000000000000",
			"sold": false
		}
	}
]
val	0 wei


===============================================================================


------------------------------------------------------------------------------------

transact to NFTMarketplace.createToken pending ... 
view on etherscan
[block:4199566 txIndex:4]from: 0x091...2949dto: NFTMarketplace.createToken(string,uint256) 0x26b...Be364value: 0 weidata: 0x72b...00000logs: 4hash: 0x965...7f775
status	true Transaction mined and execution succeed
transaction hash	0x72ea525c3253441e31a3056ad4283839563fccb473d2e02674c2381705b2af82
block hash	0x965cb9fc51f5896f2f06b712997ac5db402ec720ea627addcdb317829b57f775
block number	4199566
from	0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d
to	NFTMarketplace.createToken(string,uint256) 0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364
gas	282627 gas
transaction cost	262727 gas 
input	0x72b...00000
decoded input	{
	"string tokenURI": "ipfs://Qmdp9aBiT1wvDg358xvcqK4GZ1nUF9vii3AZdiKt9wsxnh",
	"uint256 price": "3050000000000000000"
}
decoded output	 - 
logs	[
	{
		"from": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
		"topic": "0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef",
		"event": "Transfer",
		"args": {
			"0": "0x0000000000000000000000000000000000000000",
			"1": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"2": "5",
			"from": "0x0000000000000000000000000000000000000000",
			"to": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"tokenId": "5"
		}
	},
	{
		"from": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
		"topic": "0xf8e1a15aba9398e019f0b49df1a4fde98ee17ae345cb5f6b5e2c27f5033e8ce7",
		"event": "MetadataUpdate",
		"args": {
			"0": "5",
			"_tokenId": "5"
		}
	},
	{
		"from": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
		"topic": "0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef",
		"event": "Transfer",
		"args": {
			"0": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"1": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
			"2": "5",
			"from": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"to": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
			"tokenId": "5"
		}
	},
	{
		"from": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
		"topic": "0x045dfa01dcba2b36aba1d3dc4a874f4b0c5d2fbeb8d2c4b34a7d88c8d8f929d1",
		"event": "MarketItemCreated",
		"args": {
			"0": "5",
			"1": "0x0000000000000000000000000000000000000000",
			"2": "5",
			"3": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"4": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
			"5": "3050000000000000000",
			"6": false,
			"itemId": "5",
			"nftContract": "0x0000000000000000000000000000000000000000",
			"tokenId": "5",
			"owner": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"seller": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
			"price": "3050000000000000000",
			"sold": false
		}
	}
]
val	0 wei


===============================================================================


------------------------------------------------------------------------------------

transact to NFTMarketplace.createToken pending ... 
view on etherscan
[block:4199573 txIndex:4]from: 0x091...2949dto: NFTMarketplace.createToken(string,uint256) 0x26b...Be364value: 0 weidata: 0x72b...00000logs: 4hash: 0xa6a...afe8a
status	true Transaction mined and execution succeed
transaction hash	0x29fe51961fcd8b6950433700e6baabc4ac8c079cfa79132a277de12197f7b5fd
block hash	0xa6a066ba3a3cd5a992cc0a4f3955eeae6a8f4f30e08d6e51526454f7cc8afe8a
block number	4199573
from	0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d
to	NFTMarketplace.createToken(string,uint256) 0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364
gas	282639 gas
transaction cost	262739 gas 
input	0x72b...00000
decoded input	{
	"string tokenURI": "ipfs://QmTqhccF2rD8Zd7TEMLxRVudJg14txavKySSkBLkdM2v2J",
	"uint256 price": "440550000000000000"
}
decoded output	 - 
logs	[
	{
		"from": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
		"topic": "0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef",
		"event": "Transfer",
		"args": {
			"0": "0x0000000000000000000000000000000000000000",
			"1": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"2": "6",
			"from": "0x0000000000000000000000000000000000000000",
			"to": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"tokenId": "6"
		}
	},
	{
		"from": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
		"topic": "0xf8e1a15aba9398e019f0b49df1a4fde98ee17ae345cb5f6b5e2c27f5033e8ce7",
		"event": "MetadataUpdate",
		"args": {
			"0": "6",
			"_tokenId": "6"
		}
	},
	{
		"from": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
		"topic": "0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef",
		"event": "Transfer",
		"args": {
			"0": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"1": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
			"2": "6",
			"from": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"to": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
			"tokenId": "6"
		}
	},
	{
		"from": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
		"topic": "0x045dfa01dcba2b36aba1d3dc4a874f4b0c5d2fbeb8d2c4b34a7d88c8d8f929d1",
		"event": "MarketItemCreated",
		"args": {
			"0": "6",
			"1": "0x0000000000000000000000000000000000000000",
			"2": "6",
			"3": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"4": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
			"5": "440550000000000000",
			"6": false,
			"itemId": "6",
			"nftContract": "0x0000000000000000000000000000000000000000",
			"tokenId": "6",
			"owner": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"seller": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
			"price": "440550000000000000",
			"sold": false
		}
	}
]
val	0 wei


===============================================================================


------------------------------------------------------------------------------------

transact to NFTMarketplace.createToken pending ... 
view on etherscan
[block:4199582 txIndex:3]from: 0x091...2949dto: NFTMarketplace.createToken(string,uint256) 0x26b...Be364value: 0 weidata: 0x72b...00000logs: 4hash: 0xf3c...40aa7
status	true Transaction mined and execution succeed
transaction hash	0x29969801517e4237c6f036dcfdf8d1213cc312b06a9d413beb8f09e16974e703
block hash	0xf3c4f92f1682071c7eb20668ee54f772c3357d2d0f25be6a035f3ed377540aa7
block number	4199582
from	0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d
to	NFTMarketplace.createToken(string,uint256) 0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364
gas	282639 gas
transaction cost	262739 gas 
input	0x72b...00000
decoded input	{
	"string tokenURI": "ipfs://QmVYUUCCiy1J3eG6TmeejP2du9evRTJyg3C7XW2Maa4xBR",
	"uint256 price": "770660000000000000"
}
decoded output	 - 
logs	[
	{
		"from": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
		"topic": "0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef",
		"event": "Transfer",
		"args": {
			"0": "0x0000000000000000000000000000000000000000",
			"1": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"2": "7",
			"from": "0x0000000000000000000000000000000000000000",
			"to": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"tokenId": "7"
		}
	},
	{
		"from": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
		"topic": "0xf8e1a15aba9398e019f0b49df1a4fde98ee17ae345cb5f6b5e2c27f5033e8ce7",
		"event": "MetadataUpdate",
		"args": {
			"0": "7",
			"_tokenId": "7"
		}
	},
	{
		"from": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
		"topic": "0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef",
		"event": "Transfer",
		"args": {
			"0": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"1": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
			"2": "7",
			"from": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"to": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
			"tokenId": "7"
		}
	},
	{
		"from": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
		"topic": "0x045dfa01dcba2b36aba1d3dc4a874f4b0c5d2fbeb8d2c4b34a7d88c8d8f929d1",
		"event": "MarketItemCreated",
		"args": {
			"0": "7",
			"1": "0x0000000000000000000000000000000000000000",
			"2": "7",
			"3": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"4": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
			"5": "770660000000000000",
			"6": false,
			"itemId": "7",
			"nftContract": "0x0000000000000000000000000000000000000000",
			"tokenId": "7",
			"owner": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"seller": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
			"price": "770660000000000000",
			"sold": false
		}
	}
]
val	0 wei



===============================================================================



------------------------------------------------------------------------------------

transact to NFTMarketplace.createToken pending ... 
view on etherscan
[block:4199594 txIndex:6]from: 0x091...2949dto: NFTMarketplace.createToken(string,uint256) 0x26b...Be364value: 0 weidata: 0x72b...00000logs: 4hash: 0x876...84ddb
status	true Transaction mined and execution succeed
transaction hash	0x9edda206cbbfc4f287cfb20b11b7bca51f2fb2cc1c3da163a5adf0ec981276e2
block hash	0x8763318f1facae1d450d2ac37d1d76e55164e532a56a89a367bc531ea5a84ddb
block number	4199594
from	0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d
to	NFTMarketplace.createToken(string,uint256) 0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364
gas	282639 gas
transaction cost	262739 gas 
input	0x72b...00000
decoded input	{
	"string tokenURI": "ipfs://QmXkmcZDzBbff35YQc2jFRkebBypYRzittc8fJEB4SNSNF",
	"uint256 price": "880770000000000000"
}
decoded output	 - 
logs	[
	{
		"from": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
		"topic": "0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef",
		"event": "Transfer",
		"args": {
			"0": "0x0000000000000000000000000000000000000000",
			"1": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"2": "8",
			"from": "0x0000000000000000000000000000000000000000",
			"to": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"tokenId": "8"
		}
	},
	{
		"from": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
		"topic": "0xf8e1a15aba9398e019f0b49df1a4fde98ee17ae345cb5f6b5e2c27f5033e8ce7",
		"event": "MetadataUpdate",
		"args": {
			"0": "8",
			"_tokenId": "8"
		}
	},
	{
		"from": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
		"topic": "0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef",
		"event": "Transfer",
		"args": {
			"0": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"1": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
			"2": "8",
			"from": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"to": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
			"tokenId": "8"
		}
	},
	{
		"from": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
		"topic": "0x045dfa01dcba2b36aba1d3dc4a874f4b0c5d2fbeb8d2c4b34a7d88c8d8f929d1",
		"event": "MarketItemCreated",
		"args": {
			"0": "8",
			"1": "0x0000000000000000000000000000000000000000",
			"2": "8",
			"3": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"4": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
			"5": "880770000000000000",
			"6": false,
			"itemId": "8",
			"nftContract": "0x0000000000000000000000000000000000000000",
			"tokenId": "8",
			"owner": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"seller": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
			"price": "880770000000000000",
			"sold": false
		}
	}
]
val	0 wei


===============================================================================



------------------------------------------------------------------------------------

transact to NFTMarketplace.createToken pending ... 
view on etherscan
[block:4199596 txIndex:7]from: 0x091...2949dto: NFTMarketplace.createToken(string,uint256) 0x26b...Be364value: 0 weidata: 0x72b...00000logs: 4hash: 0xdb2...0e823
status	true Transaction mined and execution succeed
transaction hash	0xe6f76636d4fc6e93196319302086e17ccc7f554df8bb717252a9114712821441
block hash	0xdb2f2bf8a4571e8208d39a3d960a585116e58fe5414c48d7d24f997372c0e823
block number	4199596
from	0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d
to	NFTMarketplace.createToken(string,uint256) 0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364
gas	282639 gas
transaction cost	262739 gas 
input	0x72b...00000
decoded input	{
	"string tokenURI": "ipfs://QmWUmesdwELmUJ4mWJCX2eYaeDxi9V5uT2TzDy5pgLwtP6",
	"uint256 price": "101008800000000000"
}
decoded output	 - 
logs	[
	{
		"from": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
		"topic": "0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef",
		"event": "Transfer",
		"args": {
			"0": "0x0000000000000000000000000000000000000000",
			"1": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"2": "9",
			"from": "0x0000000000000000000000000000000000000000",
			"to": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"tokenId": "9"
		}
	},
	{
		"from": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
		"topic": "0xf8e1a15aba9398e019f0b49df1a4fde98ee17ae345cb5f6b5e2c27f5033e8ce7",
		"event": "MetadataUpdate",
		"args": {
			"0": "9",
			"_tokenId": "9"
		}
	},
	{
		"from": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
		"topic": "0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef",
		"event": "Transfer",
		"args": {
			"0": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"1": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
			"2": "9",
			"from": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"to": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
			"tokenId": "9"
		}
	},
	{
		"from": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
		"topic": "0x045dfa01dcba2b36aba1d3dc4a874f4b0c5d2fbeb8d2c4b34a7d88c8d8f929d1",
		"event": "MarketItemCreated",
		"args": {
			"0": "9",
			"1": "0x0000000000000000000000000000000000000000",
			"2": "9",
			"3": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"4": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
			"5": "101008800000000000",
			"6": false,
			"itemId": "9",
			"nftContract": "0x0000000000000000000000000000000000000000",
			"tokenId": "9",
			"owner": "0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d",
			"seller": "0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364",
			"price": "101008800000000000",
			"sold": false
		}
	}
]
val	0 wei


===============================================================================


------------------------------------------------------------------------------------

call to NFTMarketplace.getAllNFTs
CALL
[call]from: 0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949dto: NFTMarketplace.getAllNFTs()data: 0xe03...91b09
from	0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d
to	NFTMarketplace.getAllNFTs() 0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364
input	0xe03...91b09
decoded input	{}
decoded output	{
	"0": "tuple(uint256,address,uint256,address,address,uint256,bool)[]: 1,0x0000000000000000000000000000000000000000,1,0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d,0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364,55550000000000000,false,2,0x0000000000000000000000000000000000000000,2,0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d,0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364,66666600000000000,false,3,0x0000000000000000000000000000000000000000,3,0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d,0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364,77777770000000000,false,4,0x0000000000000000000000000000000000000000,4,0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d,0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364,200000000000000000,false,5,0x0000000000000000000000000000000000000000,5,0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d,0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364,3050000000000000000,false,6,0x0000000000000000000000000000000000000000,6,0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d,0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364,440550000000000000,false,7,0x0000000000000000000000000000000000000000,7,0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d,0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364,770660000000000000,false,8,0x0000000000000000000000000000000000000000,8,0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d,0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364,880770000000000000,false,9,0x0000000000000000000000000000000000000000,9,0x09100e12ACb6865bCe40B7B7B8654CD5C7c2949d,0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364,101008800000000000,false"
}
logs	[]


===============================================================================



------------------------------------------------------------------------------------

last remix NFTMarketplace contract address: 0x26bc5F045fFfc9DC006A7e7008Ec29F2e24Be364
last hardhat NFTMarketplace 0x51626eA1DB6AcFD73144683dE5278Dd2B548Db85
last hardhat StringCheese contract address: 0xc9921ecdD6009Dd45417daD14B3db54af1A7D1bf

===============================================================================
