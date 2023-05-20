//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract myNFT is ERC721URIStorage, Ownable {


    using Counters for Counters.Counter;//counter ek library hh jise yahan maii use kr rha hu

    Counters.Counter private _tokenIds;//counters ka yahan use kr rha hu, tokenID ek token id hh 

    constructor() ERC721("hey_ZETA","zZ") {} //hey_ZETA nft ka name hh aur zZ iska symbol hh

    function mintNFT(address recipent, string memory tokenURI) public onlyOwner returns(uint256) //nft ko mint(create) kr rha hu, 
    { 
        _tokenIds.increment();//hr token id jb bhi generate ho wo unique rhe islye increment use kr rha hu

        uint256 newItemId = _tokenIds.current(); 
        _mint(recipent,newItemId);
        _setTokenURI(newItemId,tokenURI);
        return newItemId;
    }

    
}




