dclamp
====

## Overview

Docker script of use CentOS for LAMP environment.
On the premise of developing environment


## Description

This script is build tool for structure LAMP developing environment easily,and rewrite conforming with your project.
Based by CentOS.
Structured shell script and Dockerfile and Docker-compose yml.
Docker-compose yml called in shell script "buildDocker.sh", then structure docker image by each Dockerfile.
When Structure docker image, called startup script "init.sh". That is shell script for example yum call to intall apache, php, etc, and startup config. And WebServer booted by "debugDocker.sh" in last.

File tree is as follows:

```
buildtools
├── buildDocker.sh
├── downDocker.sh
├── docker-compose.yml
├── mysql
│   └── Dockerfile
└── myweb
    ├── debugDocker.sh
    ├── Dockerfile
    └── init.sh
```


## Requirement

* docker
* docker-compose
* git

for example install ubuntu.

```
# apt install docker docker-compose git
```


## How to Use

### Startup Server

```
$ git clone https://github.com/Hayakuchi0/dclamp.git
$ cd dclamp/buildtools
# ./buildDocker.sh
```

### Down Server

```
# ./downDocker.sh
```

### Access Example

#### Access Server example  (Web)

```
$ curl localhost:8001
```

#### Access Server example (SQL in Web Server Console)

```
$ mysql -u root -h dbserver -pexample
```


## Licence

This script licenced by MIT licence.

## Author

Hayakuchi0
