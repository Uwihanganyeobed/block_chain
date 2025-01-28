// File: Payable.sol
pragma solidity 0.5.1;

/**
 * @title Payable
 * Demonstrates payable functions and buying tokens.
 */
contract Payable {
    mapping(address => uint256) public balances; // Track token balances
    address payable public wallet; // Wallet to receive Ether

    constructor(address payable _wallet) public {
        wallet = _wallet; // Initialize wallet
    }

    function buyToken() public payable {
        balances[msg.sender] += 1; // Increment token balance
        wallet.transfer(msg.value); // Transfer Ether to wallet
    }
}
