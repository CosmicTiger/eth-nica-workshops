// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "@openzeppelin/contracts@5.0.0/token/ERC721/ERC721.sol";
import "@openzeppelin/contract@5.0.0/access/Ownable.sol";

contract PawrollNFT is ERC721 {
    uint256 public nextTokenId;

    constructor() ERC721("PawrollNFT", "PAWNFT") Ownable(msg.sender){
    }

    function setMintingManager(address newMintingManager) public onlyOwner {
//mintingManager = newMintingManager;
    }

    //add address public mintingmanager, solo la direccion del minting manager puede realizar mint y el owner puede cambiar el minting manager
    function mint(address to) external {
        uint256 tokenId = nextTokenId;
        nextTokenId++;
        _safeMint(to, tokenId);
    }
}