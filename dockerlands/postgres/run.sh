#!/bin/bash

# docker run --name some-postgres -e POSTGRES_PASSWORD=mysecretpassword -d postgres

docker run -p 5432:5432 --name mypostgres -e POSTGRES_DB=mydb -e POSTGRES_PASSWORD=mysecretpassword -d postgres

# docker run --name some-app --link some-postgres:postgres -d application-that-uses-postgres

# docker run -it --rm --link some-postgres:postgres postgres psql -h postgres -U postgres
