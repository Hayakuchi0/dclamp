#!/bin/sh
docker kill myserver_apache2
docker system prune 
docker run -i -d --name myserver_apache2 -p 8001:80 --net buildtools_my_network --privileged -t buildtools_webserver:latest /sbin/init
