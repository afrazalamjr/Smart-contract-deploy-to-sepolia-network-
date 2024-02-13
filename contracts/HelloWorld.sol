
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract HelloWorld {
    event UpdatedMessages(string oldStat, string newStat);

    string public message;

    constructor(string memory initMessage) {
        message = initMessage;
    }

    function update(string memory newMessage) public {
        string memory oldMsg = message;
        message = newMessage;
        emit UpdatedMessages(oldMsg, newMessage);
    }
}
