//SPDX-License-Identifier: MIT
pragma solidity 0.8.12;

import 'hardhat/console.sol';

contract Greeter {
	string private greeting = 'gm';
	address public owner;

	constructor() {
		console.log('~* gm from the constructor! *~');
		owner = msg.sender;
	}

	function greet() public view returns (string memory) {
		return greeting;
	}

	function setGreeting(string memory _greeting) public {
		console.log("changing greeting from '%s' to '%s'", greeting, _greeting);
		greeting = _greeting;
	}

	function setOwner(address _owner) public {
		require(msg.sender == owner, 'unauthorized address!');
		owner = _owner;
	}
}
