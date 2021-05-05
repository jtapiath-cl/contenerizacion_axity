#!/bin/sh

docker build \
    --file jupyter.Dockerfile \
    --tag javier/pyspark-notebook \
    .
