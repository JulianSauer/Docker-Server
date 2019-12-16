#!/bin/sh

if [ "$1" = "-h" ] ; then
  echo "Usage: ./set-auth.sh [username] [password]"
  exit 0
fi

docker run \
  --entrypoint htpasswd \
  registry:2 -Bbn $1 $2 > htpasswd
