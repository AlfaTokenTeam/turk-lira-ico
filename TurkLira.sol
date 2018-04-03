pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract TurkLira is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function TurkLira(address _owner)  UpgradeableToken(_owner) {
    name = "TurkLira";
    symbol = "TL";
    totalSupply = 8000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}