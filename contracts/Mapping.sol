// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

 contract MyContract{
//Mapping >> Datatypes lets you store key value pair in blockchain

// Syntex mapping(key => value) myMapping;
    mapping(uint => Book) public books;
    mapping(uint => string) public names;
//Nested mapping
    mapping(address => mapping(uint => Book)) public myBooks;

    struct Book {
        string title;
        string author;
    }


    constructor() {
        names[1]  = "Adam";
        names[2] = "Bruce";
        names[3]  = "Carl";
    }

    function addBook(
    uint _id, 
    string memory _title, 
    string memory _author
    ) public{

        books[_id] = Book(_title, _author);
    }
    function addMyBook(
    uint _id, 
    string memory _title, 
    string memory _author
    ) public{

        myBooks[msg.sender][_id] = Book(_title, _author); // msg.sender is Global variable calls address
    }


 }