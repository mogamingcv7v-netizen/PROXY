#!/bin/bash
set -e

PORT="${PORT:-8080}"

pproxy -l http://0.0.0.0:$PORT \
       -l socks5://0.0.0.0:$PORT \
       -c ${PROXY_USER}:${PROXY_PASS} \
       --get /health
