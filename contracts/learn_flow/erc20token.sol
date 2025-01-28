// File: ERC20Token.sol
pragma solidity 0.5.1;

/**
 * @title ERC20Token
 * Basic implementation of an ERC20-like token.
 */
contract ERC20Token {
    string public name;
    mapping(address => uint256) public balances;

    constructor(string memory _name) public {
        name = _name;
    }

    function mint() public {
        balances[tx.origin]++; // Increment balance for transaction originator
    }
}

