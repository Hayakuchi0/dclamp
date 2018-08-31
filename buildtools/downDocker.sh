#!/bin/sh
docker kill myserver_apache2
docker rmi -f buildtools_webserver:latest
docker-compose down
docker rmi -f buildtools_dbserver:latest
docker system prune
