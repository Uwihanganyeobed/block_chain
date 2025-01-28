// File: Enums.sol
pragma solidity 0.5.1;

/**
 * @title Enums
 * Demonstrates usage of enums in Solidity.
 */
contract Enums {
    enum State { Waiting, Sleepy, Active } // Define possible states
    State public state;

    constructor() public {
        state = State.Waiting; // Set default state
    }

    function activate() public {
        state = State.Active;
    }

    function deactivate() public {
        state = State.Sleepy;
    }

    function isActive() public view returns (bool) {
        return state == State.Active;
    }

    function isSleepy() public view returns (bool) {
        return state == State.Sleepy;
    }
}
