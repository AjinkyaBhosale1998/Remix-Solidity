pragma solidity >= 0.7.0 < 0.9.0;

contract map{

    mapping(uint => string) public roll_no;

    function setter(uint keys, string memory value) public {
        
        roll_no[keys]=value;
    }
}