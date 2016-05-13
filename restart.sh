#!/bin/bash


DIR=$(dirname $0) 
cd $DIR

git pull

docker-compose build
docker-compose up -d
