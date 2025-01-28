// SPDX-License-Identifier: MIT
pragma solidity ^0.5.1;

contract Operator {
    uint256 public num1;
    uint256 public num2;
    uint256 public result;

    constructor(uint256 _num1, uint256 _num2) public {
        num1 = _num1;
        num2 = _num2;
    }

    function calculate(string memory operation) public returns (uint256) {
        if (
            keccak256(abi.encodePacked(operation)) ==
            keccak256(abi.encodePacked("+"))
        ) {
            result = num1 + num2;
        } else if (
            keccak256(abi.encodePacked(operation)) ==
            keccak256(abi.encodePacked("-"))
        ) {
            require(num1 >= num2, "Subtraction result cannot be negative");
            result = num1 - num2;
        } else if (
            keccak256(abi.encodePacked(operation)) ==
            keccak256(abi.encodePacked("/"))
        ) {
            require(num2 > 0, "Division result cannot be 0");
            result = num1 / num2;
        } else if (
            keccak256(abi.encodePacked(operation)) ==
            keccak256(abi.encodePacked("*"))
        ) {
            result = num1 * num2;
        } else {
            revert("Unsupported operation");
        }
        return result;
    }
}
