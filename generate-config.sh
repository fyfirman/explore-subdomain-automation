#!/bin/bash

if [ -z "$1" ]; then
  echo "ERROR: Argument is empty"
  exit 1
fi

sh cert-generator.sh $1
sh nginx-conf-generator.sh $1
sudo ln -s /etc/nginx/sites-available/$1 /etc/nginx/sites-enabled/$1