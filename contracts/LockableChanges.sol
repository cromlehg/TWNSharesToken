pragma solidity ^0.4.18;

import 'zeppelin-solidity/contracts/ownership/Ownable.sol';

contract LockableChanges is Ownable {
    
  bool public changesLocked;
  
  modifier notLocked() {
    require(!changesLocked);
    _;
  }
  
  function lockChanges() public onlyOwner {
    changesLocked = true;
  }
    
}
