# AnyPayCoins offline wallets

    Api endpoint: http://127.0.0.1:8099
    Authorization: Bearer token

## Settings

### Install Git LFS
    
    https://github.com/git-lfs/git-lfs/wiki/Installation

### Set environment variables (default values below):
   
#### PostgreSQL
    
    POSTGRES_DB=wallet
    POSTGRES_USER=postgres
    POSTGRES_PASSWORD=12345

#### Migrations
    
    DB_DRIVER=postgres
    DB_OPEN=host=db user=postgres password=12345 dbname=wallet sslmode=disable
     
#### Ethereum
    
    ETHEREUM_RPC_ADDR=0.0.0.0
    ETHEREUM_RPC_PORT=8545
    ETHEREUM_TESTNET=
    
#### Bitcoin
    
    BITCOIN_RPC_ALLOWIP=0.0.0.0/0
    BITCOIN_RPC_USER=rpcuser
    BITCOIN_RPC_PASSWORD=rpcpassword
    BITCOIN_RPC_PORT=8333/tcp
    BITCOIN_TESTNET=0
    
#### Bitcoin Cash
    
    BITCOIN_CASH_RPC_ALLOWIP=0.0.0.0/0
    BITCOIN_CASH_RPC_USER=rpcuser
    BITCOIN_CASH_RPC_PASSWORD=rpcpassword
    BITCOIN_CASH_RPC_PORT=8332/tcp
    BITCOIN_CASH_TESTNET=0
    
### Config files

    Create config files and make changes

    $ cp ./bin/conf/api.conf.example ./bin/conf/api.conf
    $ cp ./bin/conf/geth-api.conf.example ./bin/conf/geth-api.conf
    
## Run

    $ docker-compose up
    
## Persistent data
    
    All data (db, keystore, wallets) stores in "./data" directory
