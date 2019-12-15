[docker-compose.yml](docker-compose.yml)

[Dockerfile.curl](Dockerfile.curl)

```
docker build -f Dockerfile.curl --tag dockerworkshopsydor/curl:latest .
docker push dockerworkshopsydor/curl:latest
```

[https://hub.docker.com/r/dockerworkshopsydor/curl](https://hub.docker.com/r/dockerworkshopsydor/curl)

`docker-compose up -d --build`

`docker-compose ps`

`curl 127.0.0.1:80`

`curl 127.0.0.1:81`

`docker exec -it curl-cont sh`

`curl ng-cont`

`curl ng-cont-curl`
