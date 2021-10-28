#!/bin/bash

if [ $# -ne 1 ]; then
    echo "[ERROR] No migration name specified."
    echo "ex) sh createMigration.sh add_foo_table"
    exit 1
fi

cd hasura || exit

hasura migrate create "$1" --from-server --database-name default
hasura metadata export
