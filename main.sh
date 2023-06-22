#!/bin/sh

ROOT=$(
  cd $(dirname $0)
  pwd
)

echo $(date)
INTERVAL=295

for i in $(seq 100); do
  osascript $ROOT/click.scpt
  MINUTES=`expr $(( $i - 1 )) \* $INTERVAL / 60`

  echo "\n${MINUTES} minutes gone"
  sleep $INTERVAL
done
