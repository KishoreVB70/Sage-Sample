// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

import "witnet-solidity-bridge/contracts/interfaces/IWitnetRandomness.sol";

//Alfajores -> 0xbD804467270bCD832b4948242453CA66972860F5

contract Lottery {
    IWitnetRandomness immutable public witnet;

    uint32 price;
    uint32 public randomness;
    uint256 public latestRandomizingBlock;
    address payable lastWinner;
    uint lastWinnerAmount;
    address[] players;
    address owner;
    bool open;

    constructor (IWitnetRandomness _witnetRandomness) {
        witnet = _witnetRandomness;
        owner = msg.sender;
    } 
  
    modifier isOpen{
        require(open, "Not Open");
        _;
    }

    modifier onlyOwner{
        require(msg.sender == owner, "not owner");
        _;
    }

    function start(uint32 _price) public onlyOwner{
        require(!open, "running");
        open = true;
        price = _price;
    }

    function join() public payable{
        require(msg.value > price, "Send money");
        // Set all values of a mapping to false
        players.push(msg.sender);
    }

    function close() external payable {
        latestRandomizingBlock = block.number;
        uint feeValue = address(this).balance;
        uint _usedFunds = witnet.randomize{ value: feeValue }();
        if (_usedFunds < msg.value) {
            payable(msg.sender).transfer(feeValue - _usedFunds);
        }
    }
    
    function pickWinner() external {
        assert(latestRandomizingBlock > 0);
        open = false;
        randomness = witnet.random(type(uint32).max, 0, latestRandomizingBlock);
        uint winnerIndex = randomness % players.length;
        lastWinner = payable(players[winnerIndex]);
        lastWinnerAmount = address(this).balance;
        lastWinner.transfer(lastWinnerAmount);
    }

    receive () external payable {}
}