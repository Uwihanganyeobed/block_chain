// SPDX-License-Identifier: MIT
pragma solidity 0.4.25;

contract Hello{
    string message;

    constructor(string memory first_Message ) public{ 
        message = first_Message;
    }
    function addNew(string memory current_Message)public{
        message = current_Message;
    }
}

