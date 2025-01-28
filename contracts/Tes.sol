// SPDX-License-Identifier: MIT
pragma solidity 0.4.25;

contract TestApp{
    constructor()public  {
    
    }
    function getResult() public pure returns(uint){
        uint a =100;
        uint b =200;
        uint result = a+b;
        return result;
    }
}