#!/bin/sh

if [ "$1" = "detach" ]
then
    docker run \
        --rm \
        --name pg_example \
        --env POSTGRES_PASSWORD=mysecretpassword \
        --detach \
        postgres
else
    docker run \
        --rm \
        --name pg_example \
        --env POSTGRES_PASSWORD=mysecretpassword \
        postgres
fi
