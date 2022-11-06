// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

// abstract와 함수를 명시하는 점이 비슷하지만 많은 제한 사항을 가지고 있다
// 인터페이스 제한사항
// 1. 인터페이스는 인터페이스끼리 상속할 수 없으며 스마트 컨트랙트와 상속해야 한다
// 2. 완전히 구현된 함수를 정의할 수 없다. 함수의 가시성 지정자는 external 이어야 한다
// 3. 생성자를 정의할 수 없다
// 4. 상태 변수를 정의할 수 없다
// 5. 모디파이어를 정의할 수 없다
// 이러한 제한사항으로 추상 스마트 컨트랙트보다 더 추상적으로 만들며 
// ABI (Application Binary Interface)와 인터페이스간에 정보 손실 없이 변환이 가능하게 만든다
// ABI spec (https://docs.soliditylang.org/en/develop/abi-spec.html)
interface System {
    function versionCheck() external returns(uint); 
    function errorCheck() external returns(bool);
    function boot() external returns(uint, bool);
}
contract Computer is System {
    function versionCheck() public pure override returns(uint) {
        return 3;
    }
    function errorCheck() public pure override returns(bool) {
        return true;
    }
    function boot () public pure override returns(uint, bool) {
        return (versionCheck(),errorCheck());
    }
}

contract SmartPhone is System {
    function versionCheck() public pure override returns(uint) {
        return 25;
    }
    function errorCheck() public pure override returns(bool) {
        return true;
    }
    function boot () public pure override returns(uint, bool) {
        return (versionCheck(),errorCheck());
    }
}
