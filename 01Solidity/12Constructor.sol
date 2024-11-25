// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract constructorPrac{
    uint public num;
    string name;
    constructor() {
        num=30;
        name="gaurav";
    }
    function getName() view public returns(string memory) {
        return name;
    }
}

contract x{
    string public textx;
    constructor(string memory _textx){
        textx=_textx;     
    }
}
contract y{
     string public texty;
    constructor(string memory _texty){
        texty=_texty;     
    }
}
contract a is x("called x by a"),y("called y by a"){

}
contract b is x,y{
    constructor(string memory _textbx,string memory _textby) x(_textbx) y(_textby){}
}

contract c is x,y{
    constructor() x("called x by c") y("called y by c"){}
}
contract e is x,y{
    constructor() y("y is called by e") x("x is called by e"){}
}

//main file got lost or delted