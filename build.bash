#!/bin/bash

set -e

AIRFLOW_VERSION=1.9.0
DOCKER_VERSION=${AIRFLOW_VERSION}-1

docker build . -t hub.roonlabs.net/docker-airflow:$DOCKER_VERSION --build-arg AIRFLOW_VERSION=${AIRFLOW_VERSION}
docker push hub.roonlabs.net/docker-airflow:$DOCKER_VERSION
