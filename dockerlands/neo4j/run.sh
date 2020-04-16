#!/bin/bash

docker run --publish=7474:7474 --publish=7687:7687 --name my-neo4j -d neo4j

