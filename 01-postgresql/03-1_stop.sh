#!/bin/sh

docker stop pgadmin4
docker stop postgres
docker network remove pgnetwork

rm pg-env.list
rm pgadmin-env.list
