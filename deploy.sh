#!/bin/bash
./stop_containers.sh
#docker network create mongo-network
cd front
./deploy.sh
cd ../back
./deploy.sh