#!/bin/bash
SCRIPT_DIR=$(cd $(dirname $0);pwd)

dbca -silent -deletePluggableDatabase -sourceDB testdb -pdbName pdb1
dbca -silent -deletePluggableDatabase -sourceDB testdb -pdbName pdb2
dbca -silent -deleteDatabase -responseFile $SCRIPT_DIR/dbca_testdb.rsp
