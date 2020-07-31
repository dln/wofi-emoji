#!/bin/bash
sed -i '/### DATA ###/q' wofi-emoji

curl https://raw.githubusercontent.com/github/gemoji/master/db/emoji.json \
  | jq  --raw-output '.[] | (.emoji + " " + .description)' \
  >> wofi-emoji
