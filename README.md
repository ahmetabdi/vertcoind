# vertcoind
Run a Vertcoin node in docker with docker-compose

Update `vertcoin.conf` with your details. **CHANGE USERNAME AND PASSWORD**

A list of options is available [here](https://en.bitcoin.it/wiki/Running_Bitcoin#Command-line_arguments)


# Create a vertcoin.conf file

example `vertcoin.conf`:

```
printtoconsole=1
port=5889
rpcport=5888
rpcuser=username
rpcpassword=password
server=1
rpcbind=0.0.0.0
rpcallowip=0.0.0.0/0
rpcallowip=::/0
```

# Starting the node

`docker-compose up` pass the `-d` argument if you want in daemon mode
