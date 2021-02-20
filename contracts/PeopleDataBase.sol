// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

contract PeopleDatabase {
    uint256 public peopleCount = 0;

    mapping(uint => Person) public people;

    uint256 startTime = 1606565700 ; /* 28.11.2020 12:15 */
    uint256 endTime = 1607948100 ; /* 14.12.2020 12:15 */

    modifier onlyWhileOpen() {
        require(block.timestamp >= startTime && block.timestamp <= endTime);
        _;
    }

    struct Person {
        uint _id;
        string _firstName;
        string _lastName;
    }

    function addPerson(string memory _firstName,string memory _lastName) public
        onlyWhileOpen{
        incrementCount();
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
    }

    function incrementCount() internal {
        peopleCount += 1;
    }
}