// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Father {
    event FatherName(string name);
    function who() public virtual {
        emit FatherName("ChanBak");
    }
}

contract Mother {
    event MotherName(string name);
    function who() public virtual {
        emit MotherName("EryKim");
    }
}

contract Son is Father, Mother {  
    // 다중 상속의 경우 가장 마지막(최신에) 상속한 Mother Cotract 의 who를 상속함
    event sonName(string name);
    function who() public override(Father, Mother) {
        super.who(); // Mother
        emit sonName("ColdBak");
    }
}

// [
// 	{
// 		"from": "0xBafd3925e1146E231036a086c58D82074751b199",
// 		"topic": "0x9084713d5e2561709d7197f0c1143d7e814a061dae5429ba219fd588fb389c38",
// 		"event": "MotherName",
// 		"args": {
// 			"0": "EryKim",
// 			"name": "EryKim"
// 		}
// 	},
// 	{
// 		"from": "0xBafd3925e1146E231036a086c58D82074751b199",
// 		"topic": "0xbee719c766e37b1cc0e50bfaa28bd13f3deb24ff1ac437f55a31ff864afe13a6",
// 		"event": "sonName",
// 		"args": {
// 			"0": "ColdBak",
// 			"name": "ColdBak"
// 		}
// 	}
// ]