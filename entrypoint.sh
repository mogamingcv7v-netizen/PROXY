#!/bin/bash
set -e

PORT="${PORT:-8080}"

pproxy -l "http://${PROXY_USER}:${PROXY_PASS}@0.0.0.0:$PORT" \
       -l "socks5://${PROXY_USER}:${PROXY_PASS}@0.0.0.0:$PORT" \
       --get /health
