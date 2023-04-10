pragma solidity >= 0.7.0 < 0.9.0;

contract mymapps{

    //mapping from address to uint 
    
    mapping (address => uint) public mymap;

    function get(address _addr) public view returns (uint) {
        //mapping always returns a value if value was never set it will return deafult value.
        return mymap[_addr];
    }

    function set(address _addr , uint _i ) public {
        mymap[_addr] = _i;
    }

    function remove(address _addr) public {
        delete mymap[_addr];

    }
 }

 contract NestedMapping {
     //Nested mapping (mapping from address to another mapping
     mapping(address => mapping(uint =>bool)) public nested;
 
    function get(address _addr1, uint _i) public view returns (bool) {
        return nested[_addr1][_i];
    }

    function set(address _addr1 ,uint _i ,bool _boo) public {
        nested[_addr1][_i]= _boo;
    }

    function remove (address _addr1, uint _i) public {
        delete nested[_addr1][_i];
    }
 }