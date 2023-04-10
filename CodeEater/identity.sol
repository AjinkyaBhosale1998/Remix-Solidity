pragma solidity >= 0.7.0 < 0.9.0;

contract identity {

    string name; 
    uint age ;

    constructor () public {
        name ='Aj';
        age =18;
    }

    function getName() view public returns (string memory)
    {
        return name;
    }

    function getAge() view public returns(uint)
    {
        return age;
    } 

    function setAge() public {
        age = age + 1;
    }
}