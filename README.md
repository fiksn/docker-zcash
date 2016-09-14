# zcash

Docker image for `zcash`. Currently for testnet only. 

Based on previous (great) work from [marsmensch/docker-zcash](https://github.com/marsmensch/docker-zcash) and [ralphtheninja/docker-zcash](https://github.com/ralphtheninja/docker-zcash).

#### Build

```bash
$ git clone https://github.com/ralphtheninja/docker-zcash && cd docker-zcash
$ docker build -t zcash .
```

#### Run the daemon

```bash
$ docker run -d --name zcash -v ~/.zcash:/root/.zcash zcash
```

#### Run commands

```bash
$ docker exec -it zcash zcash-cli getinfo
$ docker exec -it zcash zcash-cli getnewaddress
$ docker exec -it zcash zcash-cli getpeerinfo
$ docker exec -it zcash zcash-cli getblockcount
$ docker exec -it zcash zcash-cli zcrawkeygen
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
