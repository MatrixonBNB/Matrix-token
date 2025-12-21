## Scope
This audit package covers ONLY the minimal token contract:

- File: `MatrixToken.sol`
- Contract: `Matrix` (ERC20, Ownable)
- Logic: one-time mint in constructor only

## Deployment Reference
- Network: BNB Smart Chain
- Contract Address: 0x584A8d8aAD85D6B38dEd30210203bd6f7980Ea4b
- Verified Source: https://bscscan.com/address/0x584A8d8aAD85D6B38dEd30210203bd6f7980Ea4b#code
- Deployment Tx Hash: 0xa256a2959fe8ddbcc3896e6d5a3f5d2c99aaa82cfc19b56f0e247bb79ed171c9

## Notes
- No minting after deployment
- No burn function
- No blacklist / whitelist
- No pausable / fee / tax logic
- Not upgradeable (no proxy)

## Ownership & Treasury Control (Post-Deployment)

- The contract uses OpenZeppelin `Ownable`, which is a single-step ownership transfer mechanism.
  The team acknowledges the risk of mis-sending ownership to an incorrect address.

- After deployment, **contract ownership and the full token treasury** have been transferred to a multisignature wallet for risk reduction.

Multisignature wallet (current owner & treasury):
0x821BC77EF8156dc4E8C5aA4AaA9A51fecf17f665

## Token Utility

MTX is intended to be used as a governance token for the Matrix ecosystem.
At the current stage, governance decisions are coordinated off-chain and executed on-chain via the multisignature wallet.

No on-chain governance, timelock, vesting, or token locking mechanisms are implemented at this stage.