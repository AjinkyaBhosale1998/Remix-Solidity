pragma solidity >= 0.7.0 < 0.9.0;

contract AssignmentOperator {
    uint b = 4;
    uint a = 3;
 
    function assign() public view returns(uint) {
            uint c = 2;

           // return c + c + b;
            return c = c + c + b;
    }
}
