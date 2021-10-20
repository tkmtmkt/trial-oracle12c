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
ORACLE_BASE=/opt/oracle
DAT_DIR=${ORACLE_BASE}/oradata
FRA_DIR=${ORACLE_BASE}/fast_recovery_area

dbca -silent \
  -createDatabase \
  -templateName General_Purpose.dbc \
  -gdbName ${DB_NAME} \
  -sid ${ORACLE_SID} \
  -sysPassword ${DB_PASS} \
  -systemPassword ${DB_PASS} \
  -emConfiguration DBEXPRESS \
  -datafileDestination ${DAT_DIR} \
  -redoLogFileSize 100 \
  -recoveryAreaDestination ${FRA_DIR} \
  -characterSet AL32UTF8 \
  -nationalCharacterSet AL16UTF16 \
  -initParams db_unique_name="${DB_UNIQUE_NAME}",db_create_file_dest="${DAT_DIR}",db_recovery_file_dest="${FRA_DIR}",db_recovery_file_dest_size=30720 \
  -totalMemory 4800 \
  -databaseType MULTIPURPOSE \
  -enableArchive true
