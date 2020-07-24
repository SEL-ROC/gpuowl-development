#!/usr/bin/env bash

set -o xtrace

if [[ -z "$2" -a -n "$1" ]]; then
  echo "Must specify destination directory."; exit;
elif [[ -z "$1" ]]; then
  echo "Must specify original and destination directory."; exit;
fi

# Copy files to upload location.
find $1 -name '*.proof' -exec cp -v -n '{}' $2 \;

# Not nessary anymore ## Also copy to a backup location.
# [[ ! -z "$3" ]] && find $1 -name '*.proof' -exec cp -v -n '{}' $3 \; || echo "No backup location specified, proof files still copied to upload location."
 
