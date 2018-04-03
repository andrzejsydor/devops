#!/bin/bash

if [ -n 1 ]; then
  docker build -t nginx-curl .
else
  docker build -t $1 .
fi

