//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

// 캡슐화, 외부에서 변수를 직접적으로 접근하는 것이 불가능
contract Number {
    
    // uint public num = 4;
    uint private num = 4;

    function changeNum() public {
        num = 5;
    }
    function getNum() public view returns(uint) {
        return num;
    }
}

contract Caller {
    Number internal instance = new Number();
    function changeNumber() public {
        // public
        // java의 경우는 변경 가능하지만 솔리디티에서는 num이 public 임에도 오류가 발생한다
        // 솔리디티가 더 제한적, java에서 이를 방지하기위해 캡슐화 활용
        // 솔리디티에서는 public num에 대한 getter함수가 생성되기 때문에 캡슐화 필요
        // instance.num = 5;

        // private
        instance.changeNum();
    }
    function getNumber() public view returns(uint) {
        return instance.getNum();
    }
}
   