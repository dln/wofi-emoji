#!/bin/sh
alias exists='command -v >/dev/null 2>/dev/null'
for exe in printf ed curl jq; do
  if ! exists $exe; then
    echo >&2 $exe not found
    echo >&2 Please install $exe and try again
    exit 127
  fi
done

set -e
TAG="$(curl https://api.github.com/repos/muan/emojilib/releases/latest | jq -r .tag_name)"
URL="https://raw.githubusercontent.com/muan/emojilib/$TAG/dist/emoji-en-US.json"
printf '%s\n%s\n%s\n' '/^### DATA ###$/+1,$d' w q | ed -s wofi-emoji

curl "$URL" | jq -r '. | to_entries | .[] | .key + " " + (.value | join(" ") | sub("_"; " "; "g"))' >> wofi-emoji
