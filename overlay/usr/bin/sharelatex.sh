#!/bin/bash
export PATH=$PATH:/usr/local/texlive/2014/bin/x86_64-linux

#does not seem to run as user - assume it is already started?
#mongod &

pushd /data/redis
redis-server &
popd

# Waiting for mongodb to startup
until nc -z localhost 27017
do
    sleep 1
done

cd /sharelatex
grunt run

