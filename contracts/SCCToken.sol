// SPDX-License-Identifier: MIT
pragma solidity 0.5.0;

// Based on https://github.com/OpenZeppelin/openzeppelin-solidity/blob/master/contracts/examples/SimpleToken.sol

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";

// import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/**
 * @title SCCToken
 * @notice here SCCToken is defined.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `ERC20` functions.
 */
contract SCCToken is ERC20, ERC20Detailed {
    uint8 public constant DECIMALS = 18;
    uint256 public constant INITIAL_SUPPLY = 30000000000 * 10 ** 18;

    /**
     * @notice Constructor that gives msg.sender all of existing tokens.
     */
   constructor() public ERC20Detailed("Super Crypto Coin", "SCC", DECIMALS) {
        _mint(msg.sender, INITIAL_SUPPLY);
    }
}