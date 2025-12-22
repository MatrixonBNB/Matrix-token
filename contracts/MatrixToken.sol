// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable2Step.sol";

contract Matrix is ERC20, Ownable2Step {
    constructor()
        ERC20("Matrix", "MTX")
        Ownable(msg.sender)
    {
        _mint(msg.sender, 200_000_000 * 10 ** decimals());
    }
}