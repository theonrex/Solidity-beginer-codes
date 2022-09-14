// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

 contract Mapping {
     //mapping is also a state variable
    //  mapping(key => value) myMapping;
        mapping(uint => string) public names;
        mapping(uint => Book) public books;
        mapping(uint => Languages) public language;
        //nested mapping
        //address is the key
        //value is anoter mapping
        mapping(address => mapping(uint => Book)) public myBook;
        
        struct Languages {
            string name;
            string abr;
        }

        struct Book {
            string title;
            string author;
        }

        constructor()  {
            names[1] = "rex";
            names[2] = "inioluwa";
            names[3] = "Ayo";
        }

    function addLanguage(
        uint _id,
        string memory _name,
        string memory _abr
    ) public {
        language[_id] = Languages(_name, _abr);
    }

    function addBook(
        uint _id, 
        string memory _title, 
        string memory _author
        ) public {
        books[_id] = Book(_title, _author);
    }
      function addMyBook(
        uint _id, 
        string memory _title, 
        string memory _author
        ) public {
        myBook[msg.sender][_id] = Book(_title, _author);
    }


}
