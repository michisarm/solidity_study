// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex6_1 {

    // 이벤트 정의 방법, 함수 외부에 정의
    // 매개변수명, 매개변수자료형, 매개변수명
    event MyFunction(uint result, string name);

    function add(uint _a, uint _b) public {
        uint total = _a + _b;
        // 이벤트 출력
        // 자료형에 맞는 변수 대입
        emit MyFunction(total, "add");
    }
    
    // 외부에서 아무런 변수를 읽어오지 않았는데도 pure를 사용하지 않은점
    // -> event가 블록체인에 기록되므로 pure, view 적용할 수 없음
    function mul(uint _a, uint _b) public {
        uint total = _a * _b;
        emit MyFunction(total, "mul");
    }
}