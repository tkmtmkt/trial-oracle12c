#!/bin/bash
SCRIPT_DIR=$(cd $(dirname $0);pwd)

dbca -silent -responseFile $SCRIPT_DIR/dbca_create_TESTDB.rsp
