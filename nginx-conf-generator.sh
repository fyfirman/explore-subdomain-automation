#!/bin/bash

OUTPUT_DIR=/etc/nginx/sites-available/

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