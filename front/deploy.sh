#!/bin/bash
docker build -t fastapi . &&
docker run -d \
  --name fastapi \
  -p 8000:8000 \
  --net mongo-network \
  fastapi