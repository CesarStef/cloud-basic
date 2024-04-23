docker compose --project-name cloud-basic down

docker rm -f $(docker ps -a -q)
docker volume prune -a -f
docker networks prune

./docker-set-up.sh set-up
