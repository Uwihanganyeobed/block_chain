// File: Main.sol
pragma solidity 0.5.1;
import "./variables.sol";
import "./enums.sol";
import "./defaultValues.sol";
import "./payable.sol";
import "./getSet.sol";
import "./mytoken.sol";
import "./uselibraries.sol";

/**
 * @title Main
 * Combines all the contracts to showcase their usage.
 */
contract Main {
    // Example contracts initialized for demonstration
    Variables public variables = new Variables();
    Enums public enums = new Enums();
    DefaultValues public defaults = new DefaultValues();
    Payable public payableContract;
    GetSet public getSet = new GetSet();
    MyToken public myToken;
    UsingLibraries public usingLibraries = new UsingLibraries();

    constructor(address payable _wallet, string memory _name, string memory _symbol) public {
        payableContract = new Payable(_wallet);
        myToken = new MyToken(_name, _symbol);
    }
}
