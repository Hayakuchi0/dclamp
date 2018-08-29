#!/bin/sh
docker kill myserver_apache2
docker rmi -f buildtools_webserver:latest
docker-compose down
docker system prune
docker-compose up -d --build
./myweb/debugDocker.sh
