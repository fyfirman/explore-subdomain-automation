#!/bin/bash

if [ -z "$1" ]; then
  echo "ERROR: Argument is empty"
  exit 1
fi

echo "Generating $1 cert with certbot"
RESULT=$(sudo certbot certonly --nginx --domains $1)

if RESULT; then
  echo "Cert $1 is successfully generated"
else
  echo "ERROR: Failed to generate cert $1"
fi