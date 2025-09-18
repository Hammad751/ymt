## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

- **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
- **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
- **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
- **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

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

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```

## TODO

1. install `foundry-zksync`
```installation
This will run the zksync environment in the foundry project
make sure it would be up-to date when working with foundry-zksync. To do that, write the command

$ curl -L https://raw.githubusercontent.com/matter-labs/foundry-zksync/main/install-foundry-zksync | bash
```
2. Compile with `--zksync`
```compile
write the build command with --zksync externtion as
$ forge build --zksync
```
3. Reinstall vanilla foundry

```docker
$ docker ps

before starting the docker sync we will get nothing as below

CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES

```
### ZK-sync
```local_node
run the docker locally. without docker node will not run
$ foundryup-zksync
$ npx zksync-cli dev config
$ npx zksync-cli dev start

The above command will install and run the anvil-zksync node locally
```


```message
anvil-zksync started v0.6.10:
 - ZKsync Node (L2):
  - Chain ID: 260
  - RPC URL: http://127.0.0.1:8011
  - Rich accounts: https://docs.zksync.io/zksync-era/tooling/local-setup/anvil-zksync-node#pre-configured-rich-wallets
 - Note: every restart will necessitate a reset of MetaMask's cached account data
```

```docker
$ docker ps

After Running the node, we can see the output of the running node

CONTAINER ID   IMAGE                         COMMAND              CREATED          STATUS          PORTS                                         NAMES
bb767591ee7f   zkcli-in-memory-node-zksync   "anvil-zksync run"   13 minutes ago   Up 13 minutes   0.0.0.0:8011->8011/tcp, [::]:8011->8011/tcp   zkcli-in-memory-node-zksync-1
```

