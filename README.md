# devday-docker-swarm
Repository related to my talk during DevDay 2018, about Docker Swarm

## Docker Cheat sheet
| Command  | Second Header |
| ------------- | ------------- |
| docker build -t my-app .  | build image described by Dockerfile and tag it "my-app"  |
| docker run my-app  | run image my-app  |
| docker ps | list all running containers |
| docker stats | monitor all running containers |
| docker run -p 80:80 nginx  | run image nginx and expose its port 80 on port 80  |
| docker swarm init | enables Swarm Mode, allowing the use of services and stacks
| docker service create --name nginxservice -p 80:80 nginx | Create a service called "nginxservice" for image nginx | 
| docker service scale nginxservice=3 | Set the number of replicas to 3 for service nginxservice |
| docker stack deploy --compose-file docker-compose.yml stackname | deploy stack described by current docker-compose.yml and call it stackname
| docker swarm leave [-f] | Leave the swarm (and destroy all services and stacks if -f is specified)