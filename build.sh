#!/bin/sh

npm run build
docker build -t ghcr.io/lbnl-science-it/cborg-web:latest --build-arg CLOUDFLARE_TOKEN=$(pass cborg/www_tunnel) . && docker push ghcr.io/lbnl-science-it/cborg-web:latest

