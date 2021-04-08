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


    //View functions ensure that they will not modify the state. A function can be declared as view. 
    //The following statements if present in the function are considered modifying the state and compiler will throw warning in such 
    //cases.

    function priceMoney(uint position) public returns(float){

        float organizer = money - money *  .1;
        float givenAmount = money - organizer;
        
        float first = (givenAmount - givenAmount *  .5) ;
        float second = givenAmount - givenAmount *  .3;
        float third = givenAmount - givenAmount *  .2;
        
        float result;

        if(position == 1 ){
            result = money + first;
        }else if(position == 2 ){
            result = money + second;
        }else if(position == 3 ){
            result = money + third;
        }

        return result;
    }

}