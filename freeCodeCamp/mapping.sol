pragma solidity >= 0.7.0 < 0.9.0;

contract mymapping {

    mapping (address => uint) public myMap;

    function getAddress(address _addr) public view returns(uint) {
        return myMap[_addr];
    }

    function setAddress(address _addr , uint _i) public {
        myMap[_addr] =_i;
    }

    function removeAddress(address _addr) public {
        delete myMap[_addr];
    }
}