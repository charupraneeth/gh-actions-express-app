# pull the latest bull-app images from GCR
sudo docker compose -f docker-compose.dev.yml pull		
sudo docker compose -f docker-compose.dev.yml down 
sudo docker compose -f docker-compose.dev.yml up
# Remove the older images marked an 'none'
sudo docker image rm $(sudo docker images -f 'dangling=true' -q)