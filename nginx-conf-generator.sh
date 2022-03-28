#!/bin/bash

if [ -z "$1" ]; then
  echo "ERROR: Argument is empty"
  exit 1
fi

OUTPUT_DIR=etc/nginx/sites-enabled/

generate_site_config() {
  mkdir $OUTPUT_DIR
  OUT=$OUTPUT_DIR$1
  echo generating config for $1 in $OUT
  IN=nginx-conf.template
  SITE=$1 eval "cat <<EOF
  $(cat $IN)
  EOF" > $OUT
}

generate_site_config $1