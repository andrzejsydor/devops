# Local images

## Use Docker Registry

`https://hub.docker.com/_/registry`

### Run a local registry: Quick Version

`docker run -d -p 5000:5000 --restart always --name registry registry:2`

#### Now, use it from within Docker:

```
docker pull ubuntu
docker tag ubuntu localhost:5000/ubuntu
docker push localhost:5000/ubuntu
```

### add the local registry as insecure in order to use http

`https://docs.docker.com/registry/insecure/`

## How to use it in Kubernetes

```
...
    containers:
      - image: localhost:5000/ubuntu
        name: ubuntu
...
```
