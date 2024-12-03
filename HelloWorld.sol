// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

struct Order {
    string name;
    string creationDate;
}

contract HelloWorld {
    string public myString = "Hello World";

    uint private myUint;

    uint[] public nums = [1,2];

    Order public order;
    Order[] public orders;
    mapping (address => Order[]) public ordersByOwner; 

    constructor(uint newInt) {
        myUint = newInt;
    }

    function foo(uint[] memory tests) public view returns (uint)  {
        uint myVar = 123;

        tests[0] = 2000;


        return myUint + myVar + tests[0];

    }

    function example() external {
        myString = "Toto";
    }

    function add(uint a, uint b) external view returns (uint) {
        if (a > 10) {
            uint[] memory tabs = new uint[](3);
            tabs[0] = 1000; 
            return this.foo(tabs);
        }

        return myUint + a + b;
    }

    error MyError(address addr, uint a, uint b);

    function sub(uint a, uint b) external view returns (uint) {
        require(a > 10, "a > 10");
        assert(b > 1);
        if (a < b) {
            revert MyError(msg.sender, a, b);
        }


        return a - b;
    }
}
