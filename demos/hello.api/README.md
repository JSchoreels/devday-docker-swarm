docker service create --name myapi -p 80:80 jschoreels/myapi:1
docker service scale myapi=4
docker service update myapi --image jschoreels/myapi:2
docker service scale myapi=12
docker service scale myapi=2
docker service scale myapi=4
docker service update myapi --image jschoreels/myapi:bug --update-failure-action rollback

