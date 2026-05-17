#!/bin/bash

set -u
set -m

cleanup() {
    if [[ -n "${SERVER_PID:-}" ]]; then
        echo "Stopping dev server process group (PGID: $SERVER_PID)"

        kill -TERM "-$SERVER_PID" 2>/dev/null || true

        sleep 1

        kill -KILL "-$SERVER_PID" 2>/dev/null || true
        wait "$SERVER_PID" 2>/dev/null || true

        echo "Dev server stopped"
    fi
}

# Run cleanup on any kind of exit
trap cleanup EXIT SIGINT SIGTERM

if lsof -i :3000 -sTCP:LISTEN >/dev/null 2>&1; then
    echo "Port 3000 is already in use"
    lsof -i :3000 -sTCP:LISTEN
    exit 1
fi

echo "Starting dev server"
gleam run -m dev &
SERVER_PID=$!

echo "Waiting for the dev server to start"

until curl -fsS http://localhost:3000 >/dev/null; do
    if ! kill -0 "$SERVER_PID" 2>/dev/null; then
        echo "Dev server exited before becoming ready"

        wait "$SERVER_PID"

        exit 1
    fi

    sleep 1
done

echo "Dev server is ready (PID: $SERVER_PID)"


pa11y-ci \
  --sitemap http://localhost:3000/sitemap.xml \
  --sitemap-find https://dvoracek.dev \
  --sitemap-replace http://localhost:3000 \
  --config .pa11yci
