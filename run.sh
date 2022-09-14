#!/bin/bash

pushd ./studious-giggle
./mvnw clean package -DskipTests
popd

docker stop $(docker ps -aq) 2> /dev/null
docker rm $(docker ps -aq) 2> /dev/null
docker compose down && docker compose up

