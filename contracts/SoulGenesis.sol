// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract SoulGenesis is ERC1155, Ownable {
    uint256 public token_id = 0;

    constructor() ERC1155("https://rmiydsepdmabbruqokbh.supabase.in/storage/v1/object/public/images/stage2/json/{id}.json") {}

    function setURI(string memory newuri) public onlyOwner {
        _setURI(newuri);
    }

    function mint(address account) public {
        token_id ++;
        _mint(account, token_id, 1, "");
    }

    function mintBatch(address to, uint256[] memory ids, uint256[] memory amounts, bytes memory data)
        public
        onlyOwner
    {
        _mintBatch(to, ids, amounts, data);
    }
}
