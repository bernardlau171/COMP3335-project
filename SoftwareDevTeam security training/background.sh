#!/bin/bash

git clone https://github.com/bernardlau171/docker-lamp
cd docker-lamp
docker-compose up -d
echo "Setup is complete"
docker exec -it mysqldb bash
