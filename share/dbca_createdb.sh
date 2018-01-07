#!/bin/bash
SCRIPT_DIR=$(cd $(dirname $0);pwd)

dbca -silent -createDatabase -responseFile $SCRIPT_DIR/dbca_testdb.rsp
dbca -silent -createPluggableDatabase -sourceDB testdb -pdbName pdb1 -pdbAdminPassword oracle
dbca -silent -createPluggableDatabase -sourceDB testdb -pdbName pdb2 -pdbAdminPassword oracle
