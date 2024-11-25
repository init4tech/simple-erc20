// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {SimpleERC20} from "../src/SimpleERC20.sol";
import {Test} from "forge-std/Test.sol";

contract CounterTest is Test {
    SimpleERC20 public test;

    function setUp() public {
        test = new SimpleERC20(address(this), "Test Token", "TEST", 8);
    }

    function testMetadata() public view {
        assertEq(test.name(), "Test Token");
        assertEq(test.symbol(), "TEST");
        assertEq(test.decimals(), 8);
    }

    function testMint() public {
        test.mint(address(this), 100);
        assertEq(test.balanceOf(address(this)), 100);
    }

    function testBurn() public {
        test.mint(address(this), 100);
        test.burn(100);
        assertEq(test.balanceOf(address(this)), 0);
    }
}
