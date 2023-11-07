#!/bin/bash

if [ $# -lt 2 ]; then
  echo "Missing arguments. Usage: group file1 file2... dirname"
  exit 1
fi

dir="${!#}"
files="${@:1:$#-1}"

mkdir -p  $dir;
mv $files $dir;
