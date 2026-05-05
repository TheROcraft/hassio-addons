export CAIRN_ENCRYPTION_KEY=$(jq --raw-output '.CAIRN_ENCRYPTION_KEY' /data/options.json)

echo "--- Cairn Add-on wird gestartet ---"

exec /usr/local/bin/cairn