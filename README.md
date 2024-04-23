# Exercise  for the course Cloud Computing Basic of Università degli Studi di Trieste AA 23/24.

This is a proof of concept for a Cloud-Based File Storage System based on NextCloud

# Installation

1. Host or register your application on a OAuth 2 + OpenId Connect complaint Identity Provider and save your clientId, client secret and discovery url
2. Install docker
3. Enter in the ```exercise``` folder
4. Insert inside ```nextcloud-start-script.sh``` the valued saved from point 1
5. Execute the script ```docker-set-up.sh``` with "set-up" parameter. This script will deploy all the services and set up your Nextcloud for it's first execution. If you want, you can just pass "restart" to ```docker-set-up.sh``` to just restart all containers

As alternative, you can use ```docker-prune-all.sh``` with ```prune-all``` parameter to prune all your containers, volumes and networks and automatically re-launch the docker compose. This is meant for testing purpoes only