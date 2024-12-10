#!/bin/sh

# This defines parameters
# parameters.sql 

# This creates db and user
# create-db-user.sql

# This creates db schema (tables)
# schema.sql

# Grant priviliges to user
# grant.sql


# This does all

# Definisce il percorso assoluto di ScriptsDB
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Esegue gli script SQL usando il percorso assoluto
sudo -u postgres psql postgres \
  -f "$SCRIPT_DIR/parameters.sql" \
  -f "$SCRIPT_DIR/create-db-user.sql" \
  -f "$SCRIPT_DIR/schema.sql" \
  -f "$SCRIPT_DIR/grant.sql"
