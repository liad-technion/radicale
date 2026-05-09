#!/bin/sh
################################
# Developer: Liad Binyamin
# Purpose: Entrypoint script for Radicale Docker container
# Version: 0.0.4
# Date: 10.5.26
################################
set -eu

# Create users file from Docker secret on first run
if [ ! -f /data/users ] && [ -f /run/secrets/radicale_password ]; then
    PASSWORD=$(cat /run/secrets/radicale_password)
    echo "${RADICALE_USERNAME:-admin}:${PASSWORD}" > /data/users
fi

exec "$@"