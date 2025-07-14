## ZkSync WETH Poc

Steps to reproduce:

1. (Optional) Deploy the contract to ZkSync Era:
   `forge create src/POC.sol:POC --rpc-url https://mainnet.era.zksync.io -i --broadcast --constructor-args 0x5AEa5775959fBC2557Cc8789bC1bf90A239D9a91`

2. Call the contract:

`cast call 0x5f472698c1D9A7E261E4079Be17297FeeBcbD6Fd "execute()"  --value 1 --rpc-url https://mainnet.era.zksync.io --trace`

If you deployed the contract, then replace `0x005C3E358a4029AbA21552c3CeE53E391673753E` with your address
