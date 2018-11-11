FROM centos
ADD ./init.sh /tmp/init.sh
ADD ./init.sql /tmp/init.sql
ADD ./sqlinit.sh /tmp/sqlinit.sh
RUN /tmp/init.sh
EXPOSE 8001
