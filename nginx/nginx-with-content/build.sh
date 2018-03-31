#!/bin/bash

if [ $# -ne 2 ]; then
    echo $0: usage: ./build.sh name content
    exit 1
fi

echo $2 > static-html-directory/index.html 

docker build -t $1 .

