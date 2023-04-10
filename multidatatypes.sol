pragma solidity >= 0.7.0 < 0.9.0;

contract DestructingFucntions {

    uint public changevalue;
    string public tom='hello';

    function f() public pure returns (uint , bool , string memory) {
        return (3 , true , 'Goodbye');
    }

    function g() public
    {
        (changevalue , , tom) = f();
    }
}