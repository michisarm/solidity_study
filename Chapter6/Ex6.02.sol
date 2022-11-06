// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex6_2 {
    uint public num = 5;
    constructor(uint _num) {
        // 객체 생성시 num의 값을 변경
        num = _num;
    }
   
}