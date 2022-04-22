#!/bin/bash
sed -i '/^### DATA ###$/q' wofi-emoji

curl https://raw.githubusercontent.com/muan/unicode-emoji-json/v0.3.1/data-by-emoji.json \
  | jq --raw-output '. | to_entries | .[] | (.key  + " " + .value.name)' \
  >> wofi-emoji
