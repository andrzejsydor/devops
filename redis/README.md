
https://store.docker.com/images/redis

https://hub.docker.com/_/redis/

[https://redis.io/topics/rediscli](https://redis.io/topics/rediscli)

``` sh
docker run --name my-redis -d redis
```

# winpty for windows

``` sh
winpty docker exec -it my-redis bash
```

``` sh
redis-cli monitor

redis-cli --latency

redis-cli incr mycounter
```
