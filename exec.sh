#!/bin/bash
case "$1" in
  db[12])
    docker-compose exec $1 /bin/bash
    ;;
  *)
    echo "Usage: $0 db[12]"
    ;;
esac
