pragma solidity >= 0.7.0 < 0.9.0;

// View functions ensure that they will not modify the state (return values). 
// Pure functions ensure that they not read or modify the state (return calculations).

contract MyContract {
    
uint value;


// getValue is a read only function that returns a value  
function getValue() external view returns(uint) {
    // eth call 
    // value = 2;
    return value; 
}

function getNewValue() external pure returns(uint) {
    // eth call 
    // value = 2;
    return 3 + 3; 
}


// setValue modifies the state value 
function setValue(uint _value) external {
    // eth send transaction 
    value = _value;
}

function multiply() external pure returns(uint) {
    return 3 * 7;
}

function valuePlusThree() external view returns(uint) {
    return value + 3;
}

}
