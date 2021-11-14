#!/bin/bash

git clone https://github.com/bernardlau171/docker-lamp
cd docker-lamp
docker-compose up -d
docker exec -it mysqldb bash

echo "setup is complete"
