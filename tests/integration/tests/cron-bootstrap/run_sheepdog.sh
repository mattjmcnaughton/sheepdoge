#!/bin/bash
#
# Provision the docker container with sheepdog.

DIR=/test/kennels/kennel-cron-bootstrap-sample

cd $DIR;\
sheepdog install &&\
sheepdog run --run-mode bootstrap &&\
sheepdog run &&\
echo 'Waiting 120 seconds for cron job to execute' &&\
sleep 120