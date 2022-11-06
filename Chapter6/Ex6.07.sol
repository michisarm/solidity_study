// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

// private와 internal의 접근 범위
contract Student {
    string private schoolName = "Solidity University";
    string internal schoolNumbers = "02-1234-5678";
}

contract ArtStudent is Student {

    // private로 선언된 schoolName는 contract 내부에서만 접근이 가능
    // function getSchoolName() public view returns(string memory){
    //     return schoolName;
    // }
    
    // internal schoolNumbers은 상속받은 자식 스마트 컨트랙트에서 상속 받아 접근이 가능
    function getSchoolNumbers() public view returns(string memory){
        return schoolNumbers;
    }
}
