// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract HelloWorld {

    string public greeting;

    event updatedGreetings(string oldStr, string newStr);

    constructor(string memory initiateGreeting) {
        greeting = initiateGreeting;
    }

    function updateGreeting(string memory newGreeting) public {
        string memory oldGreeting = greeting;
        greeting = newGreeting;
        emit updatedGreetings(oldGreeting, newGreeting);
    }

    function viewGreeting() public view returns (string memory) {
        return greeting;
    }
}