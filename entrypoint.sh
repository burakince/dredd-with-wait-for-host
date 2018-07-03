#!/bin/sh

end=$((SECONDS+600))
: ${SLEEP_PERIOD:=2}

wait_for() {
  echo "Waiting for $1 to listen on $2...";
  while [[ ! nc -z $1 $2 ]] && [[ $SECONDS -lt $end ]];
  do
    echo "Sleeping. Waiting for $1 to listen on $2...";
    sleep $SLEEP_PERIOD;
  done
}

target_address=${2:-$1}
url=$(echo $1 | awk -F/ '{print $3}')
host=$(echo $url | awk -F: '{print $1}')
extracted_port=$(echo $url | awk -F: '{print $2}')
port=${extracted_port:-'80'}
wait_for $host $port

dredd /blueprints/*.md $target_address
