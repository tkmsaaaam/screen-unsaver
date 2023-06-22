#!/bin/sh

ROOT=$(
  cd $(dirname $0)
  pwd
)

echo $(date)

for i in $(seq 100); do
  osascript $ROOT/click.scpt
  echo $i
  sleep 295
done
