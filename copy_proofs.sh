#!/usr/bin/env bash

set -o xtrace

if [[ $# -eq 2 ]]; then
  # Copy files to upload location.
find $1 -name '*.proof' -exec cp -v -n '{}' $2 \;
elif [[ $# -lt 2 ]]; then
  echo "Must specify original and destination directory."; exit;
fi
