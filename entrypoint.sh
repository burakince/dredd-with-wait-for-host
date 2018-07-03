#!/bin/sh

TOTAL_TIME=600

wait_for() {
  echo "Waiting for $1 to listen on $2...";
  local SECONDS=0
  while ! nc -z $1 $2 && [[ $SECONDS -lt $TOTAL_TIME ]];
  do
    echo "Sleeping. Waiting for $1 to listen on $2...";
    sleep 2;
    SECONDS=$((SECONDS+2));
  done
}

TARGET_ADDRESS=""
for var in $@
do
  echo "$var";
  TARGET_ADDRESS=$var;
  url=$(echo "$var" | awk -F/ '{print $3}');
  host=$(echo "$url" | awk -F: '{print $1}');
  extracted_port=$(echo "$url" | awk -F: '{print $2}');
  port=${extracted_port:-'80'};
  wait_for $host $port
done

echo "Tests running to $TARGET_ADDRESS..."
dredd /blueprints/*.md $TARGET_ADDRESS
