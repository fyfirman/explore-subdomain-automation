#!/bin/bash

echo "Generating $1 cert with certbot"
RESULT=$(sudo certbot certonly --nginx --domains $1)

if RESULT; then
  echo "Cert $1 is successfully generated"
else
  echo "ERROR: Failed to generate cert $1"
fi