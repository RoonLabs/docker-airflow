#!/bin/bash

set -e

VERSION=1.10-stable-9

docker build . -t hub.roonlabs.net/docker-airflow:$VERSION
docker push hub.roonlabs.net/docker-airflow:$VERSION
