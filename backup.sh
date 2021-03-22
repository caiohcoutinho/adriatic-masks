#!/bin/bash

export TIMESTAMP=$(date +"%Y%m%d");

TIMESTAMP=$(date +"%Y%m%d") docker exec -ti postgres pg_dump --file "/backup$TIMESTAMP.txt" --no-password --host "rajje.db.elephantsql.com" --port "5432" --username "wltzyxhf" --verbose --format=p "wltzyxhf" && mkdir -p backup/$TIMESTAMP && docker cp postgres:backup$TIMESTAMP.txt backup/$TIMESTAMP/.