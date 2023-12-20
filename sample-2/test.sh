#!/bin/bash

data=
SAVE_TMP_FILE="~/tmpdata.txt"

function save_tmp_data() {
    echo "$data" >"$SAVE_TMP_FILE"
    echo "save data to $SAVE_TMP_FILE"
}

trap "
  echo 'receive INT!'
  save_tmp_data         # 関数も実行できる
  exit 1                # exit しておかないと INT を受け取っても処理を続行してしまうので注意
" INT # INT は 2 でも可

for i in {1..100}; do
    echo "$i"
    data=$((data + i))
done

echo $data
