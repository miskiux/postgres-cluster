#!/bin/bash

docker build -f dockerfiles/Dockerfile.base -t miskiux/base-ha-psql .
docker compose -f etcd/docker-compose.yaml up -d 
