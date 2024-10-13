#!/bin/bash

for SCRIPT_NAME in pgcd.*
do
  lang="${SCRIPT_NAME#pgcd.}"
  echo "==============================="
  echo $lang
  echo "==============================="
  docker run -v $(pwd):/app -e SCRIPT_NAME=$SCRIPT_NAME run-$lang
done
