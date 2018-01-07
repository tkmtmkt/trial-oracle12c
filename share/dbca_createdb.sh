#!/bin/bash
SCRIPT_DIR=$(cd $(dirname $0);pwd)

dbca -silent -createDatabase -responseFile $SCRIPT_DIR/dbca_testdb.rsp
