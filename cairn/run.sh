#!/bin/sh

export CAIRN_ENCRYPTION_KEY=$(jq --raw-output '.CAIRN_ENCRYPTION_KEY' /data/options.json)

echo "Starting Cairn Backend..."
exec /usr/local/bin/cairn
