#!/bin/bash

docker-compose up -d

cd hasura || exit

hasura metadata apply
hasura migrate apply --database-name default
hasura metadata reload
