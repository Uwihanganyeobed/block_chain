// File: Math.sol
pragma solidity 0.5.1;

/**
 * @title Math
 * Library for basic mathematical operations.
 */
library Math {
    function divide(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b > 0, "Cannot divide by zero");
        return a / b;
    }
}

