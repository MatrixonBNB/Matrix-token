## Scope
This audit package covers ONLY the minimal token contract:

- File: `MatrixToken.sol`
- Contract: `Matrix` (ERC20, Ownable2Step)
- Logic: one-time mint in constructor only

## Deployment Reference
- Network: BNB Smart Chain
- Contract Address: 0x60225866c67cfa38f9f5e4d2bc0e60ccdb9034ce
- Verified Source: https://bscscan.com/address/0x60225866c67cfa38f9f5e4d2bc0e60ccdb9034ce#code
- Deployment Tx Hash: 0x3bf8fde8c6bc852f9f5ac5ccbaa42985714692079a53d8a53d112d42f02298e8

## Notes
- No minting after deployment
- No burn function
- No blacklist / whitelist
- No pausable / fee / tax logic
- Not upgradeable (no proxy)

## Ownership & Treasury Control (Post-Deployment)

- The contract uses OpenZeppelin `Ownable2Step`, which implements a two-step ownership transfer mechanism
  (nominate `pendingOwner` → `acceptOwnership()`).
  This reduces the risk of permanently losing ownership due to an accidental transfer to an incorrect address.
  When transferring ownership to a multisignature (Safe) address, the second step (`acceptOwnership()`) is executed
  by the multisig itself via a contract interaction transaction.

- After deployment, **contract ownership and the full token treasury** have been transferred to a multisignature wallet for risk reduction.

Multisignature wallet (current owner & treasury):
0x821BC77EF8156dc4E8C5aA4AaA9A51fecf17f665

## Token Utility

MTX is intended to be used as a governance token for the Matrix ecosystem.
At the current stage, governance decisions are coordinated off-chain and executed on-chain via the multisignature wallet.

No on-chain governance, timelock, vesting, or token locking mechanisms are implemented at this stage.
