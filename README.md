# BUILD

### Building an image:

`docker image build -t <NAME>:<TAG>`

### Useful flags:

##### -f, --file string: name of the Dockerfile

##### --force-rm: always remove intermediate containers

##### --label: sets metadata for an image

##### --rm: removes intermediate containers after a successful build

##### --ulimit: ulimit options



# Network

## Networking Commands

### List networks:

`docker network ls`

### Inspect a network:

`docker network inspect <NAME>`

### Create a network:

`docker network create <NAME>`

### Removing a network:

`docker network rm <NAME>`

### Remove all unused networks:

`docker network prune`

### Adding a container to a network:

`docker network connect <NETWORK> <CONTAINER>`

`docker container run --name <NAME> -it --network <NETWORK> <IMAGE> <CMD>`

### Removing a container from a network:

`docker network disconnect <NETWORK> <CONTAINER>`

### Assigning an IP to a container:

`docker container run -name <NAME> -it --network <NETWORK> --ip <IP> <IMAGE> <CMD>`

