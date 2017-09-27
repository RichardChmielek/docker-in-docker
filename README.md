# docker-in-docker

[![Build Status](https://travis-ci.org/RichardChmielek/docker-in-docker.svg?branch=master)](https://travis-ci.org/RichardChmielek/docker-in-docker)

## build

````docker
docker build --rm -f dockerfile -t docker-in-docker:latest .
````

## run

````docker
docker run --name docker-in-docker docker-in-docker
````

## bash into container

````docker
docker exec -it docker-in-docker bash
````

## check docker version

````docker
docker -v
````