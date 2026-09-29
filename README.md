# MyToken (MTK)

## Overview
MyToken is a simple ERC-20 compatible token built on Ethereum for learning purposes.

## Token Details
1. **Name**: MyToken
2. **Symbol**: MTK
3. **Decimals**: 18
4. **Total Supply**: 1,000,000 MTK

## Features
- Standard ERC-20 implementation
- Transfer tokens between addresses
- Approve and transferFrom functionality
- Event emission for transparency
- Balance tracking

## How to Deploy
1. Open RemixIDE (https://remix.ethereum.org/)
2. Create new file `MyToken.sol`
3. Paste the contract code
4. Compile with Solidity 0.8.x
5. Deploy with desired total supply (e.g. 1000000000000000000000000 for 1 million tokens)

## How to Use

### Check Balance
`balanceOf(address)` -> returns uint256

### Transfer Tokens
`transfer(address to, uint256 amount)` -> returns bool

### Approve Spending
`approve(address spender, uint256 amount)` -> returns bool

### Transfer on Behalf
`transferFrom(address from, address to, uint256 amount)` -> returns bool
