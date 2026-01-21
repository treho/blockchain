// SPDX-License-Identifier: MIT

pragma solidity 0.8.22;

contract StructExample {

        struct Member {
            uint age;
            string name;
        }

        Member[] myMembers;

        function addMember(uint _age, string memory _name) public {
            Member memory newMember = Member(_age, _name);
            myMembers.push(newMember);
        }

        function getMember(uint _id) public returns (uint, string memory) {
            Member memory returnMember = myMembers[_id];
            return (returnMember.age, returnMember.name);

        }
 }