#!/bin/bash

#if [ -z "$SHARELATEX_UID" ]; then
#        SHARELATEX_UID=1000
#fi
#if [ -z "$SHARELATEX_GID" ]; then
#        SHARELATEX_GID=1000
#fi

#addgroup --gid $SHARELATEX_GID sharelatex
#adduser --system --home /data --no-create-home --uid $SHARELATEX_GID --group sharelatex

mkdir -p /data/db
mkdir -p /data/user_files
mkdir -p /data/tmp/uploads
mkdir -p /data/tmp/dumpFolder
rm -r /sharelatex/data
rm -r /sharelatex/tmp
ln -s /data/tmp /sharelatex/tmp
ln -s /data /sharelatex/data
mkdir -p /data/compiles
mkdir -p /data/cache
mkdir -p /data/redis
rm -r /var/lib/redis
ln -s /data/redis /var/lib/redis
chown sharelatex:sharelatex -R /data
#chown sharelatex:sharelatex -R /sharelatex

# HACK: 
# start mongod as root, as it wont run fine as user?
cd /data
mongod & 

exec sudo -H -u sharelatex -g sharelatex /usr/bin/sharelatex.sh

