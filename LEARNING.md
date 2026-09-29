# My Learning Reflections

## What I Learned
Building this ERC-20 token was an eye-opening experience. Before this project, I understood cryptocurrencies conceptually, but getting hands-on with Solidity made the underlying mechanics "click" for me. Specifically, I learned:
- How mappings in Solidity work exactly like hash tables, and how `balanceOf` is essentially just keeping track of numbers assigned to an address.
- The importance of the `msg.sender` global variable for security, ensuring only the person invoking the contract can authorize moving their own funds.
- How the `approve` and `transferFrom` functions create a dual-step process allowing smart contracts (like decentralized exchanges) to securely interact with my tokens without needing direct custody first.
- The standard requirement of having 18 decimals, and how Ethereum processes all token amounts in their smallest possible unit (wei equivalents) to avoid floating-point math issues.

## Challenges I Faced
- **Validation logic:** I initially struggled with the order of operations in `transferFrom`. Remembering to decrease both the sender's balance and the spender's allowance took some careful thinking.
- **Understanding Decimals:** The concept of multiplying by 10^18 for a single token felt strange at first when deploying via Remix, but it makes sense now why blockchains handle precision this way.
- **Events:** It wasn't immediately obvious why events were necessary until I realized that smart contracts can't easily read past state changes, and external apps (like block explorers or wallets) rely entirely on these emitted logs to show transaction histories.

## Testing
During testing in Remix's JavaScript VM:
1. I deployed the contract with a supply of 1,000,000 * 10^18 tokens and verified my initial balance was correct.
2. I successfully transferred 1,000 tokens to a secondary address and verified the balances updated instantly.
3. I intentionally tried to send more tokens than I had, and the transaction cleanly reverted with the "Insufficient balance" error message.
4. I tested the allowance flow by approving a third account to spend 500 tokens, then switching to that account and successfully using `transferFrom`.

Overall, this project gave me a strong foundation in smart contract development and the ERC-20 standard.
