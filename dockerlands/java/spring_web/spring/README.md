
[https://stackify.com/guide-docker-java/](https://stackify.com/guide-docker-java/)

#curl https://start.spring.io/starter.zip -d dependencies=web -d applicationName=app -d artifactId=discovery_server -d baseDir=discovery_server -o discovery_server.zip

curl https://start.spring.io/starter.zip -d dependencies=web -o web.zip

unzip web.zip

##Create RestController

mvn install

docker build -t app:latest .

docker run -d --name app -v /var/log/app:/var/log/Application/ -p 8080:8080 app:latest

curl localhost:8080

cat /var/log/app/application.log

