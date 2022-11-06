// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Student {
    string public schoolName = "The University of Solidity";
}

// 상속 정의 방법 : is
// schoolName의 중복을 효율적으로 선언, 부모로부터 상속받은 변수와 함수를 사용할 수 있음
contract ArtStudent is Student {
    function changeSchoolName() public {
        schoolName = "The University of Blockchain";
    }
    function getSchoolName() public view returns(string memory){
        return schoolName;
    }
}

