pragma solidity >= 0.7.0 < 0.9.0;

contract funString {
    
    string value;

    constructor() public  {
        value = "Ajinkya";
    }

    function get() public view returns (string memory) {
       return value;
    }

    function set(string memory _value) public {
        value = _value;
    }
}