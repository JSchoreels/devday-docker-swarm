docker service create --name myapi -p 80:80 myapi:1
docker service scale myapi=4
docker service update myapi --image myapi:2
docker service scale myapi=12
docker service scale myapi=2
docker service scale myapi=4
docker service update myapi --image myapi:bug --update-failure-action rollback

