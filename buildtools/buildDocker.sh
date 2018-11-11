#!/bin/sh
./downDocker.sh
docker-compose up -d --build
./myweb/debugDocker.sh
docker exec -it myserver_apache2 /bin/bash /tmp/sqlinit.sh
