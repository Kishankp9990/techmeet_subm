// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

contract User {
    struct UserStruct {
        string name;
        uint age;
    }

    mapping(uint => UserStruct) public users;
    uint public serialNumber;

    function addUser(string memory _name, uint _age) public {
        users[serialNumber] = UserStruct(_name, _age);
        serialNumber++;
    }

    function fetchUser(uint _serialNumber) public view returns (string memory, uint) {
        return (users[_serialNumber].name, users[_serialNumber].age);
    }
}
