[https://aws.amazon.com/docker/](https://aws.amazon.com/docker/)

[Deploy Docker Containers on Amazon Elastic Container Service Amazon ECS](https://aws.amazon.com/getting-started/hands-on/deploy-docker-containers/)

# Install Docker and Docker Compose on Amazon Linux

Create EC2 based on Amazon Linux 2



Paste in user data section:

```sh
#!/bin/bash
sudo yum update -y
sudo amazon-linux-extras install docker
sudo service docker start
sudo usermod -a -G docker ec2-user
sudo systemctl enable docker

sudo curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
```



Check if working correctly

```sh
docker info
docker run hello-world
docker-compose version
```



Create file `docker-compose.yml` with content

```
version: '3'
services:
  web1:
    container_name: ng-cont 
    image: nginx:alpine
    ports: 
      - "80:80"
```

Check if working correctly

```
docker-compose up -d
curl 127.0.0.1
```



# Links

https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html

