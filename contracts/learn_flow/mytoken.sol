// File: MyToken.sol
pragma solidity 0.5.1;
import "./erc20token.sol";

/**
 * @title MyToken
 * Inherits from ERC20Token and adds custom functionality.
 */
contract MyToken is ERC20Token {
    string public symbol;
    address[] public owners;
    uint256 public ownerCount;

    constructor(string memory _name, string memory _symbol) ERC20Token(_name) public {
        symbol = _symbol;
    }

    function mint() public {
        super.mint();
        ownerCount++;
        owners.push(msg.sender);
    }
}

