pragma solidity >= 0.7.0 < 0.9.0;

contract learnloops{

    function loop() public {
        for (uint i=0 ; i<10 ; i++) {
            if(i==3){
                continue;
            }
            if(i == 5) {
                break;
            }
        }

    }


}