# Demo

## Setup
create the overlay network "net". See "setup.sh".

## Run the demo !
* Deploy stacks
	docker stack deploy -c nginx.yml nginx1
	docker stack deploy -c nginx.yml nginx2
	docker stack deploy -c curl.yml curl

* See how nginx1_nginx and nginx2_nginx receive both requests from curl !
	docker service logs -f nginx1_nginx 
	docker service logs -f nginx2_nginx 


