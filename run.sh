#!/bin/bash
if [ $? -eq 0 ]
then
    docker --version | grep "Docker version"
    if [ $? -eq 0 ]
    then
        echo "docker existing"
        echo "clean up"
        docker-compose down
        docker-compose up --build
    else
        echo "install docker"
    fi
else
    echo "install docker" >&2
fi