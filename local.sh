#!/bin/bash

MACHINE_NAME=takasing
if [ `docker-machine ls | grep $MACHINE_NAME | wc -l` -eq 0 ]; then
  echo staring docker-machine
  docker-machine create --driver virtualbox $MACHINE_NAME
fi
docker-machine active $MACHINE_NAME
MACHINE_STATUS=`docker-machine ls | grep takasing | awk '{print $4}'`
if [ $MACHINE_STATUS = "Stopped" ]; then
  docker-machine start
fi
eval $(docker-machine env $MACHINE_NAME)
docker-compose build
docker-compose up -d
