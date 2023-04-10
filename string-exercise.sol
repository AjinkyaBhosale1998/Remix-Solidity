pragma solidity >= 0.7.0 < 0.9.0;

contract stringexe {

string favoriteColor = 'blue';

function getColor() public view returns (string memory) {
    return favoriteColor;
}
function changeColor(string memory _color) public view  {
    favoriteColor = _color;
}
function getcolorLength() public view returns(uint) {
    bytes memory stringToBytes = bytes(favoriteColor);
    return stringToBytes.length;
}
}