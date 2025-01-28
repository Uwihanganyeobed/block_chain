// SPDX-License-Identifier: MIT
pragma solidity 0.4.25;

contract Counter{
    int public counter;
    // increment counter

    function increment_Amount()public {
        counter +=1;
    }
    // Decrement Counter

    function decrement_Account()public {
        counter -=1;
    }
    
    // reset counter

    function reset_Account()public {
        counter=0;
    }


}