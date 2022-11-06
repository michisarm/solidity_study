// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

// 스마트 컨트랙트 = 객체의 설계도
// Monitor 모니터 , SystemUnit 본체, 스마트 컨트랙트

contract Monitor {
    string public name;
    constructor(string memory _name){
        name = _name;
    }
    function show() public pure returns(string memory){
        return "show";
    }
}

contract SystemUnit {
    string public name = "XG12";
    function turnOn() public pure returns(string memory){
        return "turnOn";
    }
}

contract Computer {
    // 객체의 정의
    Monitor public monitor;
    SystemUnit public systemUnit;


    constructor(){
        // 인스턴스화
        monitor = new Monitor("DW12");
        systemUnit = new SystemUnit();
    }

    function getAllNames() public view returns(string memory,string memory) {
        // 인스턴스의 함수 접근, 점(.) 연산자
        // 함수만 접근 가능, 함수가 public/external 일때만 가능
        return(monitor.name(), systemUnit.name());
    }
    
    function start() public view returns(string memory,string memory) {
        return(monitor.show(), systemUnit.turnOn());
    }
}