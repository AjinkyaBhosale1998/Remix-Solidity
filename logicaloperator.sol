pragma solidity >= 0.7.0 < 0.9.0;
 contract logicaloperator {

    uint a= 4;
    uint b= 5;

    function logic() view public returns (uint) {
        uint result =0;
        if(a < b || a == 5) {
            result = a + b;
        }
        return result;
    }
}
