!/bin/bash

docker run -p 5432:5432 --name mypostgres -e POSTGRES_DB=mydb -e POSTGRES_PASSWORD=mysecretpassword -d postgres
