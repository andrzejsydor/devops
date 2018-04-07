docker build -t spring_web .

docker run --name=spring_web -it -p 8080:8080 -d spring_web

curl 127.0.0.1:8080
