#!/bin/sh

: ${SLEEP_PERIOD:=2}

wait_for() {
  echo Waiting for $1 to listen on $2...
  while ! nc -z $1 $2; do echo sleeping; sleep $SLEEP_PERIOD; done
}

url=$(echo $1 | awk -F/ '{print $3}')
host=$(echo $url | awk -F: '{print $1}')
extracted_port=$(echo $url | awk -F: '{print $2}')
port=${extracted_port:-'80'}
wait_for $host $port

dredd /blueprints/*.md $1
