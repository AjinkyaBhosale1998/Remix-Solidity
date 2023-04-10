
// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity >=0.7.0 < 0.9.0;

contract mymapping1 {
    // maping (key => value) map_name;

    mapping(uint => string) public student;

    function addValue (string memory name , uint rollNo ) public {
        //map_name[key]=value;

        student[rollNo]=name;
    }
}