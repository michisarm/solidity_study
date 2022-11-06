// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

// 추상(Abstract) 스마트 컨트랙트
// abstract 키워드는 솔리디티 컴파일 버전 0.6 부터 가능
abstract contract System {
    uint internal version; 
    bool internal errorPass;
    // 미구현된 함수
    function versionCheck() internal virtual; 
    // 미구현된 함수
    function errorCheck() internal virtual;
    // 완전 구현된 boot 함수
    function boot() public returns(uint, bool) {
        versionCheck();
        errorCheck();
        return (version, errorPass);
    }
}
contract Computer is System {

    // 추상 클래스를 상속 받은 자식은 반드시 override를 통해 virtual 함수를 구현해야 한다
    function versionCheck () internal override {
        version = 3;
    }    
   function errorCheck () internal override {
        errorPass = true;
    }
}

contract SmartPhone is System {
    function versionCheck () internal override {
        version = 25;
    }
    function errorCheck () internal override {
        errorPass = false;
    }
}
