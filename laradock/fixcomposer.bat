docker exec -it --user root laradock_workspace_1 /bin/bash -c "cd /var/www/laradock && ./fixcomposer.sh"
docker exec -it --user laradock laradock_workspace_1 /bin/bash -c "cd /var/www/laradock && ./fixcomposer.sh"

PAUSE