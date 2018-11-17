# multi-docker-test

Containers:

* PHP 5.6 + Apache 2.4
* MySQL 5.7
* phpMyAdmin


## Usage

Clone this repository on your local computer.

## Build Webserver Docker Image

```shell
docker-compose build
```

## Start all containers

```shell
docker-compose up -d
```

## Stop all containers

```shell
docker-compose down
```

#### Apache Modules

By default following modules are enabled.

* rewrite
* headers

#### PHP Extensions

By default following extensions are installed.

* mysqli
* mbstring
* zip
* intl
* mcrypt
* curl
* json
* iconv
* xml
* xmlrpc
* gd

> If you want to enable more modules, just update `./docker/build/apache/Dockerfile`.
> You have to rebuild the docker image by running `docker-compose build` and restart the docker containers. 

#### Connect via SSH

You can connect to web server using `docker exec` command to perform various operation on it. Use below command to login to container via ssh.

```shell
docker exec -it [CONTAINER_NAME] /bin/bash
```

## phpMyAdmin

phpMyAdmin is configured to run on port 8080. Use following default credentials.

http://localhost:8080/  
username: root  
password: root


