// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

// 부모에 생성자가 있는경우
contract Student {
    string public schoolName = "The University of Solidity";
    string public major;
    constructor(string memory _major) {
        major = _major;
    }
}

// 1. 상속과 동시에 매개변수를 한번에 입력
contract ArtStudent is Student("Art") {

}

// 2. degree 변수를 선언 후 생성자에 입력
contract MusicStudent is Student {
    string internal degree = "Music";
    // 부모 생성자 정의가 필요하다
    constructor() Student(degree){
    }
}

// 3. 자식 생성자의 매개변수가 부모 생성자의 매개변수가 된다
contract MathStudent is Student {
    constructor(string memory _major) Student(_major){
    }
}
