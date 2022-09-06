#!/bin/bash
echo "Terminando containers"
docker stop fastapi && docker rm fastapi
docker stop mongodb && docker rm mongodb
