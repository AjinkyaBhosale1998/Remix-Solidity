pragma solidity ^0.8.0;
 
contract LedgerBalance { 
    mapping( address => uint ) balance;


    function updatesBalance(uint newBalance) public {

        balance[msg.sender] = newBalance;
    }

}

contract Updated {

 function updatesBalance() public {

     LedgerBalance ledgerBalance = new LedgerBalance();
     
     ledgerBalance.updatesBalance(30);
 }
}

contract simpleStorage {

    uint storeData;

    function set(uint x) public {
        storeData = block.timestamp;
    }

    function get() public view returns (uint) {
        return storeData;
      }

}