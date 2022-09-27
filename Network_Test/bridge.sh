#!/usr/bin/env sh

docker network create --driver=bridge shushu

docker run -d --network=shushu --net-alias=hello nginx
docker run -d --network=shushu --net-alias=grafana grafana/grafana
