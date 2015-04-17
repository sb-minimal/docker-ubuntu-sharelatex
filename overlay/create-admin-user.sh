#!/bin/bash

EMAIL=$1

if [ -z "$EMAIL" ]; then
	echo "Usage: create-admin-user.sh ADMIN-EMAIL-ADDRESS"
	exit
fi

cd /sharelatex/web
grunt create-admin-user --email $EMAIL


