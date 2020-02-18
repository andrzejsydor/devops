# Creating Containers:

`docker container run <IMAGE>`

### Flags:

[https://docs.docker.com/engine/reference/commandline/container_run/](https://docs.docker.com/engine/reference/commandline/container_run/)

| cmd                |                                                    |
| ------------------ | -------------------------------------------------- |
| `--help`           |                                                    |
| `--rm`             | Automatically remove the container when it exits   |
| --detach , -d      | Run container in background and print container ID |
| --interactive , -i | Keep STDIN open even if not attached               |
| --tty , -t         | Allocate a pseudo-TTY                              |
| --publish , -p     | Publish a container’s port(s) to the host          |
| --publish-all , -P | Publish all exposed ports to random ports          |
| --volume , -v      | Bind mount a volume                                |
| `--name`           | Assign a name to the container                     |
| `--mount`          | Attach a filesystem mount to the container         |
| `--network`        | Connect a container to a network                   |
| `--restart`        | Restart policy to apply when a container exits     |

Example:

`docker container run --rm -dit -name myCont alpine`



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



# Docker Stats

### Docker top

`docker container top <NAME>`

### Docker stats:

`docker container stats <NAME>`



# Portainer

`docker volume create portainer_data`

`docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer`

