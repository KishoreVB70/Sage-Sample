// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "witnet-solidity-bridge/contracts/interfaces/IWitnetRandomness.sol";

contract Witnet {

    uint32 public randomness;
    uint256 public latestRandomizingBlock;
    IWitnetRandomness immutable public witnet;
    
    constructor (IWitnetRandomness _witnetRandomness) {
        witnet = _witnetRandomness;
    }

    function requestRandomNumber() external payable {
        latestRandomizingBlock = block.number;
        uint _usedFunds = witnet.randomize{ value: msg.value }();
    }
    
    function fetchRandomNumber() external {
        assert(latestRandomizingBlock > 0);
        randomness = witnet.random(type(uint32).max, 0, latestRandomizingBlock);
    }

    receive () external payable {} 
}