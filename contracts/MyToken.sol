// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyToken {
    // Event emitted when tokens are transferred
    event Transfer(address indexed from, address indexed to, uint256 value);

    // Event emitted when allowance is set
    event Approval(address indexed owner, address indexed spender, uint256 value);

    // Token metadata - define these as public state variables
    string public name = "MyToken";
    string public symbol = "MTK";
    uint8 public decimals = 18;
    uint256 public totalSupply;

    // Mapping to track balances: address => balance
    mapping(address => uint256) public balanceOf;

    // Nested mapping for allowances: owner => (spender => amount)
    mapping(address => mapping(address => uint256)) public allowance;

    // Constructor to initialize total supply and assign to creator
    constructor(uint256 _totalSupply) {
        // set totalSupply from parameter
        totalSupply = _totalSupply;
        // Assign entire supply to msg.sender (contract creator)
        balanceOf[msg.sender] = _totalSupply;
    }
}
