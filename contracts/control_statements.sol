// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Operator {
    uint256 public num1;
    uint256 public num2;

    constructor(uint256 _num1, uint256 _num2) {
        num1 = _num1;
        num2 = _num2;
    }

    function calculate(string memory operation) public view returns (uint256) {
        if (keccak256(abi.encodePacked(operation)) == keccak256(abi.encodePacked("+"))) {
            return num1 + num2;
        } else if (keccak256(abi.encodePacked(operation)) == keccak256(abi.encodePacked("-"))) {
            require(num1 >= num2, "Subtraction result cannot be negative");
            return num1 - num2;
        } else if(keccak256(abi.encodePacked(operation))== keccak256(abi.encodePacked("/"))) {
              require(num2 >0, "Division result cannot be 0");
              return  num1/num2;
        }
         else if(keccak256(abi.encodePacked(operation))== keccak256(abi.encodePacked("*"))) {
              return  num1*num2;
        }
          else{
            revert("Unsupported operation");
        }
    }
}
