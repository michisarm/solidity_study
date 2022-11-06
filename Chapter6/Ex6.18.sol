// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

// 인터페이스를 활용해 배포된 스마트 컨트랙트와 상호작용
// 솔리디티에서 일반적으로 인터페이스는 이번 예제와 같이 활용된다
// Computer를 사전 배포 후 상속된 System과 Computer의 배포된 주소를 통해 Computer의 함수를 호출
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

contract Load {
    function versionCheck(address _addr) public returns(uint) {
        // 이미 배포된 Computer를 부르려면 Computer의 주소를 인터페이스인 System 으로 감싸주고 난뒤 정의된 함수를 호출한다
        return System(_addr).versionCheck();
    }
    function errorCheck(address _addr) public returns(bool) {
        return System(_addr).errorCheck();
    }
    function boot (address _addr) public returns(uint, bool) {
        return System(_addr).boot();
    }
}
