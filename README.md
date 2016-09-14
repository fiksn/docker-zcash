# zcash

Docker image for `zcash`. Currently for testnet only. 

Based on previous (great) work from [marsmensch/docker-zcash](https://github.com/marsmensch/docker-zcash) and [ralphtheninja/docker-zcash](https://github.com/ralphtheninja/docker-zcash).

#### Build

```bash
$ git clone https://github.com/fiksn/zcash && cd zcash
$ docker build -t zcash .
```

#### Run the daemon

```bash
$ docker run -d --name zcash -v ~/.zcash:/root/.zcash zcash
```

#### Run commands

```bash
$ zcash-cli getinfo
$ zcash-cli getnewaddress
$ zcash-cli getpeerinfo
$ zcash-cli getblockcount
$ zcash-cli zcrawkeygen
```

#### Stop/restart the daemon

```bash
$ docker stop zcash
$ docker start zcash
```

### Links

For more information check out the following links:

* [Zcash Beta Guide](https://github.com/zcash/zcash/wiki/Beta-Guide)
* [Zcash Main Repository](https://github.com/zcash/zcash)
* [Zcash Forum](https://forum.z.cash/)
* [Zcash Slack Community](https://inviteme.z.cash/)
* [Mine Zcash](https://minezcash.com/)
