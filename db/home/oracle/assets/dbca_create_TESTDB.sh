#!/bin/bash
SCRIPT_DIR=$(cd $(dirname $0);pwd)

DBNAME=TESTDB
DBPASS=P@ssw0rd
BASE_DIR=/opt/oracle
DATA_DIR=${BASE_DIR}/oradata
FRA_DIR=${BASE_DIR}/fast_recovery_area

dbca -silent \
  -createDatabase \
  -templateName General_Purpose.dbc \
  -gdbName ${DBNAME} \
  -sid ${DBNAME} \
  -sysPassword ${DBPASS} \
  -systemPassword ${DBPASS} \
  -emConfiguration DBEXPRESS \
  -datafileDestination ${DATA_DIR} \
  -redoLogFileSize 100 \
  -recoveryAreaDestination ${FRA_DIR} \
  -characterSet AL32UTF8 \
  -nationalCharacterSet AL16UTF16 \
  -databaseType MULTIPURPOSE \
  -totalMemory 4800 \
  -initParams db_create_file_dest="${DATA_DIR}",db_recovery_file_dest="${FRA_DIR}",db_recovery_file_dest_size=30720
