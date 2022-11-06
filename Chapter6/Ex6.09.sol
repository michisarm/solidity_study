//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

// 다형성 - overloading
// 동일한 함수이름에 매개변수를 변경하여 함수를 유연하게 사용
contract Calculator {
    function mul(uint _num1, uint _num2) public pure returns(uint) {
        return _num1*_num2;
    }

    function mul(uint _num1, uint _num2, uint _num3) public pure returns(uint) {
        return _num1*_num2*_num3;
    }

}
contract Ex6_9 {
    Calculator internal calculator = new Calculator();
    function getNumbers() public view returns(uint,uint) {
        return (calculator.mul(4,5), calculator.mul(4,5,6));
    }    
}