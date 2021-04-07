#!/bin/bash
set -e

# Remove a potentially pre-existring server.pid for Rails
rm -f /desafio-dev-eficiente-1/tmp/pids/server.pid

# Then exec the container's main process (what's set as CMD in the Dockerfile)
exec "$@"
