// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex6_3 {
    
    // 초기값을 반드시 선언해야하고 수정이 불가능
    // uint public constant num1 = 44;
    
    // 배열과 같은 참조 타입에는 immutable을 적용할 수 없다
    // uint[] public immutable arr; 
    
    uint public immutable num2; 
    
    constructor(uint _num) {
        // num1 = _num;
        num2 = _num;
    }

    // immutable은 초기값을 선언하지 않아도 되지만 한번 값이 대입되면 변경할 수 없다
    function change() public pure returns(uint) {
        num2 = 10;
    }
 
}

