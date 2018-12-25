#!/bin/bash
SCRIPT_DIR=$(cd $(dirname $0);pwd)

DATA_DIR=/data/oracle/oradata
FRA_DIR=/data/oracle/fast_recovery_area

dbca -silent \
  -createDatabase \
  -templateName General_Purpose.dbc \
  -gdbName TESTDB \
  -sid TESTDB \
  -createAsContainerDatabase true \
  -numberOfPDBs 2 \
  -pdbName hoge \
  -sysPassword oracle \
  -systemPassword oracle \
  -datafileDestiantion $DATA_DIR \
  -redoLogFileSize 10 \
  -recoveryAreaDestination $FRA_DIR \
  -characterSet AL32UTF8 \
  -nationalCharacterSet AL32UTF8 \
  -totalMemory 1024 \
  -databaseType MULTIPURPOSE
