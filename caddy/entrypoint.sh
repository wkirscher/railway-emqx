#!/bin/sh

set -euo pipefail

export MQTT_SERVICE=${MQTT_SERVICE:-emqx}
export MQTT_WS_PORT=${MQTT_WS_PORT:-8083}
export MQTT_ADMIN_PORT=${MQTT_ADMIN_PORT:-18083}

echo "Running Caddy..."
echo "MQTT_SERVICE: ${MQTT_SERVICE:-emqx}"
echo "MQTT_WS_PORT: ${MQTT_WS_PORT:-8083}"
echo "MQTT_ADMIN_PORT: ${MQTT_ADMIN_PORT:-18083}"

exec caddy run --config Caddyfile --adapter caddyfile 2>&1
