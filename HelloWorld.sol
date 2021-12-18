// SPDX-License-Identifier: MIT
// Yunus GUMUSSOY - The First Step of Being a Blockchain Developer

pragma solidity ^0.6.0;

contract HelloWorld {
    uint256 counter;

    function increase() public {
        counter++;
    }

    function decrease() public {
        counter--;
    }

    // constant was removed in version 0.5.0
    // for newer version "view" or "pure" should be used
    // function getCounter() public constant returns (uint256){
    function getCounter() public view returns (uint256){
        return counter;
    }
}
