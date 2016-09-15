#! /bin/bash

set -e

album="$(basename "$(pwd)")"
artist="$(basename "$(dirname "$(pwd)")")"

metaflac --remove-all-tags *.flac
metaflac --set-tag="ARTIST=$artist" --set-tag="ALBUM=$album" *.flac
for file in *.flac; do
    unnamed_pattern='^(Chapter|Episode) ([0-9]+).flac$'
    named_pattern='^([0-9]+) (.*).flac$'
    if [[ "$file" =~ $unnamed_pattern ]]; then
        track="$(echo -n "$file" | sed -rn "s/${unnamed_pattern}/\2/p")"
        title="$(echo -n "$file" | sed -rn "s/${unnamed_pattern}/\1 \2/p")"
    elif [[ "$file" =~ $named_pattern ]]; then
        track="$(echo -n "$file" | sed -rn "s/${named_pattern}/\1/p")"
        title="$(echo -n "$file" | sed -rn "s/${named_pattern}/\2/p")"
    else
        echo "Error: '$file' does not match an expected pattern. Skipping..." 1>&2
        continue
    fi
    metaflac --set-tag="TRACK=$track" --set-tag="TITLE=$title" "$file"
done
