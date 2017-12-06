
https://store.docker.com/images/mysql

https://hub.docker.com/r/mysql/mysql-server/

docker run -p 3306:3306 --name mysql -e MYSQL_ROOT_PASSWORD=password -e MYSQL_DATABASE=mydb -d mysql

[Shell Access](docker exec -it my-container-name bash)

mysql --user=root --password=password db-name

create database mydb;

connect mydb;

show tables;

