#!/bin/bash

# Remove the older images marked an 'none'
sudo docker image rm $(sudo docker images -f 'dangling=true' -q)
# pull the latest bull-app images from GCR
sudo docker compose -f docker-compose.yml pull		
sudo docker compose -f docker-compose.yml down 
sudo docker compose -f docker-compose.yml up