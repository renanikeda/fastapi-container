#!/bin/bash

docker run -d \
  --name mongodb \
  -p 27017:27017 \
  -e MONGO_INITDB_ROOT_USERNAME=admin \
  -e MONGO_INITDB_ROOT_PASSWORD=admin \
  -e MONGO_INITDB_DATABASE=project \
  --net mongo-network \
  mongo:latest
