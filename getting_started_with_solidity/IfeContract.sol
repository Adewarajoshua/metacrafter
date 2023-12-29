// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

/**
 * @title IfeContract
 * @dev A simple token contract demonstrating minting and burning functionalities.
 */
contract IfeContract {

   // Mapping variable
    mapping(address => uint) public balance;

    // Global variables
uint public totalSupply = 0;
    string public tokenName = 'IfeToken';
    string public tokenSymbol = 'IFT';
    

    /**
     * @dev Burns tokens, reducing the total supply and sender's balance.
     * @param _value The amount of tokens to burn.
     * @param _address The address of the sender.
     */
    function burn(uint _value, address _address) public {
        require(balance[_address] >= _value, "Insufficient balance");
        totalSupply -= _value;
        balance[_address] -= _value;
    }

    /**
     * @dev Mints new tokens, increasing the total supply and sender's balance.
     * @param _value The amount of tokens to mint.
     * @param _address The address of the sender.
     */
    function mint(uint _value, address _address) public {
        totalSupply += _value;
        balance[_address] += _value;
    }
}
