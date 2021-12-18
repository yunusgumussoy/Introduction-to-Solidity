// SPDX-License-Identifier: MIT
// Yunus GUMUSSOY - The First Step of Being a Blockchain Developer

pragma solidity ^0.4.8;
contract HelloWorld {
    uint256 counter = 0;

    function increase() public {
        counter++;
    }

    function decrease() public {
        counter--;
    }

    // function getCounter() view returns(uint256){ / public or private should be added to determine visibility
    // function getCounter() private view returns(uint256){ / private means they can't be accessed or modified from other smart contracts
    function getCounter() public view returns(uint256){
        return counter;
    }


    function killme() public {
        // suicide is replaced by selfdestruct
        // suicide(msg.sender);
        selfdestruct(msg.sender);
    }
}
