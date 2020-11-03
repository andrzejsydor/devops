# Apache Airflow

https://airflow.apache.org/ 

https://hub.docker.com/r/apache/airflow 

https://airflow.apache.org/docs/stable/installation.html 

https://airflow.apache.org/docs/stable/start.html 

https://airflow.apache.org/docs/stable/tutorial.html 

# Airflow Docker

[https://github.com/puckel/docker-airflow](https://github.com/puckel/docker-airflow)

## Run

```
docker-compose -f docker-compose-LocalExecutor.yml up -d
```

### Open [localhost:8080](localhost:8080)

## Stop & remove

```
docker-compose -f docker-compose-LocalExecutor.yml rm -sf
```

# Create dag

```
docker cp dags/my_dag.py <Container_ID>:/usr/local/airflow/dags
docker cp my_dag.py b02507b9cbf5:/usr/local/airflow/dags
```

## Run by GUI

## Run by CLI
```
airflow backfill -s <<start_date>> <<dag>> 
#optionally provide -1 as start_date to run it immediately
```
