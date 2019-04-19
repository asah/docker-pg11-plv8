#!/bin/bash

if [ "x$USER" != "xroot" ]; then
  echo "$0: must run as root"
fi

psql -c "create extension plv8"
bin/install_modules -d postgres
