#!/usr/bin/env bash
docker stop geo-postgis || true
docker rm -f geo-postgis || true
docker build -t geo-postgis .
docker run --name geo-postgis -i -t -d -p 5432:5432 geo-postgis