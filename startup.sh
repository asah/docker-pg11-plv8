#!/bin/bash

if [ "x$USER" != "xpostgres" ]; then
  echo "$0: must run as postgres"
fi

psql -c "create extension plv8"
bin/install_modules -d postgres
