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
