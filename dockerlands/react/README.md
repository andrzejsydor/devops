docker build -t react-image .

docker run -d --rm -p 3000:3000 --name react-app react-image