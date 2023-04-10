pragma solidity >= 0.7.0 < 0.9.0;
contract C {
    uint public data = 10; 

    function x() public returns (uint) {
        data =17;
        return data;
    }

    function y() public view returns (uint) {
        return data;
    }
}
