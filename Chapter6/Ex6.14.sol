//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

// 상속시 중복 변수와 함수 오류
contract ArtStudent {
    uint public Times = 7;
    function time() public pure returns(uint) {
        return 3;
    }
}
contract PartTimer {
    function time() public pure returns(uint) {
        return 3;
    }
}

contract Alice is ArtStudent, PartTimer {
    // 부모에 이미 정의 되어 있는 Times
    uint public Times = 2;
}

