#!/bin/bash

# Maximum wait time (60 seconds)
TIMEOUT=60
INTERVAL=5
ELAPSED=0

while ! systemctl is-active --quiet demo-http; do
    echo "Waiting for Podman service to be active..."
    sleep $INTERVAL
    ELAPSED=$((ELAPSED + INTERVAL))
    if [ $ELAPSED -ge $TIMEOUT ]; then
        echo "Podman service did not start after $TIMEOUT seconds. Failing."
        exit 1
    fi
done

echo "Podman service is running!"

/bin/sh -c \
  '
  [ "$(curl -s -o /dev/null -w "%{http_code}" http://localhost:8080)" = "200" ] && \
  echo "Returned 200 OK" || \
  (echo "Did not return 200 OK" && exit 1)
  '
