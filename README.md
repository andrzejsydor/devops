[Security Section](_security/README.md)

[Wiki - old one](https://github.com/andrzejsydor/docker/wiki)

# Creating Containers:

## Run a command in a new container:

`docker container run [OPTIONS] IMAGE [COMMAND] [ARG...]`

### Flags:

[https://docs.docker.com/engine/reference/commandline/container_run/](https://docs.docker.com/engine/reference/commandline/container_run/)

| cmd                  |                                                    |
| -------------------- | -------------------------------------------------- |
| `--help`             |                                                    |
| `--rm`               | Automatically remove the container when it exits   |
| `--detach` , -d      | Run container in background and print container ID |
| `--interactive` , -i | Keep STDIN open even if not attached               |
| `--tty` , -t         | Allocate a pseudo-TTY                              |
| `--publish` , -p     | Publish a container’s port(s) to the host          |
| `--publish-all` , -P | Publish all exposed ports to random ports          |
| `--volume` , -v      | Bind mount a volume                                |
| `--name`             | Assign a name to the container                     |
| `--mount`            | Attach a filesystem mount to the container         |
| `--network`          | Connect a container to a network                   |
| `--restart`          | Restart policy to apply when a container exits     |



## Environment variables

Use the `-e`, `--env`, and `--env-file` flags to set simple (non-array) environment variables in the container you’re running, or overwrite variables that are defined in the Dockerfile of the image you’re running.

https://docs.docker.com/engine/reference/commandline/run/#set-environment-variables--e---env---env-file#set-environment-variables--e---env---env-file

## Example:

```
docker container run --rm -dit -name myCont alpine
```

```
docker run -e MYVAR1 --env MYVAR2=foo --env-file ./env.list
```

# Container Commands

## docker container

Manage containers

```none
docker container COMMAND
```

https://docs.docker.com/engine/reference/commandline/container/

| cmd       |                                              |
| --------- | -------------------------------------------- |
| `ls`      | List containers                              |
| `inspect` | Display detailed information                 |
| `top`     | display the running processes of a container |
| `restart` | restart one or more containers               |

Example:

`docker ls -a`

## docker attach

Attach local standard input, output, and error streams to a running container

```none
docker attach [OPTIONS] CONTAINER
```

https://docs.docker.com/engine/reference/commandline/attach/

Example:

`docker attach <CONTAINER>`

## Run a command in a running container:

`docker exec [OPTIONS] CONTAINER COMMAND [ARG...]`

[https://docs.docker.com/engine/reference/commandline/exec/](https://docs.docker.com/engine/reference/commandline/exec/)

Example:

`docker exec -it <CONTAINER> sh`

`docker exec -it <CONTAINER> sh -c ls`

# Images:

## docker images

List images

```none
docker images [OPTIONS] [REPOSITORY[:TAG]]
```

https://docs.docker.com/engine/reference/commandline/images/



Example:

`docker images --all`

`docker images --filter=reference='*bash*'`

## docker image

Manage images

```none
docker image COMMAND
```

https://docs.docker.com/engine/reference/commandline/image/

| cmd       |      |
| --------- | ---- |
| `ls`      |      |
| `pull`    |      |
| `push`    |      |
| `inspect` |      |
| `import`  |      |

Example:

`docker image inspect alpine`



# Logs

Fetch the logs of a container

`docker logs [OPTIONS] CONTAINER`

[https://docs.docker.com/engine/reference/commandline/logs/](https://docs.docker.com/engine/reference/commandline/logs/)

| CMD                 | Description                                                  |
| ------------------- | ------------------------------------------------------------ |
| `--follow , -f`     | Follow log output                                            |
| `--since`           | Show logs since timestamp (e.g. 2013-01-02T13:23:37) or relative (e.g. 42m for 42 minutes) |
| `--tail`            | Number of lines to show from the end of the logs             |
| `--timestamps , -t` | Show timestamps                                              |

Example:

`docker logs -f --until=2s`



# COMMIT

Create a new image from a container’s changes

`docker commit [OPTIONS] CONTAINER [REPOSITORY[:TAG]]`

[https://docs.docker.com/engine/reference/commandline/commit/](https://docs.docker.com/engine/reference/commandline/commit/)

| CMD              | Description                                                  |
| ---------------- | ------------------------------------------------------------ |
| `--author , -a`  | Author (e.g., “John Hannibal Smith [hannibal@a-team.com](mailto:hannibal@a-team.com)”) |
| `--change , -c`  | Apply Dockerfile instruction to the created image            |
| `--message , -m` | Commit message                                               |
| `--pause , -p`   | Pause container during commit                                |

Example:

`docker commit -c "ENV PROFILE prod" -m 'production profile' <CONTAINER_ID> <IMAGE_ID>`

# MANAGING VOLUME

https://docs.docker.com/storage/volumes/

## docker volume

Manage volumes

https://docs.docker.com/engine/reference/commandline/volume/

```dockerfile
docker volume COMMAND COMMAND
```

| cmd       |                                 |
| --------- | ------------------------------- |
| `-h`      | List all Docker volume commands |
| `ls`      | List current volumes            |
| `create`  | Create a volume                 |
| `rm`      | Delete a volume                 |
| `inspect` | Get detailed about a volume     |
| `prune`   | Remove all unused local volumes |

## Mount volume

https://docs.docker.com/engine/reference/commandline/run/#mount-volume--v---read-only



## Example

```dockerfile
docker volume create <VOLUME_NAME>
docker run -v <VOLUME_NAME> <IMAGE>
```



# NETWROK

`docker network COMMAND`

[https://docs.docker.com/engine/reference/commandline/network/](https://docs.docker.com/engine/reference/commandline/network/)

### List networks

`docker network ls`

### Inspect a network

`docker network inspect <NETWORK>`

### Disconnect a runninng container from an existing network

`docker network disconnect <NETWORK-CONTAINER>`

### Deleta a network

`docker network rm <NETWORK>`



# TAG

`docker tag SOURCE_IMAGE[:TAG] TARGET_IMAGE[:TAG]`

[https://docs.docker.com/engine/reference/commandline/tag/](https://docs.docker.com/engine/reference/commandline/tag/)

Example:

`docker tag image:latest image:2`

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



# Docker Hub

## docker login

Log in to a Docker registry

https://docs.docker.com/engine/reference/commandline/login/

```none
docker login [OPTIONS] [SERVER]
```

## docker logout

Log out from a Docker registry

https://docs.docker.com/engine/reference/commandline/logout/

```none
docker logout [SERVER]
```



# Docker Stats

### Docker top

`docker container top <NAME>`

### Docker stats:

`docker container stats <NAME>`



# Image Cleanup

### Get information about disk usage on a system

`docker system df`

`docker system df -v`

### Remove dangling images (images not referenced by any tag or container)

`docker image prune`

### Remove all unused images (not useb by a container)

`docker image prune -a`

# Portainer

`docker volume create portainer_data`

`docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer`

