pragma solidity >= 0.7.0 < 0.9.0;


contract Oracle {
    address admin;
    uint public rand;
    
    constructor() public {
        admin = msg.sender;
}

    function feedRand(uint _rand) external {
        require(msg.sender == admin);
        rand = _rand;
    }

}


contract GenerateRandomNumber {
    
    Oracle oracle; 
    
    constructor(address oracleAddress) {
        oracle = Oracle(oracleAddress);
    }
    
    // Build a random number generator which takes an input range and uses cryptographic hashing 
    // modulo (%) - so by computing against the remainder we will be able to produce a random number within a range 
    // cryptographic hashing 
    
    function randMod(uint range) external view returns(uint) {
        // grab information from the blockchain randomly to generate random numbers - we need something dynamically changing
        // abi.encodePacked concatonates arguments nicely 
        return uint(keccak256(abi.encodePacked(oracle.rand(), block.timestamp, block.difficulty, msg.sender))) % range;
    }
    
}