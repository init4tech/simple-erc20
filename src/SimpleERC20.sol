// SPDX-License-Identifier: MIT OR Apache-2.0
pragma solidity 0.8.26;

import {ERC20Burnable} from "openzeppelin-contracts/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import {ERC20} from "openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";
import {Ownable} from "openzeppelin-contracts/contracts/access/Ownable.sol";

/// @notice A contract deployed to Host chain that allows tokens to enter the rollup.
contract SimpleERC20 is ERC20Burnable, Ownable {
    uint8 public immutable _decimals;

    constructor(address initialOwner, string memory name, string memory symbol, uint8 _dec)
        Ownable(initialOwner)
        ERC20(name, symbol)
    {
        _decimals = _dec;
    }

    function mint(address to, uint256 amount) external onlyOwner returns (bool) {
        _mint(to, amount);
        return true;
    }

    function decimals() public view override returns (uint8) {
        return _decimals;
    }
}
