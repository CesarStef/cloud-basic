if [[ "$1" == "restart" ]]; then
    docker compose --project-name cloud-basic down
fi
docker compose --project-name cloud-basic up -d 
echo "I'm going to sleep 10s to let nextcloud container start php"
sleep 10

if [[ "$1" == "set-up" ]]; then
    NEXTCLOUD_CONTAINER_ID=$(docker ps -f "label=service-name=Nextcloud" -q -n 1) #This let this script work if we decide to scale up the service with more replicas
    PROMETHEUS_CONTAINER_ID=$(docker ps -f "label=service-name=prometheus" -q -n 1) #We should accept to have only 1 prometheus container
    NEXTCLOUD_EXPORTER_CONTAINER_ID=$(docker ps -f "label=service-name=Nextcloud" -q -n 1)
    docker cp ./nextcloud/cognito.config.php $NEXTCLOUD_CONTAINER_ID://var/www/html/config
    docker exec -i -u 33 $NEXTCLOUD_CONTAINER_ID bash < nextcloud-start-script.sh
    DOCKER_BRIDGE_NETWORK_ID=$(docker network ls --filter "name=bridge" -q)
    docker network connect $DOCKER_BRIDGE_NETWORK_ID $PROMETHEUS_CONTAINER_ID
fi
