#!/bin/bash

#docker run --name mysql -e MYSQL_ROOT_PASSWORD=password -d mysql

docker run --rm -it -p 127.0.0.1:3306:3306 --name mysql -e MYSQL_ROOT_PASSWORD=password -d mysql

