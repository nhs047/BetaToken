pragma solidity ^0.4.23;

contract BetaToken {
    //constructor
    //set the total number of token
    //read the total number of token
    uint256 public totalSupply;
    string public name = "Beta Token";
    string public symbol = "-_-";
    string public standard = "version 1.1";
    mapping(address => uint256) public balanceOf;

    event Transfer(
        address indexed _from,
        address indexed _to,
        uint256 _value
    );
    
    constructor(uint256 _initalSupply) public {
        balanceOf[msg.sender] = _initalSupply;
        totalSupply = _initalSupply;
    }

    function transfer(address _to, uint256 _value) public returns (bool success) {
        require(balanceOf[msg.sender] >= _value);
        balanceOf[msg.sender] -= _value;
        balanceOf[_to] +=_value;
        Transfer(msg.sender, _to, _value);
        return true;
    }
}