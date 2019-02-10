
docker build -t hello-express .

docker run -d -p 8081:8081 --name hello-express-app hello-express

