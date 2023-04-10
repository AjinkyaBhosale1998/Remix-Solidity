pragma solidity >= 0.7.0 < 0.9.0;
 
 contract Fallback {

     event Log(uint gas);

     fallback ( ) external payable {

         emit Log(gasleft());
     }

     function getBalance() public view returns(uint) {
         //return the stored balance of the contract
         return address (this).balance;
     }
 }

     //new comtract will send ether to prious contarct to trigger fallback fucntion

     contract SendToFallback {

         function transferToFallback(address payable _to) public payable {
             // send eth transfer methode
             //gass amount 2300 will transfer
             _to.transfer(msg.value);
         }

         function callFallback (address payable _to) public payable {
             //send ether with call method
             (bool sent,) = _to.call{value:msg.value}('');
             require(sent, 'Failed to send');
         }
     }

 