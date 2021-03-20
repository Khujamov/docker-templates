SERVICE=$1
docker service logs nmt_$SERVICE -f --tail 100