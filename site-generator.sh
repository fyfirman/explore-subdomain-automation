#!/bin/bash

OUTPUT_DIR=output/

generate_site_config() {
  mkdir $OUTPUT_DIR
  OUT=$OUTPUT_DIR$1.conf
  echo generating config for $1 in $OUT
  IN=site.template
  SITE=$1 eval "cat <<EOF
  $(cat $IN)
  EOF" > $OUT
}

generate_site_config $1