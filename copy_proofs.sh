#!/usr/bin/env bash

if [[ $# -eq 2 ]]; then
  # Copy files to upload location.
find $1 -name '*.proof' -exec cp -v -n '{}' $2 \;
elif [[ $# -lt 2 ]]; then
  echo "Must specify original and destination directories."; exit;
elif [[ $# -gt 2 ]]; then
  echo "Too much parameters. Must specify original and destination directories only."; exit;
fi
