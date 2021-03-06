#!/bin/bash

cd /mnt/hdd
mkdir -p downloads/series/
mkdir -p downloads/movies/

function log () {
  logger -t torrent-organizer "$@"
}

function move() {
  local from=${1}
  local to=${2}
  echo "Trying to move ${from} to ${to}"
  if [[ -d ${from} ]] || [[ -f ${from} ]]; then
    log "moved ${from} to ${to}"
    mv "${from}" "${to}" || log "failed to move ${from} to ${to}"
  fi
}

for i in downloads/series/*; do
  move "$i" "series/"
done

for i in downloads/movies/*; do
  move "$i" "movies/"
done
