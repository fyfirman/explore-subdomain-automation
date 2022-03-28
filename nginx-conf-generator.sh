#!/bin/bash

OUTPUT_DIR=/etc/nginx/sites-available/

generate_site_config() {
  mkdir $OUTPUT_DIR
  OUT=$OUTPUT_DIR$1
  echo "Generating config for $1 (Port: $2) in $OUT..."
  IN=nginx-proxy-pass.template
  SITE=$1 PORT=$2 eval "cat <<EOF
  $(cat $IN)
EOF" > $OUT
}

generate_site_config $1 $2