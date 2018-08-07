#!/bin/sh
docker kill myserver_apache2
docker system prune 
docker run -i -d --name myserver_apache2 -p 8001:80 --net buildtools_my_network --privileged -t buildtools_webserver:latest /sbin/init
xdotool type "sudo docker exec -it myserver_apache2 /bin/bash"
xdotool key KP_Enter
sleep 1
xdotool type "systemctl start httpd"
xdotool key KP_Enter
