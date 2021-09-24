#!/bin/bash

set -e

echo "Database Schema Dump Started $(date)"

DATE=$(date +%Y%m%d_%H%M%S)
FILE="/dump/$DBNAME-$DATE.sql"

echo "$HOST:$PORT:$DBNAME:$PGUSER:$PASSWORD" > ~/.pgpass
chmod 0600 ~/.pgpass
PGPASSFILE='~/.pgpass'

pg_dump --schema-only -U "$PGUSER" -h "$HOST" -p "$PORT" -d "$DBNAME" -f "$FILE"

echo "Database Schema Export Completed: $(date)"