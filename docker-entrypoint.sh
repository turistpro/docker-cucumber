#!/usr/bin/env bash

function main () {
  load-entrypoint.d
  exec "$@"
}

function load-entrypoint.d () {
  if [ -d /docker-entrypoint.d ]; then
    for f in /docker-entrypoint.d/*.sh; do
      [ -f "$f" ] && . "$f"
    done
  fi
}

main "$@"
