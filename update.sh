#!/bin/bash

docker-compose up -d

cd hasura || exit

hasura metadata apply
hasura migrate apply --database-name default --skip-execution
hasura metadata reload
