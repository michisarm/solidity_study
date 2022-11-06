//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

// 다형성의 대표적인 사용예시
contract Animal {
    function getName() public pure virtual returns(string memory) {
        return "Animal";
    }
}
// 각 자식객체에서 getName override
contract Tiger is Animal {
    function getName() public pure override returns(string memory) {
        return "Tiger";
    }
}

// 각 자식객체에서 getName override
contract Turtle is Animal {
    function getName() public pure override returns(string memory) {
        return "Turtle";
    }
}

contract AnimalSet {
    // 업캐스팅
    Animal public tiger = new Tiger();
    Animal public turtle = new Turtle();
   
    function getAllNames() public view returns(string memory, string memory) {
        return (tiger.getName(), turtle.getName()) ;
    }

    // Animal 타입으로 유연성 있게 매개변수를 받을 수 있다
    function whatIsTheName(Animal _animal) public pure returns(string memory) {
        return (_animal.getName()) ;
    }
}
