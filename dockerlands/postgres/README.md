
https://hub.docker.com/_/postgres/

https://store.docker.com/images/postgres

docker run -p 5432:5432 --name some-postgres -e POSTGRES_DB=mydb -e POSTGRES_PASSWORD=mysecretpassword -d postgres

Shell Access
docker exec -it some-postgres bash

psql -U postgres;

\list or \l: list all databases
\dt: list all tables in the current database
\c or \connect database_name
\d
\d mytable

CREATE DATABASE mydb;

CREATE TABLE mytable(
   ID INT PRIMARY KEY     NOT NULL,
   NAME           TEXT    NOT NULL
);

