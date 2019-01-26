#! /bin/sh
set -e
set -x # TODO remove

if [ -z "$1" ]; then
  exec /usr/sbin/chronyd -d -F 1 -r -R -s -m
  #-m will fail, use --memmory & --memory-swap from docker instead to not be paged out
fi

exec "$@"
