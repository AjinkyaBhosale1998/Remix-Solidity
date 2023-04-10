pragma solidity >= 0.7.0 < 0.9.0;

contract learnfunctionAddition {
function remoteControlOpen(bool closedDoor ) public returns(bool) {

}
function addValues () public view returns(uint) {
    uint a= 10;
    uint b =20;
    uint ab = a + b;
    return ab;

}

function addNewValues () public view returns(uint) {
    uint a= 100;
    uint b =200;
    uint ab = a + b;
    return ab;

}

function multiplyValues (uint a, uint b) public view returns (uint) {
 uint result = (a * b);
 return result;
}

function divideValues (uint a, uint b) public view returns (uint) {
 uint result = (a / b);
 return result;
}
}