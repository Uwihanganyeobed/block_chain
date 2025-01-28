// SPDX-License-Identifier: MIT
pragma solidity 0.5.1;
import "./Math.sol";
contract MyContract{
    /*______________variables__________________*/ 
    // string public value="myValue";
    // bool public isValid=true;
    // int public myId=-1;
    // uint public myUint=1;
    // uint8 public myByte = 8;

    /*_____________________enums__________________*/
    
    // enum State {Waiting,Sleepy,Active}
    // State public state;
    // constructor()public  {
    //     state = State.Waiting;
    // }
    // function activate()public {
    //     state = State.Active;
    // }
    // function deActivate()public {
    //     state = State.Sleepy;
    // }

    // function isActive()public view returns(bool)  {
    //     return  state == State.Active;
    // }
    // function isSleepy()public view returns (bool){
    //     return  state == State.Sleepy;
    // }

    /*We can set value to default one in whole contract*/ 
    // constructor()public  {
    //     value= "myValue";
    // }
    /*____________________Contract_paying ether and buying_tokens__________________*/
    // mapping(address =>uint256) public balances;
    // address payable wallet;

    // constructor(address payable _wallet) public {
    //     wallet = _wallet;
    // }
    // function buyToken()public payable {
    //     // buy token
    //     balances[msg.sender]+=1;
    //     // send to wallet
    //     wallet.transfer(msg.value);
    // }


    /*!______ public variables can be visible free on block-chain__________*/ 
    // function get()public view  returns(string memory) {
    //     return  value;
    // }

    // function set(string memory _value)public {
    //     value = _value;
    // }


    
   

 /*__________________inheritance_________________*/

// contract ERC20Token{
//     string public name;
//     mapping(address=> uint256) public  balances;

//     constructor(string memory _name)public {
//         name = _name;
//     }

//     function mint()public {
//         balances[tx.origin] ++;
//     }
// } //end of contract

// contract MyToken is ERC20Token{
//     string public symbol;
//     address[] public owners;
//     uint256 ownerCount;
//     constructor(string memory _name, string memory _symbol) ERC20Token(_name)public  {
//         symbol=_symbol;
//     }
//     function mint() public {
//         super.mint();
//         ownerCount++;
//         owners.push(msg.sender);
//     }
// }

/*_____________LIbraries(User-Defined_&_Built-in_Functions)_______________*/


uint256 public value;
function calculate(uint _value1, uint _value2) public {
    value = Math.divide(_value1, _value2);
}

}
