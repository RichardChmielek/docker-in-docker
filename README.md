# docker-in-docker

[![Build Status](https://travis-ci.org/RichardChmielek/docker-in-docker.svg?branch=master)](https://travis-ci.org/RichardChmielek/docker-in-docker)

## build

````docker
docker build --rm -f dockerfile -t docker-in-docker:latest .
````

## run

````docker
docker run --name docker_i-in-docker docker-in-docker
````

## bash into container

````docker
docker exec -it docker_in_docker bash
````

## check docker version

````docker
docker -v
````