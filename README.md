## Simple ERC20

A simple ERC20 token utilizing [OpenZeppelin libraries](https://github.com/OpenZeppelin/openzeppelin-contracts). 

- [Burnable](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/extensions/ERC20Burnable.sol)
- [Ownable Mint](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol), uncapped Minting 
- Configurable decimals
- Otherwise, [generic ERC20](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol) functionality

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```