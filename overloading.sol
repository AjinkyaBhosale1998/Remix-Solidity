pragma solidity >= 0.7.0 < 0.9.0;

contract FunctionOverloading {
  
  
    
    
    function getSum(uint a, uint b) public pure returns(uint) {
        return a + b;
    }
    
    function getSum(uint a, uint b, uint c) public pure returns(uint) {
        return a + b + c;
    }
    
    
    function getSumTwoArgs() public pure returns(uint) {
        return getSum(2,3);
    }
    
        function getSumThreeArgs() public pure returns(uint) {
        return getSum(3,2,1);
    }
    
}
