#!/bin/bash

cd /mnt/hdd
mkdir -p downloads/series/
mkdir -p downloads/movies/

function log () {
  logger -t torrent-organizer "$@"
}

for i in downloads/series/*; do
  log "moved $i to series"
  mv "$i" series/
done

for i in downloads/movies/*; do
  log "moved $i to movies"
  mv "$i" movies/
done
