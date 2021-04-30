#!/bin/sh
docker run \
    --rm \
    --name pg_user_db \
    --env POSTGRES_PASSWORD=mysecretpassword \
    --env POSTGRES_USER=superuser \
    --env POSTGRES_DB=superuser \
    --detach \
    postgres
