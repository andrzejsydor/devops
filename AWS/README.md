[https://aws.amazon.com/docker/](https://aws.amazon.com/docker/)

[Deploy Docker Containers on Amazon Elastic Container Service Amazon ECS](https://aws.amazon.com/getting-started/hands-on/deploy-docker-containers/)

# Install Docker on Amazon Linux

Create EC2 based on Amazon Linux 2



Paste in user data section:

```sh
#!/bin/bash
sudo yum update -y
sudo amazon-linux-extras install docker
sudo service docker start
sudo usermod -a -G docker ec2-user
sudo systemctl enable docker
```



Check if working correctly

```sh
docker info
docker run hello-world
```



# Links

https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html
