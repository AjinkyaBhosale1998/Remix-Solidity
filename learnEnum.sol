pragma solidity >= 0.7.0 < 0.9.0;

contract learnEnum {
    enum frenchFriesSize { LARGE, MEDIUM, SMALL}
    frenchFriesSize choice;
    frenchFriesSize constant deafaultChoice = frenchFriesSize.MEDIUM;

    function setSmall() public {
        choice = frenchFriesSize.SMALL;
    }

    function getChoice() public view returns (frenchFriesSize) {
        return choice;
    }

    function getDefaultChoice() public view returns (uint) {
        return uint(deafaultChoice);
    }
}