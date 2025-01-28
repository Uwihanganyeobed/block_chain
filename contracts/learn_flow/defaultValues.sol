// File: DefaultValues.sol
pragma solidity 0.5.1;

/**
 * @title DefaultValues
 * Demonstrates setting default values in constructors.
 */
contract DefaultValues {
    string public value;

    constructor() public {
        value = "myValue"; // Set a default value
    }
}
