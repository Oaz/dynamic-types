#!/bin/bash

for dockerfile in Dockerfile-*
do
  lang="${dockerfile#Dockerfile-}"
  docker build -f "$dockerfile" -t "run-$lang" .
done
