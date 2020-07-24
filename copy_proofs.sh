#!/usr/bin/env bash

set -o xtrace


 [[ -z "$2" ]] && echo "Must specify destination directory." || [[ -z "$1" ]] && echo "Must specify original directory."; exit;

# Copy files to upload location.
find $1 -name '*.proof' -exec cp -v -n '{}' $2 \;

# Not nessary anymore ## Also copy to a backup location.
# [[ ! -z "$3" ]] && find $1 -name '*.proof' -exec cp -v -n '{}' $3 \; || echo "No backup location specified, proof files still copied to upload location."
 
