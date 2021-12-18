// SPDX-License-Identifier: MIT
// Yunus GUMUSSOY - The First Step of Being a Blockchain Developer

pragma solidity ^0.4.18;

contract MyContract {
    address owner;

    // for newer versions contract name cannot be same with function name
    // function MyContract() public {
    function MyNewContract() public {
        owner = msg.sender;
    }

    function getCreator() public constant returns(address) {
        return owner;
    }

    function kill() public {
        if(msg.sender == owner) {
            selfdestruct(msg.sender);
        }
    }
}
