// SPDX-License-Identifier: MIT

pragma solidity 0.8.22;

contract MappingExample {

    mapping(address => uint) balance;

    function addBalance(uint _valueAdded) public returns (uint) {
        balance[msg.sender] = balance[msg.sender] + _valueAdded;
        return (balance[msg.sender]);
    }

   function getBalance() public returns (uint) {
        return (balance[msg.sender]);
    }

 }