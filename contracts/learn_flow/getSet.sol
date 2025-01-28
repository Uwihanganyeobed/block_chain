// File: GetSet.sol
pragma solidity 0.5.1;

/**
 * @title GetSet
 * Demonstrates getter and setter functions.
 */
contract GetSet {
    string public value;

    function get() public view returns (string memory) {
        return value;
    }

    function set(string memory _value) public {
        value = _value;
    }
}

