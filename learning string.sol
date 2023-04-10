pragma solidity >= 0.7.0 < 0.9.0;

contract myLoopingContract {

string greetings = 'hello';

    function sayhello() public view returns ( string memory) {
        return greetings;
    }
//change to input string 
    function changeGreeting(string memory _change) public {
        greetings = _change;
    }

    //gives number in string
    function getChar() public view returns (uint) {
        bytes memory stringToBytes = bytes(greetings);
        return stringToBytes.length;
    }


}