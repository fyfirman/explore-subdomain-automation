#!/bin/bash

if [ -z "$1" ]; then
  echo "ERROR: Argument is empty"
  exit 1
fi

if [ -z "$2" ]; then
  echo "ERROR: Second argument is empty"
  exit 1
fi

sh cert-generator.sh $1
sh nginx-conf-generator.sh $1 $2
sudo ln -s /etc/nginx/sites-available/$1 /etc/nginx/sites-enabled/$1
sudo nginx -t
sudo systemctl reload nginx

echo "Config is successfully generated"