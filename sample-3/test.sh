#!/bin/bash

temp_file="$(mktemp)"
temp_dir="$(mktemp -d)"

trap "
  echo delete $temp_file
  rm -f $temp_file

  echo delete $temp_dir
  rm -rf $temp_dir
" 0 # 実行終了時に必ず実行される(INTを受け取った場合でも)

echo "aaaa" >"$temp_file"

data="$(cat "$temp_file")"
echo "$data"
