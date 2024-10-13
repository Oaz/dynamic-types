#!/bin/bash

set -x
SCRIPT_FOLDER=$(dirname $0)
cd $SCRIPT_FOLDER
for dockerfile in Dockerfile-*
do
  lang="${dockerfile#Dockerfile-}"
  docker build -f "$dockerfile" -t "run-$lang" .
done
