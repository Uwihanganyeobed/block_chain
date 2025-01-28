// File: UsingLibraries.sol
pragma solidity 0.5.1;
import "./math.sol";

/**
 * @title UsingLibraries
 * Demonstrates the use of a library in Solidity.
 */
contract UsingLibraries {
    uint256 public value;

    function calculate(uint256 _value1, uint256 _value2) public {
        value = Math.divide(_value1, _value2);
    }
}
