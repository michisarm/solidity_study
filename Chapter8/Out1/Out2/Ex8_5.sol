//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

import "../Ex8_5_1.sol";
import "../../Ex8_5_2.sol";

contract Alice is ArtStudent, PartTimer {
    uint public totalHours = schoolHours + workingHours;
}

