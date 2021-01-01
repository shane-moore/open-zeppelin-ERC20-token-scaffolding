pragma solidity ^0.5.0;

import '@openzeppelin/contracts/token/ERC20/ERC20.sol';
import '@openzeppelin/contracts/token/ERC20/ERC20Detailed.sol';
import '@openzeppelin/contracts/token/ERC20/ERC20Burnable.sol';
import '@openzeppelin/contracts/token/ERC20/ERC20Mintable.sol';
import '@openzeppelin/contracts/token/ERC20/ERC20Capped.sol';

contract MyToken2 is SafeERC20 {  } // helps you send tokens to another smart contract and prevent them from being locked up in this smart contract

contract MyToken is ERC20, ERC20Detailed, ERC20Burnable, ERC20Pausable {
  constructor() ERC20Detailed("koi","koi", 18) // name, symbol, decimal ERC20Capped(1000); // max amount of tokens mintable

  pause()
  unpause() // need special priveledge to use pause or unpause
  paused() // tells you if paused or not

  addPauser(0x....) // can delegate another address to have ability to pause and unapuse

  name()
  symbol()
  decimal()

  burn(1000) // how many tokens will be burned by submitter
  mint(0x899999552..., 10000) // address to receive the mined coin and amount of tokens to create. only address that deploys your token can deploy this function

  addMinter(0xiooi9000...) // delegate another person as a minter who can also call mint function


}
