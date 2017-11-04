
https://store.docker.com/images/mysql

https://hub.docker.com/r/mysql/mysql-server/

docker run --name mysql -e MYSQL_ROOT_PASSWORD=password -d mysql

[Shell Access](docker exec -it my-container-name bash)

mysql --user=root --password=password db-name

show tables;

