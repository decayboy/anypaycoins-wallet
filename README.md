## AnyPayCoins offline wallets

    Api endpoint: *http://127.0.0.1:8099*
    Authorisation: Bearer token

### Settings

#### Set environment variables (default values below):
   
    _Postgresql_
    
    POSTGRES_DB=wallet
    POSTGRES_USER=postgres
    POSTGRES_PASSWORD=12345

    _Migrations_
    
    DB_DRIVER=postgres
    DB_OPEN=host=db user=postgres password=12345 dbname=wallet sslmode=disable
     
    _Ethereum_
    
    ETHEREUM_RPC_ADDR=0.0.0.0
    ETHEREUM_RPC_PORT=8545
    
    _Bitcoin_
    
    BITCOIN_RPC_ALLOWIP=0.0.0.0/0
    BITCOIN_RPC_USER=rpcuser
    BITCOIN_RPC_PASSWORD=rpcpassword
    BITCOIN_RPC_PORT=8333/tcp
    
    _Bitcoin Cash_
    
    BITCOIN_CASH_RPC_ALLOWIP=0.0.0.0/0
    BITCOIN_CASH_RPC_USER=rpcuse
    BITCOIN_CASH_RPC_PASSWORD=rpcpassword
    BITCOIN_CASH_RPC_PORT=8332/tcp
    
#### Config files

    Create config files and make changes

    $ cp ./bin/conf/api.conf.example ./bin/conf/api.conf
    $ cp ./bin/conf/geth-api.conf.example ./bin/conf/geth-api.conf
    
### Run

    $ docker-compose up
    
### Persistent data
    
    All data (db, keystore, wallets) stores in "./data" directory
