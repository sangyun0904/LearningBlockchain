//  SPDX-License-Identifier: MIT
pragma solidity 0.8.8; // 0.8.12 most popular

contract SimpleStorage {
    // This gets initialized to zero!
    // The default visibility is internal
    uint256 public favoriteNumber;

    // Arrays & Structs
    struct People {
        uint256 favoriteNumber;
        string name;
    }

    // uint256[] public favoriteNumbersList;
    // Array requires index number to read states
    People[] public people;


    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    // View and pure functions disallow modification of state 
    // Pure functions additionally disallow you to read from blackchain state
    // View and Pure don't need to spend any gas!!!
    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }

    function add() public pure returns (uint256) {
        return(1 + 1);
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        // people.push(People(_favoriteNumber, _name));
        People memory newPerson = People({favoriteNumber: _favoriteNumber, name: _name});
        people.push(newPerson);
    }
}