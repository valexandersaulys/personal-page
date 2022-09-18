#!/bin/bash

docker build . -t personal-page-quark

echo "### starting quark"
docker run -d \
       --net my-nginx-proxy-network \
       --expose 8081 \
       -e PORT=8081 \
       -e VIRTUAL_HOST=vincentsaulys.com \
       -e LETSENCRYPT_HOST=vincentsaulys.com \
       -e VIRTUAL_PORT=8081 \
       -e LETSENCRYPT_EMAIL=vincent@saulys.me \
       --name personal-page-quark \
       personal-page-quark
