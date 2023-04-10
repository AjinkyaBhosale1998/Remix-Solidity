pragma solidity >= 0.7.0 < 0.9.0;

contract modifiers { 
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyowner {
        require(msg.sender == owner);
        _;
    }

    function sendMoney() public onlyowner {
        
    }
}