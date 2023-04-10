pragma solidity >= 0.7.0 < 0.9.0;

contract learnArray {
    uint [] public myArray;
    uint [] public myArray2;
    uint [200] public myFixedArray;

    function push(uint number) public {
        myArray.push(number);
    }

    function pop(uint number) public {
        myArray.pop();
    }

    function getlength() public view returns (uint) {
        return myArray.length;    }

        function remove (uint i ) public {
            delete myArray[i];
        }

        uint [] public  changeArray;
        function removeElement(uint i) public {
            changeArray[i] = changeArray[changeArray.length -1];
            changeArray.poop();
        }

        function test() public  {
            /*
            changeArray.push(1);
            changeArray.push(2);
            changeArray.push(3);
            changeArray.push(4);
            */
            for (uint i = 1; i <= 4; i++) {
                changeArray.push(i);
            }
        }
        function getChangeArray() public view returns(uint [] memory) {
            return changeArray;
        }
}