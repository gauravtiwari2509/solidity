// SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.0;
contract NftCounter{
    uint256 num_of_nft;
    
    function addNft() public {
        num_of_nft +=1;
    }
    function removeNft() public{
        num_of_nft -=1; 
    }
    function showNft() view public returns(uint256){
        return num_of_nft;
    }
}