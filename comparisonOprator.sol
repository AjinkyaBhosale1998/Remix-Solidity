pragma solidity >= 0.7.0 < 0.9.0;
 contract comparisonoprator {

    uint a= 4;
    uint b= 6;

    function compare() view public {
        require(a > b , 'That is false');
    }
 }