#!/bin/bash
SCRIPT_DIR=$(cd $(dirname $0);pwd)
case "$1" in
  primary)
    ROLE=P
    ;;
  standby)
    ROLE=S
    ;;
  *)
    echo "Usage: $0 {primary|standby}"
    exit 1
    ;;
esac

DB_PASS=P%ssw0rd
DB_NAME=TESTDB
DB_UNIQUE_NAME=${DB_NAME}${ROLE}
ORACLE_SID=${DB_UNIQUE_NAME}

dbca -silent \
  -deleteDatabase \
  -sourceDB ${DB_UNIQUE_NAME} \
  -sysDBAUserName SYS \
  -sysDBAPassword ${ORACLE_SID}
