# BUILD

### Building an image:

`docker image build -t <NAME>:<TAG>`

### Useful flags:

##### -f, --file string: name of the Dockerfile

##### --force-rm: always remove intermediate containers

##### --label: sets metadata for an image

##### --rm: removes intermediate containers after a successful build

##### --ulimit: ulimit options

### Building an image from a zip file:

`docker image build -t <NAME>:<TAG> - < <FILE>tar.gz`



# Tagging

##### -t, --tag add a name and an optional tag in the `name:tag` format:

` docker image build -t <name>:<tag>`

` docker image build --tag <name>:<tag>`

### Use the commit hash GIT as the image tag:

`git log -1 --pretty=%H`

### Use `docker image tag` to a create a new tagged image:

`docker image tag <SOURCE_IMAGE>:<TAG> <TARGET_IMAGE>:<TAG>`





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

