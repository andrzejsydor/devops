# PostgreSQL

```
https://hub.docker.com/_/postgres
```

## Build container

```
docker build -t airflow-postgres .
```

## Run PostgreSQL container

```
docker run --name airflow-postgres -p 5432:5432 -e POSTGRES_PASSWORD=password -d airflow-postgres
```

## Shell Access
```
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

```
