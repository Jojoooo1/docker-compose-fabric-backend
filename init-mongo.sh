#!/bin/bash
set -e

# Deploy custom .sh setup that will be run once on database initialisation with (Use db MONGO_INITDB_DATABASE if defined in the environment.)
# entrypoint.sh script adds environment variables if exist (ie. db.auth() not needed)

# Start and use MONGO_DB && creates MONGO_USER

mongo <<EOF
use $MONGO_DB

db.createUser({
  user:  '$MONGO_USER',
  pwd: '$MONGO_PASSWORD',
  roles: [{
    role: 'readWrite',
    db: '$MONGO_DB'
  }]
})
EOF
