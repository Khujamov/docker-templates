STACK=nmt

prod-up-swarm:
	set -a &&. ./.env && set +a && docker stack deploy --with-registry-auth -c docker-compose.yml ${STACK}

test-up-swarm:
	set -a &&. ./.env && set +a && docker stack deploy --with-registry-auth -c docker-compose.yml -c database/docker-compose.yml ${STACK}

services:
	docker stack services ${STACK}

remove-stack:
	docker stack rm ${STACK}
	
create-env:
	cp env.example .env

