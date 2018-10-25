pragma solidity ^0.4.23;

contract BetaToken {
    //constructor
    //set the total number of token
    //read the total number of token
    uint256 public totalSupply;
    constructor() public {
        totalSupply = 1000000;
    }
}