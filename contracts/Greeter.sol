//SPDX-License-Identifier: CC0-1.0
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Greeter {
    string private greeting = "Hello";
    address public owner;

    constructor() {
        console.log("~* Hello from the constructor! *~");
        owner = msg.sender;
    }

    function greet() public view returns (string memory) {
        return greeting;
    }

    function setGreeting(string memory _greeting) public {
        console.log("Changing greeting from '%s' to '%s'", greeting, _greeting);
        greeting = _greeting;
    }

    function setOwner(address _owner) public {
        require(msg.sender == owner, "Unauthorized address");
        owner = _owner;
    }
}
