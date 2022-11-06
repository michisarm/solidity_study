// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

// 다형성 - overriding
// 부모에 상속받은 함수를 자신의 상황에 맞게 변경
// virtual, override 키워드는 솔리디티 컴파일러 0.6버전 이후 부터 도입
contract Student {
    // virtual 키워드로 자식의 override 키워드 적용을 허락할 수 있다
    function major() public pure virtual returns(string memory) {
        return "Math";
    }
}

contract ArtStudent is Student {
    // override 
    function major() public pure override returns(string memory) {
        return "Art";
    }
}
